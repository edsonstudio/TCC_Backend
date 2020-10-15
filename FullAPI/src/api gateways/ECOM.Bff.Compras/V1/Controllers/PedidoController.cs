using ECOM.Bff.Compras.Models;
using ECOM.Bff.Compras.Services;
using ECOM.WebAPI.Core.Controllers;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.Bff.Compras.V1.Controllers
{
    [Authorize]
    [ApiVersion("1.0")]
    [Route("api/v{version:apiVersion}/")]
    public class PedidoController : MainController
    {
        private readonly ICatalogoService _catalogoService;
        private readonly ICarrinhoService _carrinhoService;
        private readonly IPedidoService _pedidoService;
        private readonly IClienteService _clienteService;

        public PedidoController(
            ICatalogoService catalogoService,
            ICarrinhoService carrinhoService,
            IPedidoService pedidoService,
            IClienteService clienteService)
        {
            _catalogoService = catalogoService;
            _carrinhoService = carrinhoService;
            _pedidoService = pedidoService;
            _clienteService = clienteService;
        }

        [HttpPost]
        [Route("compras/pedido")]
        public async Task<IActionResult> AdicionarPedido(PedidoDTO pedido)
        {
            var carrinho = await _carrinhoService.ObterCarrinho();
            var produtos = await _catalogoService.ObterItens(carrinho.Items.Select(p => p.ProductId));
            var endereco = await _clienteService.ObterEndereco();

            if (!await ValidarCarrinhoProdutos(carrinho, produtos)) return CustomResponse();

            PopularDadosPedido(carrinho, endereco, pedido);

            return CustomResponse(await _pedidoService.FinalizarPedido(pedido));
        }

        [HttpGet("compras/pedido/ultimo")]
        public async Task<IActionResult> UltimoPedido()
        {
            var pedido = await _pedidoService.ObterUltimoPedido();
            if (pedido is null)
            {
                AdicionarErroProcessamento("Pedido não encontrado!");
                return CustomResponse();
            }

            return CustomResponse(pedido);
        }

        [HttpGet("compras/pedido/lista-cliente")]
        public async Task<IActionResult> ListaPorCliente()
        {
            var pedidos = await _pedidoService.ObterListaPorClienteId();

            return pedidos == null ? NotFound() : CustomResponse(pedidos);
        }

        private async Task<bool> ValidarCarrinhoProdutos(CarrinhoDTO carrinho, IEnumerable<ItemProdutoDTO> produtos)
        {
            if (carrinho.Items.Count != produtos.Count())
            {
                var itensIndisponiveis = carrinho.Items.Select(c => c.ProductId).Except(produtos.Select(p => p.Id)).ToList();

                foreach (var itemId in itensIndisponiveis)
                {
                    var itemCarrinho = carrinho.Items.FirstOrDefault(c => c.ProductId == itemId);
                    AdicionarErroProcessamento($"O item {itemCarrinho.Name} não está mais disponível no catálogo, o remova do carrinho para prosseguir com a compra");
                }

                return false;
            }

            foreach (var itemCarrinho in carrinho.Items)
            {
                var produtoCatalogo = produtos.FirstOrDefault(p => p.Id == itemCarrinho.ProductId);

                if (produtoCatalogo.Price != itemCarrinho.Price)
                {
                    var msgErro = $"O produto {itemCarrinho.Name} mudou de valor (de: " +
                                  $"{string.Format(CultureInfo.GetCultureInfo("pt-BR"), "{0:C}", itemCarrinho.Price)} para: " +
                                  $"{string.Format(CultureInfo.GetCultureInfo("pt-BR"), "{0:C}", produtoCatalogo.Price)}) desde que foi adicionado ao carrinho.";

                    AdicionarErroProcessamento(msgErro);

                    var responseRemover = await _carrinhoService.RemoverItemCarrinho(itemCarrinho.ProductId);
                    if (ResponsePossuiErros(responseRemover))
                    {
                        AdicionarErroProcessamento($"Não foi possível remover automaticamente o produto {itemCarrinho.Name} do seu carrinho, _" +
                                                   "remova e adicione novamente caso ainda deseje comprar este item");
                        return false;
                    }

                    itemCarrinho.Price = produtoCatalogo.Price;
                    var responseAdicionar = await _carrinhoService.AdicionarItemCarrinho(itemCarrinho);

                    if (ResponsePossuiErros(responseAdicionar))
                    {
                        AdicionarErroProcessamento($"Não foi possível atualizar automaticamente o produto {itemCarrinho.Name} do seu carrinho, _" +
                                                   "adicione novamente caso ainda deseje comprar este item");
                        return false;
                    }

                    LimparErrosProcessamento();
                    AdicionarErroProcessamento(msgErro + " Atualizamos o valor em seu carrinho, realize a conferência do pedido e se preferir remova o produto");

                    return false;
                }
            }

            return true;
        }

        private void PopularDadosPedido(CarrinhoDTO carrinho, EnderecoDTO endereco, PedidoDTO pedido)
        {
            pedido.VoucherCodigo = carrinho.Voucher?.Codigo;
            pedido.VoucherUtilizado = carrinho.VoucherUtilizado;
            pedido.ValorTotal = carrinho.TotalPrice;
            pedido.Desconto = carrinho.Desconto;
            pedido.PedidoItems = carrinho.Items;

            pedido.Endereco = endereco;
        }
    }
}

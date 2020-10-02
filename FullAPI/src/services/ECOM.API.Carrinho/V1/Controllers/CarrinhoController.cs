using ECOM.API.Carrinho.Data;
using ECOM.API.Carrinho.Model;
using ECOM.WebAPI.Core.Controllers;
using ECOM.WebAPI.Core.Usuario;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.API.Carrinho.V1.Controllers
{
    [Authorize]
    [ApiVersion("1.0")]
    [Route("api/v{version:apiVersion}/[controller]")]
    public class CarrinhoController : MainController
    {
        private readonly IAspNetUser _user;
        private readonly CarrinhoContext _context;

        public CarrinhoController(IAspNetUser user, CarrinhoContext context)
        {
            _user = user;
            _context = context;
        }

        [HttpGet("carrinho")]
        public async Task<CarrinhoCliente> GetCarrinho()
        {
            return await ObterCarrinhoCliente() ?? new CarrinhoCliente();
        }

        [HttpPost("carrinho")]
        public async Task<IActionResult> PostItemCarrinho(CarrinhoItem item)
        {
            var carrinho = await ObterCarrinhoCliente();

            if (carrinho == null)
                ManipularNovoCarrinho(item);
            else
                ManipularCarrinhoExistente(carrinho, item);

            ValidarCarrinho(carrinho);
            if (!OperacaoValida()) return CustomResponse();

            await PersistirDados();
            return CustomResponse();
        }

        [HttpPut("carrinho/{productId}")]
        public async Task<IActionResult> PutItemCarrinho(Guid productId, CarrinhoItem item)
        {
            var carrinho = await ObterCarrinhoCliente();
            var itemCarrinho = await ObterItemCarrinhoValidado(productId, carrinho, item);

            if (itemCarrinho == null) return CustomResponse();

            carrinho.AtualizarUnidades(itemCarrinho, item.Amount);

            ValidarCarrinho(carrinho);
            if (!OperacaoValida()) return CustomResponse();

            _context.CarrinhoItens.Update(itemCarrinho);
            _context.CarrinhoCliente.Update(carrinho);

            await PersistirDados();
            return CustomResponse();
        }

        [HttpDelete("carrinho/{productId}")]
        public async Task<IActionResult> DeleteItemCarrinho(Guid productId)
        {
            var carrinho = await ObterCarrinhoCliente();

            var itemCarrinho = await ObterItemCarrinhoValidado(productId, carrinho);
            if (itemCarrinho == null) return CustomResponse();

            ValidarCarrinho(carrinho);
            if (!OperacaoValida()) return CustomResponse();

            carrinho.RemoverItem(itemCarrinho);

            _context.CarrinhoItens.Remove(itemCarrinho);
            _context.CarrinhoCliente.Update(carrinho);

            await PersistirDados();
            return CustomResponse();
        }

        private async Task<CarrinhoCliente> ObterCarrinhoCliente()
        {
            return await _context.CarrinhoCliente
                .Include(c => c.Items)
                .FirstOrDefaultAsync(c => c.ClientId == _user.ObterUserId());
        }

        private void ManipularNovoCarrinho(CarrinhoItem item)
        {
            var carrinho = new CarrinhoCliente(_user.ObterUserId());
            carrinho.AdicionarItem(item);

            _context.CarrinhoCliente.Add(carrinho);
        }

        private void ManipularCarrinhoExistente(CarrinhoCliente carrinho, CarrinhoItem item)
        {
            var produtoItemExistente = carrinho.CarrinhoItemExistente(item);

            carrinho.AdicionarItem(item);

            if (produtoItemExistente)
            {
                _context.CarrinhoItens.Update(carrinho.ObterPorProdutoId(item.ProductId));
            }
            else
            {
                _context.CarrinhoItens.Add(item);
            }

            _context.CarrinhoCliente.Update(carrinho);
        }

        private async Task<CarrinhoItem> ObterItemCarrinhoValidado(Guid productId, CarrinhoCliente carrinho, CarrinhoItem item = null)
        {
            if (item != null && productId != item.ProductId)
            {
                AdicionarErroProcessamento("O item não corresponde ao informado!");
                return null;
            }

            if (carrinho == null)
            {
                AdicionarErroProcessamento("Carrinho não encontrado!");
                return null;
            }

            var itemCarrinho = await _context.CarrinhoItens
                .FirstOrDefaultAsync(i => i.CarrinhoId == carrinho.Id && i.ProductId == productId);

            if (itemCarrinho == null || !carrinho.CarrinhoItemExistente(itemCarrinho))
            {
                AdicionarErroProcessamento("O item não está no carrinho!");
                return null;
            }

            return itemCarrinho;
        }

        private async Task PersistirDados()
        {
            var result = await _context.SaveChangesAsync();
            if (result <= 0) AdicionarErroProcessamento("Não foi possível persistir os dados no banco!");
        }

        private bool ValidarCarrinho(CarrinhoCliente carrinho)
        {
            if (carrinho.EhValido()) return true;

            carrinho.ValidationResult.Errors.ToList().ForEach(e => AdicionarErroProcessamento(e.ErrorMessage));
            return false;
        }
    }
}

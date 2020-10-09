using ECOM.Bff.Compras.Extensions;
using ECOM.Bff.Compras.Models;
using ECOM.Core.Communication;
using Microsoft.Extensions.Options;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

namespace ECOM.Bff.Compras.Services
{
    public interface IPedidoService
    {
        Task<ResponseResult> FinalizarPedido(PedidoDTO pedido);
        Task<PedidoDTO> ObterUltimoPedido();
        Task<IEnumerable<PedidoDTO>> ObterListaPorClienteId();
        Task<VoucherDTO> ObterVoucherPorCodigo(string codigo);
    }

    public class PedidoService : Service, IPedidoService
    {
        private readonly HttpClient _httpClient;

        public PedidoService(HttpClient httpClient, IOptions<AppServicesSettings> settings)
        {
            _httpClient = httpClient;
            _httpClient.BaseAddress = new Uri(settings.Value.PedidoUrl);
        }

        public async Task<ResponseResult> FinalizarPedido(PedidoDTO pedido)
        {
            var pedidoContent = ObterConteudo(pedido);

            var response = await _httpClient.PostAsync("/pedido/", pedidoContent);

            if (!TratarErrosResponse(response)) return await DeserializarObjetoResponse<ResponseResult>(response);

            return RetornoOk();
        }

        public async Task<PedidoDTO> ObterUltimoPedido()
        {
            var response = await _httpClient.GetAsync("/pedido/ultimo/");

            if (response.StatusCode == HttpStatusCode.NotFound) return null;

            TratarErrosResponse(response);

            return await DeserializarObjetoResponse<PedidoDTO>(response);
        }

        public async Task<IEnumerable<PedidoDTO>> ObterListaPorClienteId()
        {
            var response = await _httpClient.GetAsync("/pedido/lista-cliente/");

            if (response.StatusCode == HttpStatusCode.NotFound) return null;

            TratarErrosResponse(response);

            return await DeserializarObjetoResponse<IEnumerable<PedidoDTO>>(response);
        }

        public async Task<VoucherDTO> ObterVoucherPorCodigo(string codigo)
        {
            var response = await _httpClient.GetAsync($"/voucher/{codigo}/");

            if (response.StatusCode == HttpStatusCode.NotFound) return null;

            TratarErrosResponse(response);

            return await DeserializarObjetoResponse<VoucherDTO>(response);
        }
    }
}

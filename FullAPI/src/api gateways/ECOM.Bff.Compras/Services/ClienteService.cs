using ECOM.Bff.Compras.Extensions;
using ECOM.Bff.Compras.Models;
using Microsoft.Extensions.Options;
using System;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

namespace ECOM.Bff.Compras.Services
{
    public interface IClienteService
    {
        Task<EnderecoDTO> ObterEndereco();
    }

    public class ClienteService : Service, IClienteService
    {
        private readonly HttpClient _httpClient;

        public ClienteService(HttpClient httpClient, IOptions<AppServicesSettings> settings)
        {
            _httpClient = httpClient;
            _httpClient.BaseAddress = new Uri(settings.Value.ClienteUrl);
        }

        public async Task<EnderecoDTO> ObterEndereco()
        {
            var response = await _httpClient.GetAsync("/client/address/"); //Verificar nos testes a necessidade de incluir no endpoint o: /v1/

            if (response.StatusCode == HttpStatusCode.NotFound) return null;

            TratarErrosResponse(response);

            return await DeserializarObjetoResponse<EnderecoDTO>(response);
        }
    }
}

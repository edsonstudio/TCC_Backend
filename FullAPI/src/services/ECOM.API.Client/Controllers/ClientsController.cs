using ECOM.API.Client.Application.Commands;
using ECOM.API.Client.Models;
using ECOM.Core.Mediator;
using ECOM.WebAPI.Core.Controllers;
using ECOM.WebAPI.Core.Usuario;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace ECOM.API.Client.Controllers
{
    [Authorize]
    [ApiVersion("1.0")]
    [Route("api/v{version:apiVersion}/")]
    public class ClientsController : MainController
    { 
        private readonly IMediatorHandler _mediator;
        private readonly IClientRepository _clientRepository;
        private readonly IAspNetUser _user;

        public ClientsController(IClientRepository clientRepository, IMediatorHandler mediator,  IAspNetUser user)
        {
            _clientRepository = clientRepository;
            _mediator = mediator;
            _user = user;
        }

        [HttpGet("client/address")]
        public async Task<IActionResult> ObterEndereco()
        {
            var address = await _clientRepository.ObterEnderecoPorId(_user.ObterUserId());

            return address == null ? NotFound() : CustomResponse(address);
        }

        [HttpPost("client/address")]
        public async Task<IActionResult> AdicionarEndereco(AdicionarEnderecoCommand address)
        {
            address.ClientId = _user.ObterUserId();
            return CustomResponse(await _mediator.EnviarComando(address));
        }
    }
}
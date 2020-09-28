using ECOM.API.Client.Application.Commands;
using ECOM.Core.Mediator;
using ECOM.WebAPI.Core.Controllers;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace ECOM.API.Client.Controllers
{
    public class ClientsController : MainController
    {

        private readonly IMediatorHandler _mediatorHandler;

        public ClientsController(IMediatorHandler mediatorHandler)
        {
            _mediatorHandler = mediatorHandler;
        }

        [HttpGet("clientes")]
        public async Task<IActionResult> Index()
        {
            var result = await _mediatorHandler.EnviarComando(
                new RegisterClientCommand(Guid.NewGuid(), "Mateus", "25170900090", "mateus@eu.com", "981780222"));            

            return CustomResponse(result);
        }
    }
}
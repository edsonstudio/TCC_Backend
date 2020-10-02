using ECOM.API.Client.Application.Commands;
using ECOM.Core.Mediator;
using ECOM.WebAPI.Core.Controllers;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace ECOM.API.Client.Controllers
{
    [Authorize]
    [ApiVersion("1.0")]
    [Route("api/v{version:apiVersion}/[controller]")]
    public class ClientsController : MainController
    {

        private readonly IMediatorHandler _mediatorHandler;

        public ClientsController(IMediatorHandler mediatorHandler)
        {
            _mediatorHandler = mediatorHandler;
        }

        [AllowAnonymous]
        [HttpGet]
        public async Task<IActionResult> Index()
        {
            var result = await _mediatorHandler.EnviarComando(
                new RegisterClientCommand(Guid.NewGuid(), "Mateus", "26807704046", "mateus@eu.com", "981780222"));            

            return CustomResponse(result);
        }
    }
}
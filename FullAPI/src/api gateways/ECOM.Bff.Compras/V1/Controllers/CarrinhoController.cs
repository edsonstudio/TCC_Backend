using ECOM.Bff.Compras.Services;
using ECOM.WebAPI.Core.Controllers;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace ECOM.Bff.Compras.V1.Controllers
{
    [Authorize]
    [ApiVersion("1.0")]
    [Route("api/v{version:apiVersion}/")]
    public class CarrinhoController : MainController
    {
        private readonly ICarrinhoService _carrinhoService;
        private readonly ICatalogoService _catalogoService;

        public CarrinhoController(ICarrinhoService carrinhoService, ICatalogoService catalogoService)
        {
            _carrinhoService = carrinhoService;
            _catalogoService = catalogoService;
        }

        [HttpGet]
        [Route("compras/carrinho")]
        public async Task<IActionResult> Index()
        {
            return CustomResponse();
        }

        [HttpGet]
        [Route("compras/carrinho-quantidade")]
        public async Task<IActionResult> ObterQuantidadeCarrinho()
        {
            return CustomResponse();
        }

        [HttpPost]
        [Route("compras/carrinho/items")]
        public async Task<IActionResult> AdicionarItemCarrinho()
        {
            return CustomResponse();
        }

        [HttpPut]
        [Route("compras/carrinho/items/{productId}")]
        public async Task<IActionResult> AtualizarItemCarrinho()
        {
            return CustomResponse();
        }

        [HttpDelete]
        [Route("compras/carrinho/items/{productId}")]
        public async Task<IActionResult> RemoverItemCarrinho()
        {
            return CustomResponse();
        }
    }
}

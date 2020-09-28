using ECOM.API.Carrinho.Model;
using ECOM.WebAPI.Core.Controllers;
using ECOM.WebAPI.Core.Usuario;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace ECOM.API.Carrinho.V1.Controllers
{
    [Authorize]
    public class CarrinhoController : MainController
    {
        private readonly IAspNetUser _user;

        public CarrinhoController(IAspNetUser user)
        {
            _user = user;
        }

        [HttpGet("carrinho")]
        public async Task<CarrinhoCliente> GetCarrinho()
        {
            return null;
        }

        [HttpPost("carrinho")]
        public async Task<IActionResult> PostItemCarrinho(CarrinhoItem item)
        {
            return CustomResponse();
        }

        [HttpPut("carrinho/{productId}")]
        public async Task<IActionResult> PutItemCarrinho(Guid productId, CarrinhoItem item)
        {
            return CustomResponse();
        }

        [HttpDelete("carrinho/{productId}")]
        public async Task<IActionResult> DeleteItemCarrinho(Guid productId)
        {
            return CustomResponse();
        }
    }
}

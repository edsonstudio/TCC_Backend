using ECOM.API.Catalogo.Models;
using ECOM.WebAPI.Core.Controllers;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ECOM.API.Catalogo.Controllers
{
    [Authorize]
    public class AssociatedProductsController : MainController
    {
        private readonly IAssociatedProductsRepository _associatedProducts;

        public AssociatedProductsController(IAssociatedProductsRepository associatedProducts)
        {
            _associatedProducts = associatedProducts;
        }

        [AllowAnonymous]
        [HttpGet("catalogo/associatedProducts")]
        public async Task<IEnumerable<AssociatedProducts>> Index()
        {
            return await _associatedProducts.ObterTodos();
        }

        [AllowAnonymous]
        [HttpGet("catalogo/associatedProducts/{id}")]
        public async Task<AssociatedProducts> AssociatedProductsDetail(Guid id)
        {
            return await _associatedProducts.ObterPorId(id);
        }
    }
}

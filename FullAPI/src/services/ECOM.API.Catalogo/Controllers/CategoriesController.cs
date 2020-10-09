using ECOM.API.Catalogo.Models;
using ECOM.Core.Mediator;
using ECOM.WebAPI.Core.Controllers;
using ECOM.WebAPI.Core.Usuario;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ECOM.API.Catalogo.Controllers
{
    [Authorize]
    public class CategoriesController : MainController
    {
        private readonly ICategoryRepository _categoryRepository;
        private readonly IMediatorHandler _mediator;
        private readonly IAspNetUser _user;

        public CategoriesController(ICategoryRepository categoryRepository, IMediatorHandler mediator, IAspNetUser user)
        {
            _categoryRepository = categoryRepository;
            _mediator = mediator;
            _user = user;
        }

        [AllowAnonymous]
        [HttpGet("catalogo/categories")]
        public async Task<IEnumerable<Category>> Index()
        {
            return await _categoryRepository.ObterTodos();
        }

        [AllowAnonymous]
        [HttpGet("catalogo/categories/{id}")]
        public async Task<Category> CategoryDetail(Guid id)
        {
            return await _categoryRepository.ObterPorId(id);
        }
    }
}

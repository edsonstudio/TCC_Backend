using ECOM.API.Catalogo.Models;
using ECOM.WebAPI.Core.Controllers;
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

        public CategoriesController(ICategoryRepository categoryRepository)
        {
            _categoryRepository = categoryRepository;
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

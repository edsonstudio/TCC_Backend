using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using AutoMapper;
using ECOM.API.Models;
using ECOM.API.ViewModels;
using ECOM.Business.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace ECOM.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CategoriesController : MainController
    {
        private readonly ICategoryRepository _categoryRepository;
        private readonly ICategoryService _categoryService;
        private readonly IMapper _mapper;

        public CategoriesController( INotificador notificador,
                                    ICategoryRepository categoryRepository,
                                    ICategoryService categoryService,
                                    IMapper mapper) : base(notificador)
        {
            _categoryRepository = categoryRepository;
            _categoryService = categoryService;
            _mapper = mapper;
        }

        // GET: api/Categories
        [HttpGet]
        public async Task<IEnumerable<CategoryViewModel>> ObterTodos()
        {
            return _mapper.Map<IEnumerable<CategoryViewModel>>(await _categoryRepository.GetCategoriesProducts());
        }

        // GET: api/Categories/5
        [HttpGet("{id:guid}")]
        public async Task<ActionResult<CategoryViewModel>> ObterPorID(Guid id)
        {
            var categoryViewModel = await ObterCategoria(id);

            if (categoryViewModel == null) return NotFound();

            return categoryViewModel;
        }

        // POST: api/Categories
        [HttpPost]
        public async Task<ActionResult<CategoryViewModel>> Adicionar(CategoryViewModel categoryViewModel)
        {
            if (!ModelState.IsValid) return CustomResponse(ModelState);

            await _categoryService.Adicionar(_mapper.Map<Category>(categoryViewModel));

            return CustomResponse(categoryViewModel);
        }

        // PUT: api/Categories/5
        [HttpPut("{id:guid}")]
        public async Task<IActionResult> Atualizar(Guid id, CategoryViewModel categoryViewModel)
        {
            if (id != categoryViewModel.Id)
            {
                NotificarErro("Os ids informados não são iguais!");
                return CustomResponse();
            }

            var categoryUpdate = await ObterCategoria(id);

            if (!ModelState.IsValid) return CustomResponse(ModelState);

            categoryUpdate.Name = categoryViewModel.Name;
            categoryUpdate.Products = categoryViewModel.Products;

            await _categoryService.Atualizar(_mapper.Map<Category>(categoryUpdate));

            return CustomResponse(categoryViewModel);
        }

        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<CategoryViewModel>> Excluir(Guid id)
        {
            var category = await ObterCategoria(id);

            if (category == null) return NotFound();

            await _categoryService.Remover(id);

            return CustomResponse(category);
        }

        private async Task<CategoryViewModel> ObterCategoria(Guid id)
        {
            return _mapper.Map<CategoryViewModel>(await _categoryRepository.GetCategoryProducts(id));
        }
    }
}

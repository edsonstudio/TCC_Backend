using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using AutoMapper;
using ECOM.API.Products.Controllers;
using ECOM.API.Products.ViewModels;
using ECOM.Business.Interfaces;
using ECOM.Business.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using static ECOM.WebAPI.Core.Identidade.CustomAuthorization;

namespace ECOM.API.Products.V1.Controllers
{
    [Authorize]
    [ApiVersion("1.0")]
    [Route("api/v{version:apiVersion}/[controller]")]
    public class CategoriesController : MainController
    {
        private readonly ICategoryRepository _categoryRepository;
        private readonly ICategoryService _categoryService;
        private readonly IMapper _mapper;

        public CategoriesController(INotificador notificador,
                                    ICategoryRepository categoryRepository,
                                    ICategoryService categoryService,
                                    IMapper mapper) : base(notificador)
        {
            _categoryRepository = categoryRepository;
            _categoryService = categoryService;
            _mapper = mapper;
        }

        // GET: api/Categories
        [AllowAnonymous]
        [HttpGet]
        public async Task<IEnumerable<CategoryViewModel>> ObterTodos()
        {
            return _mapper.Map<IEnumerable<CategoryViewModel>>(await _categoryRepository.GetCategoriesProducts());
        }

        // GET: api/Categories/5
        [ClaimsAuthorize("Products", "Ler")]
        [HttpGet("{id:guid}")]
        public async Task<ActionResult<CategoryViewModel>> ObterPorID(Guid id)
        {
            var categoryViewModel = await ObterCategoria(id);

            if (categoryViewModel == null) return NotFound();

            return categoryViewModel;
        }

        // POST: api/Categories
        [ClaimsAuthorize("Products", "Adicionar")]
        [HttpPost]
        public async Task<ActionResult<InsertCategoryViewModel>> Adicionar(InsertCategoryViewModel insertCategoryViewModel)
        {
            if (!ModelState.IsValid) return CustomResponse(ModelState);

            await _categoryService.Adicionar(_mapper.Map<Category>(insertCategoryViewModel));

            return CustomResponse(insertCategoryViewModel);
        }

        // PUT: api/Categories/5
        [ClaimsAuthorize("Products", "Editar")]
        [HttpPut("{id:guid}")]
        public async Task<IActionResult> Atualizar(Guid id, UpdateCategoryViewModel updateCategoryViewModel)
        {
            if (id != updateCategoryViewModel.Id)
            {
                NotificarErro("Os ids informados não são iguais!");
                return CustomResponse();
            }

            if (!ModelState.IsValid) return CustomResponse(ModelState);

            var categoryUpdate = new UpdateCategoryViewModel();
            categoryUpdate = await ObterCategoriaUpdate(id);

            if (categoryUpdate == null)
            {
                NotificarErro("Incapaz de salvar as alterações. Esta categoria foi excluída por outro usuário.");
            }
            else
            {
                categoryUpdate.Name = updateCategoryViewModel.Name;

                await _categoryService.Atualizar(_mapper.Map<Category>(categoryUpdate));
            }

            return CustomResponse(updateCategoryViewModel);
        }

        // DELETE: api/ApiWithActions/5
        [ClaimsAuthorize("Products", "Excluir")]
        [HttpDelete("{id:guid}")]
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

        private async Task<UpdateCategoryViewModel> ObterCategoriaUpdate(Guid id)
        {
            return _mapper.Map<UpdateCategoryViewModel>(await _categoryRepository.GetCategoryProducts(id));
        }        
    }
}

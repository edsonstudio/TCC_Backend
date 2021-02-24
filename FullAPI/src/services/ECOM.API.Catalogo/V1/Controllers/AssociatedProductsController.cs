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
    public class AssociatedProductsController : MainController
    {
        private readonly IAssociatedProductsRepository _associatedProductsRepository;
        private readonly IAssociatedProductsService _associatedProductsService;
        private readonly IMapper _mapper;

        public AssociatedProductsController(INotificador notificador,
                                            IAssociatedProductsRepository associatedProductsRepository,
                                            IAssociatedProductsService associatedProductsService,
                                            IMapper mapper) : base(notificador)
        {
            _associatedProductsRepository = associatedProductsRepository;
            _associatedProductsService = associatedProductsService;
            _mapper = mapper;
        }

        // GET: api/AssociatedProducts
        [AllowAnonymous]
        [HttpGet]
        public async Task<IEnumerable<AssociatedProductsViewModel>> GetAssociatedProducts()
        {
            return _mapper.Map<IEnumerable<AssociatedProductsViewModel>>(await _associatedProductsRepository.GetAssociatedProducts());
        }

        // GET: api/AssociatedProducts/5
        [AllowAnonymous]
        [HttpGet("{id:guid}")]
        public async Task<ActionResult<AssociatedProductsViewModel>> GetAssociatedProducts(Guid id)
        {
            var associatedProductsViewModel = await GetAssociatedProduct(id);

            if (associatedProductsViewModel == null) return NotFound();

            return associatedProductsViewModel;
        }

        // PUT: api/AssociatedProducts/5
        [ClaimsAuthorize("Products", "Editar")]
        [HttpPut("{id:guid}")]
        public async Task<IActionResult> PutAssociatedProducts(Guid id, UpdateAssociatedProductsViewModel updateAssociatedProductsViewModel)
        {
            if (id != updateAssociatedProductsViewModel.Id)
            {
                NotificarErro("Os IDs  informados não são iguais!");
                return CustomResponse();
            }
            var tempAssociated = new AssociatedProductsViewModel();
            tempAssociated = await GetAssociatedProduct(id);
            if (tempAssociated == null)
            {
                NotificarErro("Incapaz de salvar as alterações. A associação destes produtos foi excluída por outro usuário.");
            }
            else
            {
                await _associatedProductsService.Atualizar(_mapper.Map<AssociatedProducts>(updateAssociatedProductsViewModel));
            }
            if (!ModelState.IsValid) return CustomResponse(ModelState);

            return CustomResponse(updateAssociatedProductsViewModel);
        }


        // POST: api/AssociatedProducts
        [ClaimsAuthorize("Products", "Adicionar")]
        [HttpPost]
        public async Task<ActionResult<InsertAssociatedProductsViewModel>> PostAssociatedProducts(InsertAssociatedProductsViewModel insertAssociatedProductsViewModel)
        {
            if (!ModelState.IsValid) return CustomResponse(ModelState);

            await _associatedProductsService.Adicionar(_mapper.Map<AssociatedProducts>(insertAssociatedProductsViewModel));

            return CustomResponse(insertAssociatedProductsViewModel);
        }

        // DELETE: api/AssociatedProducts/5
        [ClaimsAuthorize("Products", "Excluir")]
        [HttpDelete("{id:guid}")]
        public async Task<ActionResult<AssociatedProductsViewModel>> DeleteAssociatedProducts(Guid id)
        {
            var associatedProduct = await GetAssociatedProduct(id);
            if (associatedProduct == null) return NotFound();

            await _associatedProductsService.Remover(id);

            return CustomResponse(associatedProduct);
        }

        private async Task<AssociatedProductsViewModel> GetAssociatedProduct(Guid id)
        {
            return _mapper.Map<AssociatedProductsViewModel>(await _associatedProductsRepository.GetAssociatedProductsById(id));
        }
    }
}

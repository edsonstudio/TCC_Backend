using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using ECOM.Business.Models;
using ECOM.Business.Interfaces;
using AutoMapper;
using ECOM.API.ViewModels;

namespace ECOM.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
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
        [HttpGet]
        public async Task<IEnumerable<AssociatedProductsViewModel>> GetAssociatedProducts()
        {
            return _mapper.Map<IEnumerable<AssociatedProductsViewModel>>(await _associatedProductsRepository.GetAssociatedProducts());
        }

        // GET: api/AssociatedProducts/5
        [HttpGet("{id:guid}")]
        public async Task<ActionResult<AssociatedProductsViewModel>> GetAssociatedProducts(Guid id)
        {
            var associatedProductsViewModel = await GetAssociatedProduct(id);

            if (associatedProductsViewModel == null) return NotFound();
           
            return associatedProductsViewModel;
        }

        // PUT: api/AssociatedProducts/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id:guid}")]
        public async Task<IActionResult> PutAssociatedProducts(Guid id, UpdateAssociatedProductsViewModel updateAssociatedProductsViewModel)
        {
            if(id != updateAssociatedProductsViewModel.Id)
            {
                NotificarErro("Os IDs  informados não são iguais!");
                return CustomResponse();
            }

            if (!ModelState.IsValid) return CustomResponse(ModelState);
           
            await _associatedProductsService.Atualizar(_mapper.Map<AssociatedProducts>(updateAssociatedProductsViewModel));           

            return CustomResponse(updateAssociatedProductsViewModel);
        }


        // POST: api/AssociatedProducts
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<InsertAssociatedProductsViewModel>> PostAssociatedProducts(InsertAssociatedProductsViewModel insertAssociatedProductsViewModel)
        {
            if (!ModelState.IsValid) return CustomResponse(ModelState);

            await _associatedProductsService.Adicionar(_mapper.Map<AssociatedProducts>(insertAssociatedProductsViewModel));

            return CustomResponse(insertAssociatedProductsViewModel);
        }

        // DELETE: api/AssociatedProducts/5
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

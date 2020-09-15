using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using ECOM.API.Models;
using System.IO;
using ECOM.Business.Interfaces;
using AutoMapper;
using ECOM.API.ViewModels;
using ECOM.API.Controllers;

namespace ECOM.API.V1.Controllers
{
    //[Authorize]
    [ApiVersion("1.0")]
    [Route("api/v{version:apiVersion}/[controller]")]
    [ApiController]
    public class ProductsController : MainController
    {
        private readonly IAssociatedProductsRepository _associatedProductsRepository;
        private readonly IAssociatedProductsService _associatedProductsService;

        private readonly IProductRepository _productRepository;
        private readonly IProductService _productService;
        private readonly IMapper _mapper;

        public ProductsController(INotificador notificador,
                                  IAssociatedProductsRepository associatedProductsRepository,
                                  IAssociatedProductsService associatedProductsService,
                                  IProductRepository productRepository,
                                  IProductService productService,
                                  IMapper mapper) : base(notificador)
        {
            _associatedProductsRepository = associatedProductsRepository;
            _associatedProductsService = associatedProductsService;

            _productRepository = productRepository;
            _productService = productService;
            _mapper = mapper;
        }

        // GET: api/Products
        [HttpGet]
        public async Task<IEnumerable<ProductViewModel>> ObterTodos()
        {
            return _mapper.Map<IEnumerable<ProductViewModel>>(await _productRepository.ObterTodosProdutos());
        }

        // GET: api/Products/5
        [HttpGet("{id:guid}")]
        public async Task<ActionResult<ProductViewModel>> ObterPorId(Guid id)
        {
            var productViewModel = await ObterProduto(id);

            if (productViewModel == null) return NotFound();

            return productViewModel;
        }

        // PUT: api/Products/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        //[ClaimsAuthorize("Product", "Atualizar")]
        [HttpPut("{id:guid}")]
        public async Task<IActionResult> Atualizar(Guid id, ProductViewModel productViewModel)
        {
            if (id != productViewModel.Id)
            {
                NotificarErro("Os ids informados não são iguais!");
                return CustomResponse();
            }

            var productUpdate = new ProductViewModel();
            productUpdate = await ObterProduto(id);

            if (productUpdate == null)
            {
                NotificarErro("Incapaz de salvar as alterações. Este produto foi excluído por outro usuário.");
            }
            else
            {
                if (string.IsNullOrEmpty(productViewModel.Image))
                    productViewModel.Image = productUpdate.Image;

                if (!ModelState.IsValid) return CustomResponse(ModelState);

                if (productViewModel.ImageUpload != null)
                {
                    var imageName = Guid.NewGuid() + "_" + productViewModel.Image;
                    if (!UploadArquivo(productViewModel.ImageUpload, imageName))
                    {
                        return CustomResponse(ModelState);
                    }

                    productUpdate.Image = imageName;
                }

                productUpdate.CategoryId = productViewModel.CategoryId;
                productUpdate.Name = productViewModel.Name;
                productUpdate.Description = productViewModel.Description;
                productUpdate.Price = productViewModel.Price;
                productUpdate.Brand = productViewModel.Brand;
                productUpdate.Model = productViewModel.Model;
                productUpdate.Amount = productViewModel.Amount;
                productUpdate.Active = productViewModel.Active;

                await _productService.Atualizar(_mapper.Map<Product>(productUpdate));
            }

            return CustomResponse(productViewModel);
        }

        // POST: api/Products
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        //[ClaimsAuthorize("Product","Adicionar")]
        public async Task<ActionResult<ProductViewModel>> Adicionar(ProductViewModel productViewModel)
        {
            if (!ModelState.IsValid) return CustomResponse(ModelState);

            var imageName = Guid.NewGuid() + "_" + productViewModel.Image;

            if (!UploadArquivo(productViewModel.ImageUpload, imageName)) return CustomResponse(productViewModel);

            productViewModel.Image = imageName;

            await _productService.Adicionar(_mapper.Map<Product>(productViewModel));

            return CustomResponse(productViewModel);

        }

        // DELETE: api/Products/5
        //[ClaimsAuthorize("Product", "Excluir")]
        [HttpDelete("{id:guid}")]
        public async Task<ActionResult<ProductViewModel>> Excluir(Guid id)
        {
            var ProductViewModel = await ObterProduto(id);
            var associetedProduct = await GetAssociatedProduct(id);

            if (ProductViewModel == null) return NotFound();

            if (associetedProduct == null)
            {
                await _productService.Remover(id);
            }


            return CustomResponse(ProductViewModel);
        }

        private async Task<ProductViewModel> ObterProduto(Guid id)
        {
            return _mapper.Map<ProductViewModel>(await _productRepository.ObterProdutoPorId(id));
        }

        private async Task<AssociatedProductsViewModel> GetAssociatedProduct(Guid id)
        {
            return _mapper.Map<AssociatedProductsViewModel>(await _associatedProductsRepository.GetAssociatedProductsById(id));
        }
        private bool UploadArquivo(string arquivo, string imgNome)
        {
            if (string.IsNullOrEmpty(arquivo))
            {
                NotificarErro("Forneça uma imagem para este produto!");
                return false;
            }

            var imageDataByteArray = Convert.FromBase64String(arquivo);

            var filePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", imgNome);

            if (System.IO.File.Exists(filePath))
            {
                NotificarErro("Já existe um arquivo com este nome!");
                return false;
            }

            System.IO.File.WriteAllBytes(filePath, imageDataByteArray);

            return true;
        }
    }
}

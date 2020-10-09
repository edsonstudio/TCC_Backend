using System;
using System.Collections.Generic;
using System.IO;
using System.Threading.Tasks;
using AutoMapper;
using ECOM.API.Products.Controllers;
using ECOM.API.Products.ViewModels;
using ECOM.Business.Interfaces;
using ECOM.Business.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using static ECOM.WebAPI.Core.Identidade.CustomAuthorization;

namespace ECOM.API.Products.V2.Controllers
{
    [Authorize]
    [ApiVersion("2.0")]
    [Route("api/v{version:apiVersion}/[controller]")]
    public class ProductsController : MainController
    {
        private readonly IProductRepository _productRepository;
        private readonly IProductService _productService;
        private readonly IMapper _mapper;

        public ProductsController(INotificador notificador,
                                  IProductRepository productRepository,
                                  IProductService productService,
                                  IMapper mapper) : base(notificador)
        {
            _productRepository = productRepository;
            _productService = productService;
            _mapper = mapper;
        }

        // GET: api/Products
        [AllowAnonymous]
        [HttpGet]
        public async Task<IEnumerable<ProductViewModel>> ObterTodos()
        {
            return _mapper.Map<IEnumerable<ProductViewModel>>(await _productRepository.ObterTodosProdutos());
        }

        // GET: api/Products/5
        [AllowAnonymous]
        [HttpGet("{id:guid}")]
        public async Task<ActionResult<ProductViewModel>> ObterPorId(Guid id)
        {
            var productViewModel = await ObterProduto(id);

            if (productViewModel == null) return NotFound();

            return productViewModel;
        }

        [HttpGet("lista/{ids}")]
        public async Task<IEnumerable<Product>> ObterProdutosPorId(string ids)
        {
            return _mapper.Map<List<Product>>(await _productRepository.ObterProdutosPorId(ids));
            //return await _produtoRepository.ObterProdutosPorId(ids);
        }

        // PUT: api/Products/5
        [ClaimsAuthorize("Products", "Editar")]
        [HttpPut("{id:guid}")]
        public async Task<IActionResult> Atualizar(Guid id, UpdateProductViewModel productViewModel)
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
        [ClaimsAuthorize("Products", "Adicionar")]
        [HttpPost]
        public async Task<ActionResult<InsertProductViewModel>> Adicionar(InsertProductViewModel insertProductViewModel)
        {
            if (!ModelState.IsValid) return CustomResponse(ModelState);

            var imageName = Guid.NewGuid() + "_" + insertProductViewModel.Image;

            if (!UploadArquivo(insertProductViewModel.ImageUpload, imageName)) return CustomResponse(insertProductViewModel);

            insertProductViewModel.Image = imageName;

            await _productService.Adicionar(_mapper.Map<Product>(insertProductViewModel));

            return CustomResponse(insertProductViewModel);

        }

        // DELETE: api/Products/5
        [ClaimsAuthorize("Products", "Excluir")]
        [HttpDelete("{id:guid}")]
        public async Task<ActionResult<ProductViewModel>> Excluir(Guid id)
        {
            var productViewModel = await ObterProduto(id);
            
            if (productViewModel == null) return NotFound();
            try
            {
                await _productService.Remover(id);
            }
            catch (DbUpdateException ex)
            {
                var sqlException = ex.GetBaseException() as SqlException;

                if (sqlException != null)
                {
                    var number = sqlException.Number;

                    if (number == 547)
                    {
                        NotificarErro("Antes de deletar este produto você deve deletar todas as associações feitas a ele!");
                    }
                }
            }

            return CustomResponse(productViewModel);
        }

        private async Task<ProductViewModel> ObterProduto(Guid id)
        {
            return _mapper.Map<ProductViewModel>(await _productRepository.ObterProdutoPorId(id));
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

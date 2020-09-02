using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ECOM.API.Models;
using ECOM.Data.Context;
using System.IO;
using Microsoft.AspNetCore.Authorization;
using ECOM.Business.Interfaces;
using Microsoft.AspNetCore.Mvc.Infrastructure;
using AutoMapper;
using ECOM.API.ViewModels;
using ECOM.API.Extensions;

namespace ECOM.API.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsController : MainController
    {
        private readonly IProductRepository _productRepository;
        private readonly IProductService _productService;
        private readonly IMapper _mapper;

        // private readonly InitialDbContext _context;

        public ProductsController(INotificador notificador,
                                    IProductRepository productRepository,
                                    IProductService productService,
                                    IMapper mapper,
                                    IUser user) : base(notificador, user)
        {
            _productRepository = productRepository;
            _productService = productService;
            _mapper = mapper;
        }

        // GET: api/Products
        [HttpGet] //Edson
        public async Task<IEnumerable<ProductViewModel>> ObterTodos()
        {
            return _mapper.Map<IEnumerable<ProductViewModel>>(await _productRepository.ObterProdutos()); //Testar com o método ObterTodos();

            //return await _context.Products.ToListAsync();
        }

        // GET: api/Products/5
        [HttpGet("{id:guid}")] //Edson
        public async Task<ActionResult<ProductViewModel>> ObterPorId(Guid id)
        {
            var productViewModel = await ObterProduto(id);

            if (productViewModel == null) return NotFound();

            return productViewModel;

            //var product = await _context.Products.FindAsync(id);

            //if (product == null)
            //{
            //    return NotFound();
            //}

            //return product;
        }

        // PUT: api/Products/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [ClaimsAuthorize("Product", "Atualizar")]
        [HttpPut("{id:guid}")] //Edson
        public async Task<IActionResult> Atualizar(Guid id, ProductViewModel productViewModel)
        {
            if (id != productViewModel.Id)
            {
                NotificarErro("Os ids informados não são iguais!");
                return CustomResponse();
            }

            var productUpdate = await ObterProduto(id);
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

            return CustomResponse(productViewModel);
        }

        // POST: api/Products
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<ProductViewModel>> Adicionar(ProductViewModel productViewModel)
        {
            //_context.Products.Add(product);
            //await _context.SaveChangesAsync();

            //return CreatedAtAction("GetProduct", new { id = product.Id }, product);
            return CustomResponse(productViewModel);

        }

        // DELETE: api/Products/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<ProductViewModel>> Excluir(Guid id)
        {
            var product = await ObterProduto(id);

            if (product == null) return NotFound();

            await _productService.Remover(id);

            return CustomResponse(product);
        }

        private async Task<ProductViewModel> ObterProduto(Guid id)
        {
            return _mapper.Map<ProductViewModel>(await _productRepository.ObterProdutos());
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

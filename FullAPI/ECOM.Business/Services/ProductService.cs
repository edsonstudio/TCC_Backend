using ECOM.API.Models;
using ECOM.Business.Interfaces;
using ECOM.Business.Models.Validations;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.Business.Services
{
    public class ProductService : BaseService, IProductService
    {
        private readonly IProductRepository _productRepository;
        //private readonly IUser _user;

        public ProductService (IProductRepository productRepository,
                                INotificador notificador
                                /*IUser user*/) : base(notificador)
        {
            _productRepository = productRepository;
            //_user = user;
        }

        public async Task<bool> Adicionar(Product product)
        {
            if (!ExecutarValidacao(new ProductValidation(), product)) return false;
            await _productRepository.Adicionar(product);
            return true;
        }

        public async Task<bool> Atualizar(Product product)
        {
            if (!ExecutarValidacao(new ProductValidation(), product)) return false;
            await _productRepository.Atualizar(product);
            return true;
        }

        public void Dispose()
        {
            _productRepository?.Dispose();
        }

        public async Task<bool> Remover(Guid id)
        {
            if (_productRepository.ObterProdutoPorId(id).Result.AssociatedProducts.Any())
            {
                Notificar("Este produto possui produtos associados!");
                return false;
            }
            else
            {
                await _productRepository.Remover(id);
                return true;
            }
        }
    }
}

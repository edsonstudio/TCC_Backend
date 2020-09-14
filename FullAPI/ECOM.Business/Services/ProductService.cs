using ECOM.API.Models;
using ECOM.Business.Interfaces;
using ECOM.Business.Models.Validations;
using System;
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

        public async Task Adicionar(Product product)
        {
            if (!ExecutarValidacao(new ProductValidation(), product)) return;
            await _productRepository.Adicionar(product);
        }

        public async Task Atualizar(Product product)
        {
            if (!ExecutarValidacao(new ProductValidation(), product)) return;
            await _productRepository.Atualizar(product);
        }

        public void Dispose()
        {
            _productRepository?.Dispose();
        }

        public async Task Remover(Guid id)
        {
            await _productRepository.Remover(id);
        }
    }
}

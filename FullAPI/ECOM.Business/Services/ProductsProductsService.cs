using ECOM.Business.Interfaces;
using ECOM.Business.Models;
using ECOM.Business.Models.Validations;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ECOM.Business.Services
{
    public class ProductsProductsService : BaseService, IProductsProductsService
    {
        private readonly IProductsProductsRepository _productsProductsRepository;
        //private readonly IUser _user;

        public ProductsProductsService(IProductsProductsRepository productsProductsRepository,
                                INotificador notificador
                                /*IUser user*/) : base(notificador)
        {
            _productsProductsRepository = productsProductsRepository;
            //_user = user;
        }


        public async Task Adicionar(ProductsProducts productsProducts)
        {
            // Para funcionar esse serviço, a validação precisa estar implementada

            /*
            if (!ExecutarValidacao(new ProductsProductsValidation(), productsProducts)) return;
            await _productsProductsRepository.Adicionar(productsProducts);*/
        }

        public async Task Atualizar(ProductsProducts productsProducts)
        {
            // Para funcionar esse serviço, a validação precisa estar implementada

            /*
            if (!ExecutarValidacao(new ProductsProductsValidation(), productsProducts)) return;
            await _productsProductsRepository.Atualizar(productsProducts);*/
        }

        public void Dispose()
        {
            _productsProductsRepository?.Dispose();
        }

        public async Task Remover(Guid id)
        {
            await _productsProductsRepository.Remover(id);
        }
    }
}

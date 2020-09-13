using ECOM.Business.Interfaces;
using ECOM.Business.Models;
using ECOM.Business.Models.Validations;
using System;
using System.Threading.Tasks;

namespace ECOM.Business.Services
{
    public class AssociatedProductsService : BaseService, IAssociatedProductsService
    {
        private readonly IAssociatedProductsRepository _associatedProductsRepository;
        //private readonly IUser _user;

        public AssociatedProductsService(IAssociatedProductsRepository associatedProductsRepository,
                                INotificador notificador
                                /*IUser user*/) : base(notificador)
        {
            _associatedProductsRepository = associatedProductsRepository;
            //_user = user;
        }


        public async Task Adicionar(AssociatedProducts associatedProducts)
        {
            // Para funcionar esse serviço, a validação precisa estar implementada

            
            if (!ExecutarValidacao(new AssociatedProductsValidation(), associatedProducts)) return;
            await _associatedProductsRepository.Adicionar(associatedProducts);
        }

        public async Task Atualizar(AssociatedProducts associatedProducts)
        {
            // Para funcionar esse serviço, a validação precisa estar implementada

            if (!ExecutarValidacao(new AssociatedProductsValidation(), associatedProducts)) return;
            await _associatedProductsRepository.Atualizar(associatedProducts);
        }

        public void Dispose()
        {
            _associatedProductsRepository?.Dispose();
        }

        public async Task Remover(Guid id)
        {
            await _associatedProductsRepository.Remover(id);
        }
    }
}

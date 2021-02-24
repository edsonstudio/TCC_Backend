using ECOM.Business.Models;
using System;
using System.Threading.Tasks;

namespace ECOM.Business.Interfaces
{
    public interface IAssociatedProductsService : IDisposable
    {
        Task Adicionar(AssociatedProducts product);
        Task Atualizar(AssociatedProducts product);
        Task Remover(Guid id);
    }
}

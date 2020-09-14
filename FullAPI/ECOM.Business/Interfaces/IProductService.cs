using System;
using System.Threading.Tasks;
using ECOM.API.Models;

namespace ECOM.Business.Interfaces
{
    public interface IProductService : IDisposable
    {
        Task<bool> Adicionar(Product product);
        Task<bool> Atualizar(Product product);
        Task<bool> Remover(Guid id);
    }
}

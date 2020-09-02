using System;
using System.Threading.Tasks;
using ECOM.API.Models;

namespace ECOM.Business.Interfaces
{
    public interface IProductService : IDisposable
    {
        Task Adicionar(Product product);
        Task Atualizar(Product product);
        Task Remover(Guid id);
    }
}

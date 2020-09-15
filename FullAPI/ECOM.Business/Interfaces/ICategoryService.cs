using System;
using System.Threading.Tasks;
using ECOM.Business.Models;

namespace ECOM.Business.Interfaces
{
    public interface ICategoryService : IDisposable
    {
        Task<bool> Adicionar(Category category);
        Task<bool> Atualizar(Category category);
        Task<bool> Remover(Guid id);
    }
}

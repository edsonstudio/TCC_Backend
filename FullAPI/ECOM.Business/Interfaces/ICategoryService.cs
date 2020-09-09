using ECOM.API.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ECOM.Business.Interfaces
{
    public interface ICategoryService : IDisposable
    {
        Task<bool> Adicionar(Category category);
        Task<bool> Atualizar(Category category);
        Task<bool> Remover(Guid id);
    }
}

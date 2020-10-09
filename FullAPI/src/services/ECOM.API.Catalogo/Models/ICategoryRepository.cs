using ECOM.Core.Data;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ECOM.API.Catalogo.Models
{
    public interface ICategoryRepository : IRepository<Category>
    {
        Task<IEnumerable<Category>> ObterTodos();
        Task<Category> ObterPorId(Guid id);
        Task<Category> ObterPorNome(string nome);

        void Adicionar(Category category);
        void Atualizar(Category category);
    }
}

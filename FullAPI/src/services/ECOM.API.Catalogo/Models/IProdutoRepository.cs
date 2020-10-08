using ECOM.Core.Data;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ECOM.API.Catalogo.Models
{
    public interface IProdutoRepository : IRepository<Product>
    {
        Task<IEnumerable<Product>> ObterTodos();
        Task<Product> ObterPorId(Guid id);

        void Adicionar(Product product);
        void Atualizar(Product product);
    }
}

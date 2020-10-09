using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using ECOM.Business.Models;

namespace ECOM.Business.Interfaces
{
    public interface IProductRepository : IRepository<Product>
    {
        Task<Product> ObterProdutoPorId(Guid id);
        Task<IEnumerable<Product>> ObterTodosProdutos();
        Task<IEnumerable<Product>> ObterProdutosPorCategoria(Guid categoryId);
        Task<List<Product>> ObterProdutosPorId(string ids);
    }
}

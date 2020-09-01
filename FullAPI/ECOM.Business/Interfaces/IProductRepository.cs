using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using ECOM.API.Models;

namespace ECOM.Business.Interfaces
{
    public interface IProductRepository : IRepository<Product>
    {
        Task<IEnumerable<Product>> ObterProdutosPorFornecedor(Guid fornecedorId);
        Task<IEnumerable<Product>> ObterProdutosFornecedores();
        Task<Product> ObterProdutoFornecedor(Guid id);
    }
}

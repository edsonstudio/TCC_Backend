using ECOM.Business.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ECOM.Business.Interfaces
{
    public interface IProductsProductsRepository : IRepository<ProductsProducts>
    {
        Task<ProductsProducts> ObterProdutosProdutosPorId(Guid id);
        Task<IEnumerable<ProductsProducts>> ObterTodosProdutosProdutos();


        // VERIFIQUE SE SÃO APENAS ESSES MÉTODOS
    }
}

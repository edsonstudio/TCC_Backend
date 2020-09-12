using ECOM.Business.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ECOM.Business.Interfaces
{
    public interface IProductsProductsService : IDisposable
    {
        Task Adicionar(ProductsProducts product);
        Task Atualizar(ProductsProducts product);
        Task Remover(Guid id);
    }
}

using ECOM.Business.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ECOM.Business.Interfaces
{
    public interface IAssociatedProductsRepository : IRepository<AssociatedProducts>
    {
        Task<AssociatedProducts> GetAssociatedProductsById(Guid id);
        Task<IEnumerable<AssociatedProducts>> GetAssociatedProducts();


        // VERIFIQUE SE SÃO APENAS ESSES MÉTODOS
    }
}

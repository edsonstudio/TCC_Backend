using ECOM.API.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ECOM.Business.Interfaces
{
    public interface ICategoryRepository : IRepository<Category>
    {
        Task<IEnumerable<Category>> GetCategoriesProducts();
        Task<Category> GetCategoryProducts(Guid id);
    }
}

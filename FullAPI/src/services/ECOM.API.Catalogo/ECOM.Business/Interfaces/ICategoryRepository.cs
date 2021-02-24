using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using ECOM.Business.Models;

namespace ECOM.Business.Interfaces
{
    public interface ICategoryRepository : IRepository<Category>
    {
        Task<IEnumerable<Category>> GetCategoriesProducts();
        Task<Category> GetCategoryProducts(Guid id);
    }
}

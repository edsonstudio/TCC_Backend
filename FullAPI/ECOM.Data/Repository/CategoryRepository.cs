using ECOM.Business.Interfaces;
using ECOM.Data.Context;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ECOM.Business.Models;

namespace ECOM.Data.Repository
{
    public class CategoryRepository : Repository<Category>, ICategoryRepository
    {
        public CategoryRepository(InitialDbContext context) :base(context){}

        public async Task<IEnumerable<Category>> GetCategoriesProducts()
        {
            return await Db.Categories.AsNoTracking().Include(ct => ct.Products).OrderBy(ct => ct.Name).ToListAsync();
        }

        public async Task<Category> GetCategoryProducts(Guid id)
        {
            return await Db.Categories.AsNoTracking().Include(ct => ct.Products).FirstOrDefaultAsync(ct => ct.Id == id);
        }
    }
}

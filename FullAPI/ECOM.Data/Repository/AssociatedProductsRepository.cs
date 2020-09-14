using ECOM.Business.Interfaces;
using ECOM.Business.Models;
using ECOM.Data.Context;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.Data.Repository
{
    public class AssociatedProductsRepository : Repository<AssociatedProducts>, IAssociatedProductsRepository
    {
        public AssociatedProductsRepository(InitialDbContext context) : base(context) { }

        public async Task<AssociatedProducts> GetAssociatedProductsById(Guid id)
        {
            return await Db.AssociatedProducts.AsNoTracking()
                .Include(ap => ap.ProductFather)
                .ThenInclude(c => c.Category)
                .Include(ap => ap.ProductSon)
                .ThenInclude(c => c.Category)
                .FirstOrDefaultAsync(ap => ap.Id == id);
        }

        public async Task<IEnumerable<AssociatedProducts>> GetAssociatedProducts()
        {
            return await Db.AssociatedProducts.AsNoTracking()
                .Include(ap => ap.ProductFather)
                .ThenInclude(c => c.Category)
                .Include(ap => ap.ProductSon)
                .ThenInclude(c => c.Category)
                .OrderBy(ap => ap.ProductFather)
                .ToListAsync() ;
        }
    }
}

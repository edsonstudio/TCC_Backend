using ECOM.Business.Interfaces;
using ECOM.Business.Models;
using ECOM.Data.Context;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace ECOM.Data.Repository
{
    public class ProductsProductsRepository : Repository<ProductsProducts>, IProductsProductsRepository
    {
        public ProductsProductsRepository(InitialDbContext context) : base(context) { }

        public async Task<ProductsProducts> ObterProdutosProdutosPorId(Guid id)
        {
            return await Db.ProductsProducts.AsNoTracking()
                .Include(psps => psps.ProductFather)
                .Include(psps => psps.ProductSon)
                .FirstOrDefaultAsync(psps => psps.Id == id);
        }

        public async Task<IEnumerable<ProductsProducts>> ObterTodosProdutosProdutos()
        {
            return await Db.ProductsProducts.AsNoTracking()
                .Include(psps => psps.ProductFather)
                .Include(psps => psps.ProductSon)
                .ToListAsync() ;
        }


    }
}

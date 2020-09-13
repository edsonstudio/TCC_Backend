using ECOM.API.Models;
using ECOM.Business.Interfaces;
using ECOM.Data.Context;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.Data.Repository
{
    public class ProductRepository : Repository<Product>, IProductRepository
    {
        public ProductRepository(InitialDbContext context) : base(context) { }


        public async Task<Product> ObterProdutoPorId(Guid id)
        {
            return await Db.Products.AsNoTracking().Include(pr => pr.Category)
                .Include(psps => psps.ProductsProducts).ThenInclude(pf => pf.ProductSon).ThenInclude(c => c.Category)
                .FirstOrDefaultAsync(p => p.Id == id);
        }

        public async Task<IEnumerable<Product>> ObterTodosProdutos()
        {
            return await Db.Products.AsNoTracking().Include(pr => pr.Category)
                .Include(psps => psps.ProductsProducts).ThenInclude(pf => pf.ProductSon).ThenInclude(c => c.Category)
                .OrderBy(p => p.Name).ToListAsync();
        }

        public async Task<IEnumerable<Product>> ObterProdutosPorCategoria(Guid categoryId)
        {
            return await Buscar(p => p.CategoryId == categoryId);
        }
    }
}
using ECOM.API.Models;
using ECOM.Business.Interfaces;
using ECOM.Data.Context;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ECOM.Data.Repository
{
    public class ProductRepository : Repository<Product>//, IProductRepository
    {
        public ProductRepository(InitialDbContext context) : base(context) { }

        /*
        public async Task<Product> ObterProdutoFornecedor(Guid id)
        {
            return await Db.Products.AsNoTracking()
                .FirstOrDefaultAsync(p => p.Id == id);
        }

        public async Task<IEnumerable<Product>> ObterProdutosFornecedores()
        {
            return await Db.Products.AsNoTracking().OrderBy(p => p.Name).ToListAsync();
        }

        public async Task<IEnumerable<Produto>> ObterProdutosPorFornecedor(Guid fornecedorId)
        {
            return await Buscar(p => p.FornecedorId == fornecedorId);
        }
        */
    }
}

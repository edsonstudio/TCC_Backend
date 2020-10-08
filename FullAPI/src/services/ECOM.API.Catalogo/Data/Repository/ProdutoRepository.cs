using ECOM.API.Catalogo.Models;
using ECOM.Core.Data;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ECOM.API.Catalogo.Data.Repository
{
    public class ProdutoRepository : IProdutoRepository
    {
        private readonly CatalogoContext _context;
        
        public ProdutoRepository(CatalogoContext context)
        {
            _context = context;
        }

        public IUnitOfWork UnitOfWork => _context;

        public async Task<IEnumerable<Product>> ObterTodos()
        {
            return await _context.Products.AsNoTracking().ToListAsync();
        }

        public async Task<Product> ObterPorId(Guid id)
        {
            return await _context.Products.FindAsync(id);
        }
        
        public void Adicionar(Product product)
        {
            _context.Products.Add(product);
        }

        public void Atualizar(Product product)
        {
            _context.Products.Update(product);
        }

        public void Dispose()
        {
            _context?.Dispose();
        }       
    }
}

using ECOM.API.Catalogo.Models;
using ECOM.Core.Data;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ECOM.API.Catalogo.Data.Repository
{
    public class AssociatedProductsRepository : IAssociatedProductsRepository
    {
        private readonly CatalogoContext _context;

        public AssociatedProductsRepository(CatalogoContext context)
        {
            _context = context;
        }

        public IUnitOfWork UnitOfWork => _context;

        public async Task<IEnumerable<AssociatedProducts>> ObterTodos()
        {
            return await _context.AssociatedProducts.AsNoTracking().ToListAsync();
        }

        public async Task<AssociatedProducts> ObterPorId(Guid id)
        {
            return await _context.AssociatedProducts.FindAsync(id);
        }

        public void Adicionar(AssociatedProducts associatedProducts)
        {
            _context.AssociatedProducts.Add(associatedProducts);
        }

        public void Atualizar(AssociatedProducts associatedProducts)
        {
            _context.AssociatedProducts.Update(associatedProducts);
        }

        public void Dispose()
        {
            _context?.Dispose();
        }
    }
}

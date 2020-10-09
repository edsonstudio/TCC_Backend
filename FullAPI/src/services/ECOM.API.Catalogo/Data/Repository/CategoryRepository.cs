using ECOM.API.Catalogo.Models;
using ECOM.Core.Data;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ECOM.API.Catalogo.Data.Repository
{
    public class CategoryRepository : ICategoryRepository
    {
        private readonly CatalogoContext _context;

        public CategoryRepository(CatalogoContext context)
        {
            _context = context;
        }

        public IUnitOfWork UnitOfWork => _context;

        public async Task<IEnumerable<Category>> ObterTodos()
        {
            return await _context.Categories.AsNoTracking().ToListAsync();
        }

        public async Task<Category> ObterPorId(Guid id)
        {
            return await _context.Categories.FindAsync(id);
        }

        public async Task<Category> ObterPorNome(string nome)
        {
            return await _context.Categories.FirstOrDefaultAsync(c => c.Name == nome);
        }

        public void Adicionar(Category category)
        {
            _context.Categories.Add(category);
        }

        public void Atualizar(Category category)
        {
            _context.Categories.Update(category);
        }

        public void Dispose()
        {
            _context?.Dispose();
        }
    }
}

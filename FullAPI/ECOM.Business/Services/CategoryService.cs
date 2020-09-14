using ECOM.API.Models;
using ECOM.Business.Interfaces;
using ECOM.Business.Models.Validations;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.Business.Services
{
    public class CategoryService : BaseService, ICategoryService
    {
        private readonly ICategoryRepository _categoryRepository;
        public CategoryService(ICategoryRepository categoryRepository,
                                INotificador notificador) : base(notificador)
        {
            _categoryRepository = categoryRepository;
        }

        public async Task<bool> Adicionar(Category category)
        {
            if (!ExecutarValidacao(new CategoryValidation(), category)) return false;
            if (_categoryRepository.Buscar(c => c.Name == category.Name).Result.Any())
            {
                Notificar("Já existe uma categoria com o nome informado.");
                return false;
            }

            await _categoryRepository.Adicionar(category);

            return true;
        }

        public void Dispose()
        {
            _categoryRepository?.Dispose();
        }

        public async Task<bool> Remover(Guid id)
        {
            if (_categoryRepository.GetCategoryProducts(id).Result.Products.Any())
            {
                Notificar("A categoria possui produtos cadastrados");
                return false;
            }
            await _categoryRepository.Remover(id);
            return true;
        }

        public async Task<bool> Atualizar(Category category)
        {
            if (!ExecutarValidacao(new CategoryValidation(), category)) return false;

            if(_categoryRepository.Buscar(c => c.Name == category.Name && c.Id != category.Id).Result.Any())
            {
                Notificar("Já existe uma categoria com o nome informado.");
            }

            await _categoryRepository.Atualizar(category);
            return true;
        }
    }
}

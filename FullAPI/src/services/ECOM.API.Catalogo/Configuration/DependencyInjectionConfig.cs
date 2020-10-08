using ECOM.API.Catalogo.Data;
using ECOM.API.Catalogo.Data.Repository;
using ECOM.API.Catalogo.Models;
using ECOM.Core.Mediator;
using Microsoft.Extensions.DependencyInjection;

namespace ECOM.API.Catalogo.Configuration
{
    public static class DependencyInjectionConfig
    {
        public static void RegisterServices(this IServiceCollection services)
        {
            services.AddScoped<IProdutoRepository, ProdutoRepository>();
            services.AddScoped<ICategoryRepository, CategoryRepository>();
            services.AddScoped<IAssociatedProductsRepository, AssociatedProductsRepository>();
            services.AddScoped<CatalogoContext>();

            services.AddScoped<IMediatorHandler, MediatorHandler>();

        }
    }
}

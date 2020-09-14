using ECOM.Business.Interfaces;
using ECOM.Business.Notificacoes;
using ECOM.Business.Services;
using ECOM.Data.Context;
using ECOM.Data.Repository;
using Microsoft.Extensions.DependencyInjection;

namespace ECOM.API.Configuration
{
    public static class DependencyInjectionConfig
    {
        public static IServiceCollection ResolveDependencies(this IServiceCollection services)
        {
            services.AddScoped<InitialDbContext>();
            services.AddScoped<IProductRepository, ProductRepository>();
            services.AddScoped<IProductService, ProductService>();

            services.AddScoped<INotificador, Notificador>();

            services.AddScoped<ICategoryRepository, CategoryRepository>();
            services.AddScoped<ICategoryService, CategoryService>();

            services.AddScoped<IAssociatedProductsRepository, AssociatedProductsRepository>();
            services.AddScoped<IAssociatedProductsService, AssociatedProductsService>();

            return services;
        }
    }
}

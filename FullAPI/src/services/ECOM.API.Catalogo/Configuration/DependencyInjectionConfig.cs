using ECOM.Business.Interfaces;
using ECOM.Business.Notificacoes;
using ECOM.Business.Services;
using ECOM.Data.Context;
using ECOM.Data.Repository;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Options;
using Swashbuckle.AspNetCore.SwaggerGen;

namespace ECOM.API.Products.Configuration
{
    public static class DependencyInjectionConfig
    {
        public static void RegisterServices(this IServiceCollection services)
        {
            services.AddScoped<InitialDbContext>();
            services.AddScoped<IProductRepository, ProductRepository>();
            services.AddScoped<IProductService, ProductService>();

            services.AddScoped<INotificador, Notificador>();

            services.AddScoped<ICategoryRepository, CategoryRepository>();
            services.AddScoped<ICategoryService, CategoryService>();

            services.AddScoped<IAssociatedProductsRepository, AssociatedProductsRepository>();
            services.AddScoped<IAssociatedProductsService, AssociatedProductsService>();

            services.AddTransient<IConfigureOptions<SwaggerGenOptions>, ConfigureSwaggerOptions>();
        }
    }
}

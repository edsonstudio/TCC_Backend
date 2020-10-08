using Microsoft.Extensions.DependencyInjection;

namespace ECOM.API.Catalogo.Configuration
{
    public static class DependencyInjectionConfig
    {
        public static void RegisterServices(this IServiceCollection services)
        {
            //services.AddScoped<IProdutoRepository, ProdutoRepository>();
            //services.AddScoped<CatalogoContext>();
        }
    }
}

using ECOM.Core.Mediator;
using ECOM.Pedidos.Domain.Vouchers;
using ECOM.Pedidos.Infra.Data;
using ECOM.Pedidos.Infra.Data.Repository;
using ECOM.WebAPI.Core.Usuario;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Options;
using Swashbuckle.AspNetCore.SwaggerGen;

namespace ECOM.API.Pedidos.Configuration
{
    public static class DependencyInjectionConfig
    {
        public static void RegisterServices(this IServiceCollection services)
        {
            services.AddScoped<PedidosContext>();
            services.AddScoped<IMediatorHandler, MediatorHandler>();
            services.AddScoped<IVoucherRepository, VoucherRepository>();

            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
            services.AddScoped<IAspNetUser, AspNetUser>();

            services.AddTransient<IConfigureOptions<SwaggerGenOptions>, ConfigureSwaggerOptions>();
        }
    }
}

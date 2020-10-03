using ECOM.API.Payment.CardAntiCorruption;
using ECOM.API.Payment.Data;
using ECOM.API.Payment.Data.Repository;
using ECOM.API.Payment.Facade;
using ECOM.API.Payment.Models;
using ECOM.API.Payment.Services;
using ECOM.WebAPI.Core.Usuario;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;

namespace ECOM.API.Payment.Configuration
{
    public static class DependencyInjectionConfig
    {
        public static void RegisterServices(this IServiceCollection services)
        {
            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
            services.AddScoped<IAspNetUser, AspNetUser>();

            services.AddScoped<IPagamentoService, PagamentoService>();
            services.AddScoped<IPagamentoFacade, PagamentoCartaoCreditoFacade>();

            services.AddScoped<IPagamentoRepository, PagamentoRepository>();
            services.AddScoped<PagamentosContext>();
        }
    }
}

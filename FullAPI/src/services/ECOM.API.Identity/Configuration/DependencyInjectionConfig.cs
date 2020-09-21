using ECOM.API.Identity.Extensions;
using ECOM.API.Identity.Interfaces;
using ECOM.API.Identity.Notificacoes;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.DependencyInjection;

namespace ECOM.API.Identity.Configuration
{
    public static class DependencyInjectionConfig
    {
        public static IServiceCollection AuthResolveDependencies(this IServiceCollection services)
        {

            services.AddScoped<INotificador, Notificador>();
            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
            services.AddScoped<IUser, AspNetUser>();
            return services;
        }
    }
}

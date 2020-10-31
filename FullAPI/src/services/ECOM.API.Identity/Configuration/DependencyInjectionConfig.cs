using ECOM.API.Identity.AvatarWriterr;
using ECOM.API.Identity.AvatarWriterr.Interface;
using ECOM.API.Identity.Extensions;
using ECOM.API.Identity.Handler;
using ECOM.API.Identity.Hubs;
using ECOM.API.Identity.Hubs.ConnectionMapper;
using ECOM.API.Identity.Hubs.Interfaces;
using ECOM.API.Identity.Interfaces;
using ECOM.API.Identity.Notificacoes;
using ECOM.API.Identity.Services;
using ECOM.API.Identity.Services.Helpers;
using ECOM.API.Identity.Services.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.SignalR;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Options;
using Swashbuckle.AspNetCore.SwaggerGen;

namespace ECOM.API.Identity.Configuration
{
    public static class DependencyInjectionConfig
    {
        public static void AuthResolveDependencies(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddScoped<INotificador, Notificador>();
            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
            services.AddScoped<IUser, AspNetUser>();

            services.AddTransient<IConfigureOptions<SwaggerGenOptions>, ConfigureSwaggerOptions>();

            ////------------substituir pela padrão da aplicacao-----------
            //services.AddSingleton<IAuthService>
            //    (
            //        new AuthService(
            //            configuration.GetValue<string>("JWTSecretKey"),
            //            configuration.GetValue<int>("JWTLifespan")

            //            )
            //    );
            ////----------------------------------------------------------

            services.AddSingleton<IUserIdProvider, NameUserIdProvider>();
            services.AddTransient<IUserService, UserService>();
            services.AddTransient<IMessageService, MessageService>();
            services.AddTransient<IThreadService, ThreadService>();
            services.AddTransient<IMappingService, MappingService>();
            services.AddTransient<IValidator, Validator>();
            services.AddSingleton(typeof(IConnectionMapping<string>), typeof(ConnectionMapping<string>));
            services.AddTransient<IImageHandler, ImageHandler>();
            services.AddTransient<IAvatarWriter, AvatarWriter>();
        }
    }
}

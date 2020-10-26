using ECOM.API.Chat.Handler;
using ECOM.WebChat.AvatarWriter;
using ECOM.WebChat.AvatarWriter.Interface;
using ECOM.WebChat.Connection;
using ECOM.WebChat.Hubs;
using ECOM.WebChat.Hubs.ConnectionMapper;
using ECOM.WebChat.Hubs.Interfaces;
using ECOM.WebChat.Services;
using ECOM.WebChat.Services.Helpers;
using ECOM.WebChat.Services.Interfaces;
using Microsoft.AspNetCore.SignalR;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Options;
using Swashbuckle.AspNetCore.SwaggerGen;

namespace ECOM.API.Chat.Configuration
{
    public static class DependencyInjectionConfig
    {
        public static void RegisterServices(this IServiceCollection services, IConfiguration configuration)
        {

            services.AddScoped<WebChatContext>();

            services.AddSingleton<IAuthService>
                (
                    new AuthService(
                        configuration.GetValue<string>("JWTSecretKey"),
                        configuration.GetValue<int>("JWTLifespan")

                        )
                );
            services.AddSingleton<IUserIdProvider, NameUserIdProvider>();
            services.AddTransient<IUserService, UserService>();
            services.AddTransient<IMessageService, MessageService>();
            services.AddTransient<IThreadService, ThreadService>();
            services.AddTransient<IMappingService, MappingService>();
            services.AddTransient<IValidator, Validator>();
            services.AddSingleton(typeof(IConnectionMapping<string>), typeof(ConnectionMapping<string>));
            services.AddTransient<IImageHandler, ImageHandler>();
            services.AddTransient<IAvatarWriter, AvatarWriter>();

            //services.AddTransient<IConfigureOptions<SwaggerGenOptions>, ConfigureSwaggerOptions>();
        }
    }
}

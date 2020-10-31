using ECOM.API.Chat.Handler;
using ECOM.WebChat.AvatarWriter2;
using ECOM.WebChat.AvatarWriter2.Interface;
using ECOM.WebChat.Connection2;
using ECOM.WebChat.Hubs2;
using ECOM.WebChat.Hubs2.ConnectionMapper;
using ECOM.WebChat.Hubs2.Interfaces;
using ECOM.WebChat.Services2;
using ECOM.WebChat.Services2.Helpers;
using ECOM.WebChat.Services2.Interfaces;
using Microsoft.AspNetCore.SignalR;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

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

        }
    }
}

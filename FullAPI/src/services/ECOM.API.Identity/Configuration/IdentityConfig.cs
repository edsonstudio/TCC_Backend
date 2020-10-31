using ECOM.API.Identity.Data;
using ECOM.API.Identity.Extensions;
using ECOM.API.Identity.Models;
using ECOM.WebAPI.Core.Identidade;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace ECOM.API.Identity.Configuration

{
    public static class IdentityConfig
    {
        public static IServiceCollection AddIdentityConfiguration(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddDbContext<ApplicationDbContext>(options =>
                options.UseSqlServer(configuration.GetConnectionString("DefaultConnection")));

            services.AddDefaultIdentity<User>() //Alterado para customizar
                .AddRoles<IdentityRole>()
                .AddErrorDescriber<IdentityMensagensPortugues>() //Sobrescrita das mensagens de erro para a linguagem pt-BR
                .AddEntityFrameworkStores<ApplicationDbContext>()
                .AddDefaultTokenProviders();

            services.AddJwtConfiguration(configuration);

            return services;
        }
    }
}



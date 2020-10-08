using ECOM.API.Pedidos.Application.Commands;
using ECOM.API.Pedidos.Application.Events;
using ECOM.API.Pedidos.Application.Queries;
using ECOM.Core.Mediator;
using ECOM.Pedidos.Domain.Pedidos;
using ECOM.Pedidos.Domain.Vouchers;
using ECOM.Pedidos.Infra.Data;
using ECOM.Pedidos.Infra.Data.Repository;
using ECOM.WebAPI.Core.Usuario;
using FluentValidation.Results;
using MediatR;
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
            // API
            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();
            services.AddScoped<IAspNetUser, AspNetUser>();

            // Commands
            services.AddScoped<IRequestHandler<AdicionarPedidoCommand, ValidationResult>, PedidoCommandHandler>();

            // Events
            services.AddScoped<INotificationHandler<PedidoRealizadoEvent>, PedidoEventHandler>();

            // Application
            services.AddScoped<IMediatorHandler, MediatorHandler>();
            services.AddScoped<IVoucherQueries, VoucherQueries>();
            services.AddScoped<IPedidoQueries, PedidoQueries>();

            // Data
            services.AddScoped<IVoucherRepository, VoucherRepository>();
            services.AddScoped<IPedidoRepository, PedidoRepository>();
            services.AddScoped<PedidosContext>();

            services.AddTransient<IConfigureOptions<SwaggerGenOptions>, ConfigureSwaggerOptions>();
        }
    }
}

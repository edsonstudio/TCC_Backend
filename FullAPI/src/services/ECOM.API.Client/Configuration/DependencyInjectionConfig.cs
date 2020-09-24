//using FluentValidation.Results;
//using MediatR;
using Microsoft.Extensions.DependencyInjection;
//using NSE.Clientes.API.Application.Commands;
//using NSE.Clientes.API.Application.Events;
using ECOM.API.Client.Data;
//using NSE.Clientes.API.Data.Repository;
using ECOM.API.Client.Models;
//using NSE.Core.Mediator;

namespace ECOM.API.Client.Configuration
{
    public static class DependencyInjectionConfig
    {
        public static void RegisterServices(this IServiceCollection services)
        {
            /*
            services.AddScoped<IMediatorHandler, MediatorHandler>();
            services.AddScoped<IRequestHandler<RegistrarClienteCommand, ValidationResult>, ClienteCommandHandler>();

            services.AddScoped<INotificationHandler<ClienteRegistradoEvent>, ClienteEventHandler>();

            services.AddScoped<IClienteRepository, ClienteRepository>();*/
            services.AddScoped<ClientsContext>();
        }
    }
}
using MediatR;
using Microsoft.Extensions.DependencyInjection;
using ECOM.API.Client.Application.Commands;
//using ECOM.API.Client.Application.Events;
using ECOM.API.Client.Data;
//using NSE.Clientes.API.Data.Repository;
using ECOM.API.Client.Models;
using ECOM.Core.Mediator;
using FluentValidation.Results;
//using NSE.Core.Mediator;

namespace ECOM.API.Client.Configuration
{
    public static class DependencyInjectionConfig
    {
        public static void RegisterServices(this IServiceCollection services)
        {
            
            services.AddScoped<IMediatorHandler, MediatorHandler>();
            
            services.AddScoped<IRequestHandler<RegisterClientCommand, ValidationResult>, ClientCommandHandler>();
            /*
            services.AddScoped<INotificationHandler<ClienteRegistradoEvent>, ClienteEventHandler>();

            services.AddScoped<IClienteRepository, ClienteRepository>();*/
            //services.AddScoped<ClientsContext>();
        }
    }
}
using ECOM.API.Payment.Models;
using ECOM.Core.Messages.Integration;
using ECOM.MessageBus;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace ECOM.API.Payment.Services
{
    public class PagamentoIntegrationHandler : BackgroundService
    {
        private readonly IMessageBus _bus;
        private readonly IServiceProvider _serviceProvider;

        public PagamentoIntegrationHandler(IMessageBus bus, IServiceProvider serviceProvider)
        {
            _bus = bus;
            _serviceProvider = serviceProvider;
        }

        private void SetResponder()
        {
            _bus.RespondAsync<PedidoIniciadoIntegrationEvent, ResponseMessage>(async request =>
                await AutorizarPagamento(request));
        }


        protected override Task ExecuteAsync(CancellationToken stoppingToken)
        {
            SetResponder();
            return Task.CompletedTask;
        }

        private async Task<ResponseMessage> AutorizarPagamento(PedidoIniciadoIntegrationEvent message)
        {
            ResponseMessage response;

            using (var scope = _serviceProvider.CreateScope())
            {
                var pagamentoService = scope.ServiceProvider.GetRequiredService<IPagamentoService>();

                var pagamento = new Pagamento
                {
                    PedidoId = message.PedidoId,
                    TipoPagamento = (TipoPagamento)message.TipoPagamento,
                    Valor = message.Valor,
                    CartaoCredito = 
                    new CartaoCredito(message.NomeCartao, message.NumeroCartao, message.MesAnoVencimento, message.CVV)
                };

                response = await pagamentoService.AutorizarPagamento(pagamento);

            }

            return response;
        }

    }
}

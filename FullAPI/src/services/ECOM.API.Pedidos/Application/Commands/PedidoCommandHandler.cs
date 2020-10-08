using ECOM.Core.Messages;
using FluentValidation.Results;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace ECOM.API.Pedidos.Application.Commands
{
    public class PedidoCommandHandler : CommandHandler,
        IRequestHandler<AdicionarPedidoCommand, ValidationResult>
    {
        public Task<ValidationResult> Handle(AdicionarPedidoCommand message, CancellationToken cancellationToken)
        {
            // Validação do comando

            // Mapear Pedido

            // Aplicar voucher se houver

            // Validar pedido

            // Processar pagamento

            // Se pagamento tudo ok!

            // Adicionar Evento

            // Adicionar Pedido Repositorio

            // Persistir dados de pedido e voucher
        }
    }
}

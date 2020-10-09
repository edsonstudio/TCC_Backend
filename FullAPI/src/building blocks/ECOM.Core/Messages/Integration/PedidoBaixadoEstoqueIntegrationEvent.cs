using System;

namespace ECOM.Core.Messages.Integration
{
    public class PedidoBaixadoEstoqueIntegrationEvent : IntegrationEvent
    {
        public Guid ClientId { get; private set; }
        public Guid PedidoId { get; private set; }

        public PedidoBaixadoEstoqueIntegrationEvent(Guid clientId, Guid pedidoId)
        {
            ClientId = clientId;
            PedidoId = pedidoId;
        }
    }
}

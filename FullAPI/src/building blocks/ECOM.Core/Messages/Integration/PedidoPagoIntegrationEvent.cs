using System;

namespace ECOM.Core.Messages.Integration
{
    public class PedidoPagoIntegrationEvent : IntegrationEvent
    {
        public Guid ClientId { get; private set; }
        public Guid PedidoId { get; private set; }

        public PedidoPagoIntegrationEvent(Guid clientId, Guid pedidoId)
        {
            ClientId = clientId;
            PedidoId = pedidoId;
        }
    }
}

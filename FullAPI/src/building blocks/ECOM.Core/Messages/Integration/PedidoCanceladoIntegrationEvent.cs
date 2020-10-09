using System;

namespace ECOM.Core.Messages.Integration
{
    public class PedidoCanceladoIntegrationEvent : IntegrationEvent
    {
        public Guid ClientId { get; private set; }
        public Guid PedidoId { get; private set; }

        public PedidoCanceladoIntegrationEvent(Guid clientId, Guid pedidoId)
        {
            ClientId = clientId;
            PedidoId = pedidoId;
        }
    }
}

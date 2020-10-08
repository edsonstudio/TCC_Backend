using System;

namespace ECOM.Core.Messages.Integration
{
    public class PedidoRealizadoIntegrationEvent : IntegrationEvent
    {
        public Guid ClientId { get; private set; }

        public PedidoRealizadoIntegrationEvent(Guid clientId)
        {
            ClientId = clientId;
        }
    }
}

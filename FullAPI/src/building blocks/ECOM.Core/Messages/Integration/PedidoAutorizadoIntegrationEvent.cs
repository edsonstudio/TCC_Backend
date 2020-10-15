using System;
using System.Collections.Generic;

namespace ECOM.Core.Messages.Integration
{
    public class PedidoAutorizadoIntegrationEvent : IntegrationEvent
    {
        public Guid ClientId { get; private set; }
        public Guid PedidoId { get; private set; }
        public IDictionary<Guid, int> Items { get; private set; }

        public PedidoAutorizadoIntegrationEvent(Guid clientId, Guid pedidoId, IDictionary<Guid, int> items)
        {
            ClientId = clientId;
            PedidoId = pedidoId;
            Items = items;
        }
    }
}

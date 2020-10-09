using System;
using System.Collections.Generic;

namespace ECOM.Core.Messages.Integration
{
    public class PedidoAutorizadoIntegrationEvent : IntegrationEvent
    {
        public Guid ClientId { get; private set; }
        public Guid PedidoId { get; private set; }
        public IDictionary<Guid, int> Itens { get; private set; }

        public PedidoAutorizadoIntegrationEvent(Guid clientId, Guid pedidoId, IDictionary<Guid, int> itens)
        {
            ClientId = clientId;
            PedidoId = pedidoId;
            Itens = itens;
        }
    }
}

using ECOM.Core.Data;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ECOM.Pedidos.Domain.Pedidos
{
    public interface IPedidoRepository : IRepository<Pedido>
    {
        Task<Pedido> ObterPorId(Guid id);
        Task<IEnumerable<Pedido>> ObterListaPorClienteId(Guid clientId);
        void Adicionar(Pedido pedido);
        void Atualizar(Pedido pedido);

        /* Pedido Item */

        Task<PedidoItem> ObterItemPorId(Guid id);
        Task<PedidoItem> ObterItemPorPedido(Guid pedidoId, Guid productId);
    }
}

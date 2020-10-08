using ECOM.Pedidos.Domain.Pedidos;
using System;

namespace ECOM.API.Pedidos.Application.DTO
{
    public class PedidoItemDTO
    {
        public Guid PedidoId { get; set; }
        public Guid ProductId { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string Image { get; set; }
        public int Amount { get; set; }

        public static PedidoItem ParaPedidoItem(PedidoItemDTO pedidoItemDTO)
        {
            return new PedidoItem(pedidoItemDTO.ProductId, pedidoItemDTO.Name, pedidoItemDTO.Amount,
                pedidoItemDTO.Price, pedidoItemDTO.Image);
        }
    }
}

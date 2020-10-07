using ECOM.Core.DomainObjects;
using System;

namespace ECOM.Pedidos.Domain.Pedidos
{
    public class PedidoItem : Entity
    {
        public Guid PedidoId { get; private set; }
        public Guid ProductId { get; private set; }
        public string ProductName { get; private set; }
        public int Amount { get; private set; }
        public decimal ValorUnitario { get; private set; }
        public string ProductImage { get; set; }

        //EF Rel.
        public Pedido Pedido { get; set; }

        public PedidoItem(Guid productId, string productName, int amount, 
            decimal valorUnitario, string productImage = null)
        {
            ProductId = productId;
            ProductName = productName;
            Amount = amount;
            ValorUnitario = valorUnitario;
            ProductImage = productImage;
        }

        // EF Ctor
        protected PedidoItem() { }

        internal decimal CalcularValor()
        {
            return Amount * ValorUnitario;
        }
    }
}

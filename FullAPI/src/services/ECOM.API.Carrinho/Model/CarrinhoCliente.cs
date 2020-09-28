using System;
using System.Collections.Generic;

namespace ECOM.API.Carrinho.Model
{
    public class CarrinhoCliente
    {
        public Guid Id { get; set; }
        public Guid ClientId { get; set; }
        public decimal TotalPrice { get; set; }
        public List<CarrinhoItem> Items { get; set; } = new List<CarrinhoItem>();

        public CarrinhoCliente(Guid clientId)
        {
            Id = Guid.NewGuid();
            ClientId = clientId;
        }

        public CarrinhoCliente(){}
    }
}

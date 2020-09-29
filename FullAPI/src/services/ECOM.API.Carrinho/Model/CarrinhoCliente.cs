using System;
using System.Collections.Generic;
using System.Linq;

namespace ECOM.API.Carrinho.Model
{
    public class CarrinhoCliente
    {
        internal const int MAX_QUANTIDADE_ITEM = 5;
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

        internal void CalcularValorCarrinho()
        {
            TotalPrice = Items.Sum(p => p.CalcularValor());
        }

        internal bool CarrinhoItemExistente(CarrinhoItem item)
        {
            return Items.Any(p => p.ProductId == item.ProductId);
        }

        internal CarrinhoItem ObterPorProdutoId(Guid produtoId)
        {
            return Items.FirstOrDefault(p => p.ProductId == produtoId);
        }

        internal void AdicionarItem(CarrinhoItem item)
        {
            if (!item.EhValido()) return;

            item.AssociarCarrinho(Id);

            if (CarrinhoItemExistente(item))
            {
                var itemExistente = ObterPorProdutoId(item.ProductId);
                itemExistente.AdicionarUnidades(item.Amount);

                item = itemExistente;
                Items.Remove(itemExistente);
            }

            Items.Add(item);
            CalcularValorCarrinho();
        }
    }
}

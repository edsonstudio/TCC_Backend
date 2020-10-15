using System;

namespace ECOM.Bff.Compras.Models
{
    public class ItemProdutoDTO
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string Image { get; set; }
        public int Amount { get; set; }
    }
}

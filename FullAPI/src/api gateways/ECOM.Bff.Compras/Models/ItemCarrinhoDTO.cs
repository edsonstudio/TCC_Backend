using System;

namespace ECOM.Bff.Compras.Models
{
    public class ItemCarrinhoDTO
    {
        public Guid ProductId { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string Image { get; set; }
        public int Amount { get; set; }
    }
}

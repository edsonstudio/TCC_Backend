using System;
using System.ComponentModel.DataAnnotations.Schema;
using ECOM.Core.DomainObjects;

namespace ECOM.Business.Models
{
    public class Order : Entity
    {
        public string Status { get; set; }

        public Guid ClientId { get; set; }
        public Guid OrderItemsId { get; set; }

        public DateTime Date { get; set; }

        public int Amount { get; set; }

        [Column(TypeName = "decimal(9,2)")]
        public decimal Price { get; set; }
        public OrderItems OrderItems { get; set; }

        public Client Client { get; set; }
    }
}

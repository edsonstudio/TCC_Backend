using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.API.Models
{
    public class OrderItems : Entity
    {
        public Product ProductId { get; set; }

        public int ProductAmount { get; set; }

        public decimal SalePrice { get; set; }

        public Order OrderId { get; set; }
    }
}

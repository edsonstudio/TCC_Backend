using ECOM.Business.Models;
using System;
using System.Collections.Generic;

namespace ECOM.API.Models
{
    public class Product : Entity
    {
        public Guid CategoryId { get; set; }

        public string Name { get; set; }

        public bool Active { get; set; } //Status

        public string Description { get; set; }

        public string Model { get; set; }

        public string Brand { get; set; }

        public decimal Price { get; set; }

        public int Amount { get; set; }

        public string Image { get; set; }

        public DateTime RegisterDate { get; set; } //Data de cadastro do produto

        /* EF Relations */
        public Category Category { get; set; }
        public IEnumerable<AssociatedProducts> AssociatedProducts { get; set; }

    }
}

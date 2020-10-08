using ECOM.Core.DomainObjects;
using System;
using System.Collections.Generic;

namespace ECOM.API.Catalogo.Models
{
    public class Product : Entity, IAggregateRoot
    {
        public string Name { get; set; }

        public bool Active { get; set; }

        public string Description { get; set; }

        public string Model { get; set; }

        public string Brand { get; set; }

        public decimal Price { get; set; }

        public int Amount { get; set; }

        public string Image { get; set; }

        public DateTime RegisterDate { get; set; }
        public Guid CategoryId { get; set; }

        /* EF Relations */
        public Category Category { get; set; }
        public IEnumerable<AssociatedProducts> AssociatedProducts { get; set; }

        // EF Constructor
        protected Product() { }

    }
}

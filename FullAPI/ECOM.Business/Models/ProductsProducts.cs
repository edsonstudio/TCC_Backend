using ECOM.API.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace ECOM.Business.Models
{
    public class ProductsProducts 

    {
        protected ProductsProducts()
        {
            Id = Guid.NewGuid();
        }

        [Column(TypeName = "varchar(36)")]
        [NotMapped]
        public Guid Id { get; set; }
        public Product ProductFather { get; set; }

        public Product ProductSon { get; set; }

        public IEnumerable<Product> Products { get; set; }
    }
}

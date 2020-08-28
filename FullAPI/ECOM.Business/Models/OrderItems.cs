using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace ECOM.API.Models
{
    public class OrderItems : Entity
    {

        [Required]
        public int ProductAmount { get; set; }

        [Required]
        [Column(TypeName = "decimal(9,2)")]
        public decimal SalePrice { get; set; }

        public IEnumerable<Product> Products { get; set; }

    }
}

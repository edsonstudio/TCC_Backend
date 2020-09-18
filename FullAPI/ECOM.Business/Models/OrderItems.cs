using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using ECOM.Core.DomainObjects;

namespace ECOM.Business.Models
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

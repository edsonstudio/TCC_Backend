using ECOM.API.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.API.ViewModels
{
    public class ProductsProductsViewModel
    {
        [Key]
        public Guid Id { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório")]
        public Product ProductFather { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório")]
        public IEnumerable<Product> ProductsSon { get; set; }
    }
}

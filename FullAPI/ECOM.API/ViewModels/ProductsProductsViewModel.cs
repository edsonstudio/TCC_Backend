using System;
using System.ComponentModel.DataAnnotations;

namespace ECOM.API.ViewModels
{
    public class ProductsProductsViewModel
    {
        [Key]
        public Guid Id { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório")]
        public ProductViewModel ProductSon { get; set; }
    }
}

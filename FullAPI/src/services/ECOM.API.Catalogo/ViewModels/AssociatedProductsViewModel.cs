using System;
using System.ComponentModel.DataAnnotations;

namespace ECOM.API.Products.ViewModels
{
    public class AssociatedProductsViewModel
    {
        [Key]
        public Guid Id { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório")]
        public ProductViewModel ProductFather { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório")]
        public ProductViewModel ProductSon { get; set; }

    }
}

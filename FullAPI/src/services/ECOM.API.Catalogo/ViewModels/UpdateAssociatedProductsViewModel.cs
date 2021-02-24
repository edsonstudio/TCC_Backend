using System;
using System.ComponentModel.DataAnnotations;

namespace ECOM.API.Products.ViewModels
{
    public class UpdateAssociatedProductsViewModel
    {
        [Key]
        public Guid Id { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório")]
        public Guid ProductFatherId { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório")]
        public Guid ProductSonId { get; set; }


    }
}

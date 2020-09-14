using ECOM.API.Models;
using System;
using System.ComponentModel.DataAnnotations;

namespace ECOM.API.ViewModels
{
    public class InsertAssociatedProductsViewModel
    {
        [Key]
        public Guid Id { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório")]
        public Guid ProductFatherId { get; set; }

        public virtual Product ProductFather { get; set; }

        [Required(ErrorMessage = "O campo {0} é obrigatório")]
        public Guid ProductSonId { get; set; }
        public virtual Product ProductSon { get; set; }


    }
}

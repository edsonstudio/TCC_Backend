using ECOM.API.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.API.ViewModels
{
    public class ProductViewModel
    {
        [Key]
        public Guid Id { get; set; }

        public Guid CategoryId { get; set; }

        //public Guid ProductsProductsId { get; set; }

        //[Required(ErrorMessage = "O campo {0} é obrigatório")]
        //[StringLength(200, ErrorMessage = "O campo {0} precisa ter entre {2} e {1} caracteres", MinimumLength = 2)]
        public string Name { get; set; }

        public bool Active { get; set; } //Status

        //[Required(ErrorMessage = "O campo {0} é obrigatório")]
        //[StringLength(1000, ErrorMessage = "O campo {0} precisa ter entre {2} e {1} caracteres", MinimumLength = 2)]
        public string Description { get; set; }

        //[Required(ErrorMessage = "O campo {0} é obrigatório")]
        //[StringLength(200, ErrorMessage = "O campo {0} precisa ter entre {2} e {1} caracteres", MinimumLength = 2)]
        public string Model { get; set; }

        //[Required(ErrorMessage = "O campo {0} é obrigatório")]
        //[StringLength(200, ErrorMessage = "O campo {0} precisa ter entre {2} e {1} caracteres", MinimumLength = 2)]
        public string Brand { get; set; }

        //[Required(ErrorMessage = "O campo {0} é obrigatório")]
        public decimal Price { get; set; }

        //[Required(ErrorMessage = "O campo {0} é obrigatório")]
        public int Amount { get; set; }

        public string Image { get; set; }

        public string ImageUpload { get; set; }

        [ScaffoldColumn(false)]
        public DateTime RegisterDate { get; set; } //Data de cadastro do produto

        [ScaffoldColumn(false)]
        public string CategoryName { get; set; }

        public IEnumerable<ProductsProductsViewModel> ProductsProducts { get; set; }

    }
}

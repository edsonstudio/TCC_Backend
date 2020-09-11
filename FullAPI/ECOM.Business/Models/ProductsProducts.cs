using ECOM.API.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace ECOM.Business.Models
{
    public class ProductsProducts : Entity

    {
        public Product ProductFather { get; set; }

        public Product ProductSon { get; set; }

        public IEnumerable<Product> Products { get; set; }
    }
}

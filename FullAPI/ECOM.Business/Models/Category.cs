using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.API.Models
{
    public class Category : Entity
    {
        public string Name { get; set; }

        /*EF Relation*/
        public IEnumerable<Product> Products { get; set; }
    }
}

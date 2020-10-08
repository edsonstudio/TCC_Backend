using ECOM.Core.DomainObjects;
using System.Collections.Generic;

namespace ECOM.API.Catalogo.Models
{
    public class Category : Entity
    {
        public string Name { get; set; }

        // EF Constructor
        protected Category() { }

        /*EF Relation*/
        public IEnumerable<Product> Products { get; set; }
    }
}

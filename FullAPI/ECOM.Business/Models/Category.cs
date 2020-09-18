using System.Collections.Generic;
using ECOM.Core.DomainObjects;

namespace ECOM.Business.Models
{
    public class Category : Entity
    {
        public string Name { get; set; }

        /*EF Relation*/
        public IEnumerable<Product> Products { get; set; }
    }
}

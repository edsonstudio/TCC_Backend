using System.Collections.Generic;
using ECOM.Core.DomainObjects;

namespace ECOM.Business.Models
{
    public class Category : Entity, IAggregateRoot
    {
        public string Name { get; private set; }

        public Category(string name)
        {
            Name = name;
        }

        // EF Ctor
        public Category() { }

        /*EF Relation*/
        public IEnumerable<Product> Products { get; set; }
    }
}

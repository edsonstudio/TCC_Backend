using ECOM.Core.DomainObjects;
using System.Collections.Generic;

namespace ECOM.API.Catalogo.Models
{
    public class Category : Entity, IAggregateRoot //Verificar a necessidade de ser IAggregateRoot
    {
        public string Name { get; set; }

        // EF Constructor
        protected Category() { }

        /*EF Relation*/
        public IEnumerable<Product> Products { get; set; }
    }
}

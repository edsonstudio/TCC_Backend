using ECOM.Core.DomainObjects;
using System;
using System.Collections.Generic;

namespace ECOM.API.Catalogo.Models
{
    public class Category : Entity, IAggregateRoot //Verificar a necessidade de ser IAggregateRoot
    {
        public string Name { get; private set; }

        public Category(Guid id, string name)
        {
            Id = id;
            Name = name;
        }

        // EF Constructor
        protected Category() { }

        /*EF Relation*/
        public IEnumerable<Product> Products { get; set; }
    }
}

using ECOM.Core.DomainObjects;
using System;

namespace ECOM.API.Catalogo.Models
{
    public class AssociatedProducts : Entity
    {
        public Guid ProductFatherId { get; set; }
        public virtual Product ProductFather { get; set; }
        

        public Guid ProductSonId { get; set; }
        public virtual Product ProductSon { get; set; }
        

        // EF Constructor
        protected AssociatedProducts() { }
    }
}

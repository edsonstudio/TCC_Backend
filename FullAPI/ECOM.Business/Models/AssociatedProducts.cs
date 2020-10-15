using System;
using ECOM.Core.DomainObjects;

namespace ECOM.Business.Models
{
    public class AssociatedProducts : Entity, IAggregateRoot
    {
        public Guid ProductFatherId { get; private set; }
        public virtual Product ProductFather { get; private set; }

        public Guid ProductSonId { get; private set; }
        public virtual Product ProductSon { get; private set; }

        // EF Ctor
        public AssociatedProducts() { }

        public AssociatedProducts(Guid productFatherId, Guid productSonId)
        {
            ProductFatherId = productFatherId;
            ProductSonId = productSonId;
        }
    }
}

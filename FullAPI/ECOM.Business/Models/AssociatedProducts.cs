using System;

namespace ECOM.Business.Models
{
    public class AssociatedProducts : Entity

    {
        public virtual Product ProductFather { get; set; }
        public Guid ProductFatherId { get; set; }

        public virtual Product ProductSon { get; set; }
        public Guid ProductSonId { get; set; }
    }
}

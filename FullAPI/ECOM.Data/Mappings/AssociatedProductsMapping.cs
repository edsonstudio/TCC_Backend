using ECOM.Business.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ECOM.Data.Mappings
{
    public class AssociatedProductsMapping : IEntityTypeConfiguration<AssociatedProducts>
    {
        public void Configure(EntityTypeBuilder<AssociatedProducts> builder)
        {
            //Composite primary key
            builder.HasKey(ap => ap.Id);

            //Properties
            builder.Property(ap => ap.ProductFatherId).IsRequired();
            builder.Property(ap => ap.ProductSonId).IsRequired();

            builder.ToTable("AssociatedProducts");



        }
    }
}

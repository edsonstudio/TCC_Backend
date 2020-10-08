using ECOM.API.Catalogo.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ECOM.API.Catalogo.Data.Mappings
{
    public class AssociatedProductsMapping : IEntityTypeConfiguration<AssociatedProducts>
    {
        public void Configure(EntityTypeBuilder<AssociatedProducts> builder)
        {
            builder.HasKey(ap => ap.Id);

            builder.Property(ap => ap.ProductFatherId).IsRequired().HasColumnType("varchar(36)");
            builder.Property(ap => ap.ProductSonId).IsRequired().HasColumnType("varchar(36)");

            builder.ToTable("AssociatedProducts");
        }
    }
}

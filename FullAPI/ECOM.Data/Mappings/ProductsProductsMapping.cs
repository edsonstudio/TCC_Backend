using ECOM.Business.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ECOM.Data.Mappings
{
    public class ProductsProductsMapping : IEntityTypeConfiguration<ProductsProducts>
    {
        public void Configure(EntityTypeBuilder<ProductsProducts> builder)
        {
            //Composite primary key
            builder.HasKey(pp => pp.Id);

            //Properties
            builder.Property(pp => pp.ProductFatherId).IsRequired().HasColumnType("varchar(36)");
            builder.Property(pp => pp.ProductSonId).IsRequired().HasColumnType("varchar(36)");

            builder.ToTable("ProductsProducts");



        }
    }
}

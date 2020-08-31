using ECOM.API.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ECOM.Data.Configuration
{
    public class ProductConfiguration : IEntityTypeConfiguration<Product>
    {
        public void Configure(EntityTypeBuilder<Product> builder)
        {
            builder.HasKey(p => p.Id);
            builder.Property(p => p.Name).IsRequired();
            builder.Property(p => p.Description).IsRequired();
            builder.Property(p => p.Model).IsRequired();
            builder.Property(p => p.Brand).IsRequired();
            builder.Property(p => p.Price).IsRequired().HasColumnType("decimal(9,2)");
            builder.Property(p => p.Amount).IsRequired();
            // estou terminando ...
        }
    }
}

using ECOM.API.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Text;

namespace ECOM.Data.Mappings
{
    public class ProductMapping : IEntityTypeConfiguration<Product>
    {
        public void Configure(EntityTypeBuilder<Product> builder)
        {
            builder.HasKey(p => p.Id);
            builder.Property(p => p.Name);//.IsRequired();
            builder.Property(p => p.Description);//.IsRequired();
            builder.Property(p => p.Model);//.IsRequired();
            builder.Property(p => p.Brand);//.IsRequired();
            builder.Property(p => p.Price).HasColumnType("decimal(9,2)");
            builder.Property(p => p.Amount);//.IsRequired();
            builder.Property(p => p.Image).HasColumnType("varbinary(MAX)");
            builder.Property(p => p.CategoryId).IsRequired().HasColumnType("varchar(36)");
            builder.Property(p => p.Active);//.IsRequired();
            builder.HasOne(p => p.Category);
            builder.HasMany(p => p.ProductsProducts).WithOne(y => y.ProductFather);
            //builder.HasMany(p => p.ProductsProducts).WithOne(y => y.ProductSon);

            builder.ToTable("Products");
        }
    }
}

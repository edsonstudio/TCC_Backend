using ECOM.Business.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using System.Text;

namespace ECOM.Data.Mappings
{
    public class ProductsProductsMapping : IEntityTypeConfiguration<ProductsProducts>
    {
        public void Configure(EntityTypeBuilder<ProductsProducts> builder)
        {
            //Composite primary key

            builder.HasKey(p => p.Id);
            //builder.Property(p => p.ProductFather);
            //builder.Property(p => p.ProductSon);

            // N: M => ProductsProducts : Product
            builder.HasMany(c => c.Products);
                

            //builder.HasMany(x => x.Products);
            builder.ToTable("ProductsProducts");



        }
    }
}

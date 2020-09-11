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

            //Composite foreign key

            //builder.HasMany(x => x.Products).WithOne(y => y.Id);
            builder.ToTable("ProductsProducts");



        }
    }
}

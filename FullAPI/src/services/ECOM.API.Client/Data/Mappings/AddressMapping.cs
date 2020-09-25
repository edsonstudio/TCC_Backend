using ECOM.API.Client.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ECOM.API.Client.Data.Mappings
{
    public class AddressMapping : IEntityTypeConfiguration<Address>
    {
        public void Configure(EntityTypeBuilder<Address> builder)
        {
            builder.HasKey(a => a.Id);
            // 04890-100
            builder.Property(a => a.CEP).IsRequired().HasColumnType("varchar(9)");
            builder.Property(a => a.Receiver).IsRequired().HasColumnType("varchar(100)");
            builder.Property(a => a.Country).IsRequired().HasColumnType("varchar(50)");
            builder.Property(a => a.Number).IsRequired().HasColumnType("varchar(10)");
            builder.Property(a => a.AddressName).IsRequired().HasColumnType("varchar(100)");
            builder.Property(a => a.Complement).HasColumnType("varchar(100)");
            builder.Property(a => a.State).IsRequired().HasColumnType("varchar(50)");
            builder.Property(a => a.City).IsRequired().HasColumnType("varchar(50)");
            builder.Property(a => a.Neighborhood).IsRequired().HasColumnType("varchar(50)");
            builder.Property(a => a.ReferencePoint).HasColumnType("varchar(100)");

            builder.ToTable("Adresses");

        }
    }
}

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
            builder.Property(a => a.CEP).IsRequired();
            builder.Property(a => a.Receiver).IsRequired();
            builder.Property(a => a.Country).IsRequired();
            builder.Property(a => a.Number).IsRequired();
            builder.Property(a => a.AddressName).IsRequired();
            builder.Property(a => a.Complement);
            builder.Property(a => a.State).IsRequired();
            builder.Property(a => a.City).IsRequired();
            builder.Property(a => a.Neighborhood).IsRequired();
            builder.Property(a => a.ReferencePoint);



        }
    }
}

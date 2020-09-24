using Microsoft.EntityFrameworkCore;
using System;
using ECOM.API.Client.Models;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace ECOM.API.Client.Data.Mappings
{
    public class ClientMapping : IEntityTypeConfiguration<ECOM.API.Client.Models.Client>
    {
        public void Configure(EntityTypeBuilder<Models.Client> builder)
        {
            builder.HasKey(c => c.Id);

            //builder.Property(c => c.Name).IsRequired().HasColumnType("varchar(200)");

            /*builder.OwnsOne(c => c.CPF, tf =>
            {
                tf.Property(c => c.Numero)
                .IsRequired()
                .HasMaxLength(Cpf.CpfMaxLength)
                .HasColumnName("Cpf")
                .HasColumnType($"varchar({Cpf.CpfMaxLength})");
            });*/

            //builder.Property(c => c.Phone).IsRequired().HasMaxLength(9).HasColumnType("varchar(9)");

            // 1 : N => Cliente : Endereco
            builder.HasMany(c => c.Address).WithOne(c => c.Client);

            //builder.ToTable("Clients");
        }
    }
}

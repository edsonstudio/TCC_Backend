﻿// <auto-generated />
using System;
using ECOM.Data.Context;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace ECOM.Data.Migrations
{
    [DbContext(typeof(InitialDbContext))]
    partial class InitialDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.7")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("ECOM.API.Models.Address", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("varchar(36)");

                    b.Property<string>("AddressName")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CEP")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("City")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ClientId")
                        .HasColumnType("varchar(36)");

                    b.Property<string>("Complement")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Country")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Neighborhood")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Number")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Receiver")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ReferencePoint")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("State")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("ClientId");

                    b.ToTable("Addresses");
                });

            modelBuilder.Entity("ECOM.API.Models.Category", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("varchar(36)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("varchar(20)");

                    b.HasKey("Id");

                    b.ToTable("Categories");
                });

            modelBuilder.Entity("ECOM.API.Models.Client", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("varchar(36)");

                    b.Property<string>("CPF")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Phone")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("varchar(36)");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("Clients");
                });

            modelBuilder.Entity("ECOM.API.Models.Order", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("varchar(36)");

                    b.Property<int>("Amount")
                        .HasColumnType("int");

                    b.Property<string>("ClientId")
                        .IsRequired()
                        .HasColumnType("varchar(36)");

                    b.Property<DateTime>("Date")
                        .HasColumnType("datetime2");

                    b.Property<string>("OrderItemsId")
                        .IsRequired()
                        .HasColumnType("varchar(36)");

                    b.Property<decimal>("Price")
                        .HasColumnType("decimal(9,2)");

                    b.Property<string>("Status")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.HasIndex("ClientId");

                    b.HasIndex("OrderItemsId");

                    b.ToTable("Orders");
                });

            modelBuilder.Entity("ECOM.API.Models.OrderItems", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("varchar(36)");

                    b.Property<int>("ProductAmount")
                        .HasColumnType("int");

                    b.Property<decimal>("SalePrice")
                        .HasColumnType("decimal(9,2)");

                    b.HasKey("Id");

                    b.ToTable("OrderItems");
                });

            modelBuilder.Entity("ECOM.API.Models.Payment", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("varchar(36)");

                    b.Property<string>("EStatus")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("EType")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Payments");
                });

            modelBuilder.Entity("ECOM.API.Models.Product", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("varchar(36)");

                    b.Property<bool>("Active")
                        .HasColumnType("bit");

                    b.Property<int>("Amount")
                        .HasColumnType("int");

                    b.Property<string>("Brand")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("CategoryId")
                        .IsRequired()
                        .HasColumnType("varchar(36)");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<byte[]>("Image")
                        .IsRequired()
                        .HasColumnType("varbinary(MAX)");

                    b.Property<string>("Model")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("OrderItemsId")
                        .HasColumnType("varchar(36)");

                    b.Property<decimal>("Price")
                        .HasColumnType("decimal(9,2)");

                    b.Property<DateTime>("RegisterDate")
                        .HasColumnType("datetime2");

                    b.HasKey("Id");

                    b.HasIndex("CategoryId");

                    b.HasIndex("OrderItemsId");

                    b.ToTable("Products");
                });

            modelBuilder.Entity("ECOM.API.Models.User", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("varchar(36)");

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Password")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Permission")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Users");
                });

            modelBuilder.Entity("ECOM.API.Models.Address", b =>
                {
                    b.HasOne("ECOM.API.Models.Client", null)
                        .WithMany("Address")
                        .HasForeignKey("ClientId");
                });

            modelBuilder.Entity("ECOM.API.Models.Client", b =>
                {
                    b.HasOne("ECOM.API.Models.User", "User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("ECOM.API.Models.Order", b =>
                {
                    b.HasOne("ECOM.API.Models.Client", "Client")
                        .WithMany()
                        .HasForeignKey("ClientId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("ECOM.API.Models.OrderItems", "OrderItems")
                        .WithMany()
                        .HasForeignKey("OrderItemsId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("ECOM.API.Models.Product", b =>
                {
                    b.HasOne("ECOM.API.Models.Category", "Category")
                        .WithMany("Products")
                        .HasForeignKey("CategoryId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("ECOM.API.Models.OrderItems", null)
                        .WithMany("Products")
                        .HasForeignKey("OrderItemsId");
                });
#pragma warning restore 612, 618
        }
    }
}

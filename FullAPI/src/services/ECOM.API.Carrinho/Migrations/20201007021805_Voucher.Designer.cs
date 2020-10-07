﻿// <auto-generated />
using System;
using ECOM.API.Carrinho.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace ECOM.API.Carrinho.Migrations
{
    [DbContext(typeof(CarrinhoContext))]
    [Migration("20201007021805_Voucher")]
    partial class Voucher
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.8")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("ECOM.API.Carrinho.Model.CarrinhoCliente", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<Guid>("ClientId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<decimal>("Desconto")
                        .HasColumnType("decimal(18,2)");

                    b.Property<decimal>("TotalPrice")
                        .HasColumnType("decimal(18,2)");

                    b.Property<bool>("VoucherUtilizado")
                        .HasColumnType("bit");

                    b.HasKey("Id");

                    b.HasIndex("ClientId")
                        .HasName("IDX_Cliente");

                    b.ToTable("CarrinhoCliente");
                });

            modelBuilder.Entity("ECOM.API.Carrinho.Model.CarrinhoItem", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uniqueidentifier");

                    b.Property<int>("Amount")
                        .HasColumnType("int");

                    b.Property<Guid>("CarrinhoId")
                        .HasColumnType("uniqueidentifier");

                    b.Property<string>("Image")
                        .HasColumnType("varchar(100)");

                    b.Property<string>("Name")
                        .HasColumnType("varchar(100)");

                    b.Property<decimal>("Price")
                        .HasColumnType("decimal(18,2)");

                    b.Property<Guid>("ProductId")
                        .HasColumnType("uniqueidentifier");

                    b.HasKey("Id");

                    b.HasIndex("CarrinhoId");

                    b.ToTable("CarrinhoItens");
                });

            modelBuilder.Entity("ECOM.API.Carrinho.Model.CarrinhoCliente", b =>
                {
                    b.OwnsOne("ECOM.API.Carrinho.Model.Voucher", "Voucher", b1 =>
                        {
                            b1.Property<Guid>("CarrinhoClienteId")
                                .HasColumnType("uniqueidentifier");

                            b1.Property<string>("Codigo")
                                .HasColumnName("VoucherCodigo")
                                .HasColumnType("varchar(50)");

                            b1.Property<decimal?>("Percentual")
                                .HasColumnName("Percentual")
                                .HasColumnType("decimal(18,2)");

                            b1.Property<int>("TipoDesconto")
                                .HasColumnName("TipoDesconto")
                                .HasColumnType("int");

                            b1.Property<decimal?>("ValorDesconto")
                                .HasColumnName("ValorDesconto")
                                .HasColumnType("decimal(18,2)");

                            b1.HasKey("CarrinhoClienteId");

                            b1.ToTable("CarrinhoCliente");

                            b1.WithOwner()
                                .HasForeignKey("CarrinhoClienteId");
                        });
                });

            modelBuilder.Entity("ECOM.API.Carrinho.Model.CarrinhoItem", b =>
                {
                    b.HasOne("ECOM.API.Carrinho.Model.CarrinhoCliente", "CarrinhoCliente")
                        .WithMany("Items")
                        .HasForeignKey("CarrinhoId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
#pragma warning restore 612, 618
        }
    }
}

using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace ECOM.Data.Migrations
{
    public partial class TesteAssociarxaxa : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Categories",
                columns: table => new
                {
                    Id = table.Column<string>(type: "varchar(36)", nullable: false),
                    Name = table.Column<string>(type: "varchar(20)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Categories", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Products",
                columns: table => new
                {
                    Id = table.Column<string>(type: "varchar(36)", nullable: false),
                    CategoryId = table.Column<string>(type: "varchar(36)", nullable: false),
                    Name = table.Column<string>(type: "varchar(100)", nullable: true),
                    Active = table.Column<bool>(nullable: false),
                    Description = table.Column<string>(type: "varchar(100)", nullable: true),
                    Model = table.Column<string>(type: "varchar(100)", nullable: true),
                    Brand = table.Column<string>(type: "varchar(100)", nullable: true),
                    Price = table.Column<decimal>(type: "decimal(9,2)", nullable: false),
                    Amount = table.Column<int>(nullable: false),
                    Image = table.Column<byte[]>(type: "varbinary(MAX)", nullable: true),
                    RegisterDate = table.Column<DateTime>(nullable: false),
                    ProductsProductsId = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Products", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Products_Categories_CategoryId",
                        column: x => x.CategoryId,
                        principalTable: "Categories",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "ProductsProducts",
                columns: table => new
                {
                    Id = table.Column<string>(type: "varchar(36)", nullable: false),
                    ProductFatherId = table.Column<string>(nullable: true),
                    ProductSonId = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ProductsProducts", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ProductsProducts_Products_ProductFatherId",
                        column: x => x.ProductFatherId,
                        principalTable: "Products",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_ProductsProducts_Products_ProductSonId",
                        column: x => x.ProductSonId,
                        principalTable: "Products",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Products_CategoryId",
                table: "Products",
                column: "CategoryId");

            migrationBuilder.CreateIndex(
                name: "IX_Products_ProductsProductsId",
                table: "Products",
                column: "ProductsProductsId");

            migrationBuilder.CreateIndex(
                name: "IX_ProductsProducts_ProductFatherId",
                table: "ProductsProducts",
                column: "ProductFatherId");

            migrationBuilder.CreateIndex(
                name: "IX_ProductsProducts_ProductSonId",
                table: "ProductsProducts",
                column: "ProductSonId");

            migrationBuilder.AddForeignKey(
                name: "FK_Products_ProductsProducts_ProductsProductsId",
                table: "Products",
                column: "ProductsProductsId",
                principalTable: "ProductsProducts",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Products_Categories_CategoryId",
                table: "Products");

            migrationBuilder.DropForeignKey(
                name: "FK_Products_ProductsProducts_ProductsProductsId",
                table: "Products");

            migrationBuilder.DropTable(
                name: "Categories");

            migrationBuilder.DropTable(
                name: "ProductsProducts");

            migrationBuilder.DropTable(
                name: "Products");
        }
    }
}

using Microsoft.EntityFrameworkCore.Migrations;

namespace ECOM.API.Carrinho.Migrations
{
    public partial class Voucher : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CarrinhoItens_CarrinhoCliente_CarrinhoId",
                table: "CarrinhoItens");

            migrationBuilder.RenameIndex(
                name: "IDX_Client",
                table: "CarrinhoCliente",
                newName: "IDX_Cliente");

            migrationBuilder.AlterColumn<int>(
                name: "Amount",
                table: "CarrinhoItens",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "varchar(100)",
                oldNullable: true);

            migrationBuilder.AddColumn<decimal>(
                name: "Desconto",
                table: "CarrinhoCliente",
                nullable: false,
                defaultValue: 0m);

            migrationBuilder.AddColumn<bool>(
                name: "VoucherUtilizado",
                table: "CarrinhoCliente",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "VoucherCodigo",
                table: "CarrinhoCliente",
                type: "varchar(50)",
                nullable: true);

            migrationBuilder.AddColumn<decimal>(
                name: "Percentual",
                table: "CarrinhoCliente",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "TipoDesconto",
                table: "CarrinhoCliente",
                nullable: true);

            migrationBuilder.AddColumn<decimal>(
                name: "ValorDesconto",
                table: "CarrinhoCliente",
                nullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_CarrinhoItens_CarrinhoCliente_CarrinhoId",
                table: "CarrinhoItens",
                column: "CarrinhoId",
                principalTable: "CarrinhoCliente",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CarrinhoItens_CarrinhoCliente_CarrinhoId",
                table: "CarrinhoItens");

            migrationBuilder.DropColumn(
                name: "Desconto",
                table: "CarrinhoCliente");

            migrationBuilder.DropColumn(
                name: "VoucherUtilizado",
                table: "CarrinhoCliente");

            migrationBuilder.DropColumn(
                name: "VoucherCodigo",
                table: "CarrinhoCliente");

            migrationBuilder.DropColumn(
                name: "Percentual",
                table: "CarrinhoCliente");

            migrationBuilder.DropColumn(
                name: "TipoDesconto",
                table: "CarrinhoCliente");

            migrationBuilder.DropColumn(
                name: "ValorDesconto",
                table: "CarrinhoCliente");

            migrationBuilder.RenameIndex(
                name: "IDX_Cliente",
                table: "CarrinhoCliente",
                newName: "IDX_Client");

            migrationBuilder.AlterColumn<string>(
                name: "Amount",
                table: "CarrinhoItens",
                type: "varchar(100)",
                nullable: true,
                oldClrType: typeof(int));

            migrationBuilder.AddForeignKey(
                name: "FK_CarrinhoItens_CarrinhoCliente_CarrinhoId",
                table: "CarrinhoItens",
                column: "CarrinhoId",
                principalTable: "CarrinhoCliente",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}

using Microsoft.EntityFrameworkCore.Migrations;

namespace ECOM.API.Client.Migrations
{
    public partial class EnderecoRemodelado : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "City",
                table: "Adresses");

            migrationBuilder.DropColumn(
                name: "Complement",
                table: "Adresses");

            migrationBuilder.DropColumn(
                name: "Country",
                table: "Adresses");

            migrationBuilder.DropColumn(
                name: "Number",
                table: "Adresses");

            migrationBuilder.DropColumn(
                name: "ReferencePoint",
                table: "Adresses");

            migrationBuilder.RenameColumn(
                name: "State",
                table: "Adresses",
                newName: "Numero");

            migrationBuilder.RenameColumn(
                name: "Receiver",
                table: "Adresses",
                newName: "Cidade");

            migrationBuilder.RenameColumn(
                name: "Neighborhood",
                table: "Adresses",
                newName: "Estado");

            migrationBuilder.RenameColumn(
                name: "AddressName",
                table: "Adresses",
                newName: "Bairro");

            migrationBuilder.AlterColumn<string>(
                name: "Cep",
                table: "Adresses",
                type: "varchar(20)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "varchar(9)");

            migrationBuilder.AddColumn<string>(
                name: "Complemento",
                table: "Adresses",
                type: "varchar(250)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Logradouro",
                table: "Adresses",
                type: "varchar(200)",
                nullable: false,
                defaultValue: "");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Complemento",
                table: "Adresses");

            migrationBuilder.DropColumn(
                name: "Logradouro",
                table: "Adresses");

            migrationBuilder.RenameColumn(
                name: "Numero",
                table: "Adresses",
                newName: "State");

            migrationBuilder.RenameColumn(
                name: "Estado",
                table: "Adresses",
                newName: "Neighborhood");

            migrationBuilder.RenameColumn(
                name: "Cidade",
                table: "Adresses",
                newName: "Receiver");

            migrationBuilder.RenameColumn(
                name: "Bairro",
                table: "Adresses",
                newName: "AddressName");

            migrationBuilder.AlterColumn<string>(
                name: "Cep",
                table: "Adresses",
                type: "varchar(9)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "varchar(20)");

            migrationBuilder.AddColumn<string>(
                name: "City",
                table: "Adresses",
                type: "varchar(50)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Complement",
                table: "Adresses",
                type: "varchar(100)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Country",
                table: "Adresses",
                type: "varchar(50)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "Number",
                table: "Adresses",
                type: "varchar(10)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "ReferencePoint",
                table: "Adresses",
                type: "varchar(100)",
                nullable: true);
        }
    }
}

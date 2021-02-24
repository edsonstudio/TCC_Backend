USE [master]
GO
/****** Object:  Database [ecommercedb]    Script Date: 24/02/2021 18:16:23 ******/
CREATE DATABASE [ecommercedb]
--  CONTAINMENT = NONE
--  ON  PRIMARY 
-- ( NAME = N'ecommercedb', FILENAME = N'C:\Users\edson\ecommercedb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
--  LOG ON 
-- ( NAME = N'ecommercedb_log', FILENAME = N'C:\Users\edson\ecommercedb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
-- GO
-- ALTER DATABASE [ecommercedb] SET COMPATIBILITY_LEVEL = 130
-- GO
-- IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
-- begin
-- EXEC [ecommercedb].[dbo].[sp_fulltext_database] @action = 'enable'
-- end
-- GO
-- ALTER DATABASE [ecommercedb] SET ANSI_NULL_DEFAULT OFF 
-- GO
-- ALTER DATABASE [ecommercedb] SET ANSI_NULLS OFF 
-- GO
-- ALTER DATABASE [ecommercedb] SET ANSI_PADDING OFF 
-- GO
-- ALTER DATABASE [ecommercedb] SET ANSI_WARNINGS OFF 
-- GO
-- ALTER DATABASE [ecommercedb] SET ARITHABORT OFF 
-- GO
-- ALTER DATABASE [ecommercedb] SET AUTO_CLOSE ON 
-- GO
-- ALTER DATABASE [ecommercedb] SET AUTO_SHRINK OFF 
-- GO
-- ALTER DATABASE [ecommercedb] SET AUTO_UPDATE_STATISTICS ON 
-- GO
-- ALTER DATABASE [ecommercedb] SET CURSOR_CLOSE_ON_COMMIT OFF 
-- GO
-- ALTER DATABASE [ecommercedb] SET CURSOR_DEFAULT  GLOBAL 
-- GO
-- ALTER DATABASE [ecommercedb] SET CONCAT_NULL_YIELDS_NULL OFF 
-- GO
-- ALTER DATABASE [ecommercedb] SET NUMERIC_ROUNDABORT OFF 
-- GO
-- ALTER DATABASE [ecommercedb] SET QUOTED_IDENTIFIER OFF 
-- GO
-- ALTER DATABASE [ecommercedb] SET RECURSIVE_TRIGGERS OFF 
-- GO
-- ALTER DATABASE [ecommercedb] SET  ENABLE_BROKER 
-- GO
-- ALTER DATABASE [ecommercedb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
-- GO
-- ALTER DATABASE [ecommercedb] SET DATE_CORRELATION_OPTIMIZATION OFF 
-- GO
-- ALTER DATABASE [ecommercedb] SET TRUSTWORTHY OFF 
-- GO
-- ALTER DATABASE [ecommercedb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
-- GO
-- ALTER DATABASE [ecommercedb] SET PARAMETERIZATION SIMPLE 
-- GO
-- ALTER DATABASE [ecommercedb] SET READ_COMMITTED_SNAPSHOT ON 
-- GO
-- ALTER DATABASE [ecommercedb] SET HONOR_BROKER_PRIORITY OFF 
-- GO
-- ALTER DATABASE [ecommercedb] SET RECOVERY SIMPLE 
-- GO
-- ALTER DATABASE [ecommercedb] SET  MULTI_USER 
-- GO
-- ALTER DATABASE [ecommercedb] SET PAGE_VERIFY CHECKSUM  
-- GO
-- ALTER DATABASE [ecommercedb] SET DB_CHAINING OFF 
-- GO
-- ALTER DATABASE [ecommercedb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
-- GO
-- ALTER DATABASE [ecommercedb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
-- GO
-- ALTER DATABASE [ecommercedb] SET DELAYED_DURABILITY = DISABLED 
-- GO
-- ALTER DATABASE [ecommercedb] SET QUERY_STORE = OFF
-- GO
-- USE [ecommercedb]
-- GO
-- ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
-- GO
-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
-- GO
-- ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
-- GO
-- ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
-- GO
-- USE [ecommercedb]
-- GO
USE [ecommercedb]
GO
/****** Object:  Sequence [dbo].[ECOMSequencia]    Script Date: 24/02/2021 18:16:23 ******/
CREATE SEQUENCE [dbo].[ECOMSequencia] 
 AS [int]
 START WITH 1000
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [ecommercedb]
GO
/****** Object:  Sequence [dbo].[MinhaSequencia]    Script Date: 24/02/2021 18:16:23 ******/
CREATE SEQUENCE [dbo].[MinhaSequencia] 
 AS [int]
 START WITH 1000
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Adresses]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adresses](
	[Id] [uniqueidentifier] NOT NULL,
	[Logradouro] [varchar](200) NOT NULL,
	[Numero] [varchar](50) NOT NULL,
	[Complemento] [varchar](250) NULL,
	[Bairro] [varchar](100) NOT NULL,
	[Cep] [varchar](20) NOT NULL,
	[Cidade] [varchar](100) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
	[ClientId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Adresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[AvatarFileName] [nvarchar](max) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[DeletedOn] [datetime2](7) NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssociatedProducts]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssociatedProducts](
	[Id] [uniqueidentifier] NOT NULL,
	[ProductFatherId] [uniqueidentifier] NOT NULL,
	[ProductSonId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AssociatedProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarrinhoCliente]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarrinhoCliente](
	[Id] [uniqueidentifier] NOT NULL,
	[ClientId] [uniqueidentifier] NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[VoucherUtilizado] [bit] NOT NULL,
	[Desconto] [decimal](18, 2) NOT NULL,
	[Percentual] [decimal](18, 2) NULL,
	[ValorDesconto] [decimal](18, 2) NULL,
	[VoucherCodigo] [varchar](50) NULL,
	[TipoDesconto] [int] NULL,
 CONSTRAINT [PK_CarrinhoCliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarrinhoItens]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarrinhoItens](
	[Id] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](100) NULL,
	[Amount] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Image] [varchar](100) NULL,
	[CarrinhoId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_CarrinhoItens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Cpf] [varchar](14) NULL,
	[Phone] [varchar](15) NOT NULL,
	[Email] [varchar](254) NULL,
	[Excluded] [bit] NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[Id] [nvarchar](450) NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[Text] [nvarchar](max) NULL,
	[SenderId] [nvarchar](450) NOT NULL,
	[ThreadId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagamentos]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagamentos](
	[Id] [uniqueidentifier] NOT NULL,
	[PedidoId] [uniqueidentifier] NOT NULL,
	[TipoPagamento] [int] NOT NULL,
	[Valor] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Pagamentos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PedidoItems]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PedidoItems](
	[Id] [uniqueidentifier] NOT NULL,
	[PedidoId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[ProductName] [varchar](250) NOT NULL,
	[Amount] [int] NOT NULL,
	[ValorUnitario] [decimal](18, 2) NOT NULL,
	[ProductImage] [varchar](100) NULL,
 CONSTRAINT [PK_PedidoItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[Id] [uniqueidentifier] NOT NULL,
	[Codigo] [int] NOT NULL,
	[ClientId] [uniqueidentifier] NOT NULL,
	[VoucherId] [uniqueidentifier] NULL,
	[VoucherUtilizado] [bit] NOT NULL,
	[Desconto] [decimal](18, 2) NOT NULL,
	[ValorTotal] [decimal](18, 2) NOT NULL,
	[DataCadastro] [datetime2](7) NOT NULL,
	[PedidoStatus] [int] NOT NULL,
	[Logradouro] [varchar](100) NULL,
	[Numero] [varchar](100) NULL,
	[Complemento] [varchar](100) NULL,
	[Bairro] [varchar](100) NULL,
	[Cep] [varchar](100) NULL,
	[Cidade] [varchar](100) NULL,
	[Estado] [varchar](100) NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Active] [bit] NOT NULL,
	[Description] [varchar](1000) NOT NULL,
	[Model] [varchar](50) NOT NULL,
	[Brand] [varchar](50) NOT NULL,
	[Price] [decimal](9, 2) NOT NULL,
	[Amount] [int] NOT NULL,
	[Image] [varbinary](max) NULL,
	[RegisterDate] [datetime2](7) NOT NULL,
	[CategoryId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thread]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thread](
	[Id] [nvarchar](450) NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[DeletedOn] [datetime2](7) NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[OwnerId] [nvarchar](450) NOT NULL,
	[OponentId] [nvarchar](max) NULL,
 CONSTRAINT [PK_Thread] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transacoes]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transacoes](
	[Id] [uniqueidentifier] NOT NULL,
	[CodigoAutorizacao] [varchar](100) NULL,
	[BandeiraCartao] [varchar](100) NULL,
	[DataTransacao] [datetime2](7) NULL,
	[ValorTotal] [decimal](18, 2) NOT NULL,
	[CustoTransacao] [decimal](18, 2) NOT NULL,
	[Status] [int] NOT NULL,
	[TID] [varchar](100) NULL,
	[NSU] [varchar](100) NULL,
	[PagamentoId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Transacoes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vouchers]    Script Date: 24/02/2021 18:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vouchers](
	[Id] [uniqueidentifier] NOT NULL,
	[Codigo] [varchar](100) NOT NULL,
	[Percentual] [decimal](18, 2) NULL,
	[ValorDesconto] [decimal](18, 2) NULL,
	[Quantidade] [int] NOT NULL,
	[TipoDesconto] [int] NOT NULL,
	[DataCriacao] [datetime2](7) NOT NULL,
	[DataUtilizacao] [datetime2](7) NULL,
	[DataValidade] [datetime2](7) NOT NULL,
	[Ativo] [bit] NOT NULL,
	[Utilizado] [bit] NOT NULL,
 CONSTRAINT [PK_Vouchers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200913202839_UpdateAssociatedProducts', N'3.1.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200926005448_ClientInitial', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200926005806_Initial', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200928130405_Carrinho', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201003181126_Pagamento', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201006043634_Voucher', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201007021805_Voucher', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201008001152_pedidos', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201008102444_EnderecoRemodelado', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201015041446_novamodelagemguid', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201015045456_novamodelagemguid', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201015045822_novamodelagemguid', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201015055447_novamodelagemguid', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201015145428_guidsEstrangeiras', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201026154042_Initial', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201030171207_teste', N'3.1.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201031003857_ClientFinal', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201031005806_ClientsFix', N'3.1.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201031020414_ClientsFixPhone', N'3.1.8')
GO
INSERT [dbo].[Adresses] ([Id], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado], [ClientId]) VALUES (N'a496ff5e-0e89-43fb-b7c7-35a4635d50ae', N'Rua Zumbi dos Palmares', N'1612', N'', N'Torrões', N'50660-030', N'Recife', N'PE', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361')
INSERT [dbo].[Adresses] ([Id], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado], [ClientId]) VALUES (N'2ce13956-7c80-4cee-ba15-3b9d9b2db885', N'Rua Francisco Cortez', N'1365', N'', N'Cordeiro', N'50630-630', N'Recife', N'PE', N'4f60aa69-ac1f-4bac-856a-f14c90ff2422')
INSERT [dbo].[Adresses] ([Id], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado], [ClientId]) VALUES (N'0c2f47f9-62e9-48a1-95ed-44f436aa430d', N'Rua Nissin Bensoussan', N'1364', N'', N'Cordeiro', N'50630-030', N'Recife', N'PE', N'4f60aa69-ac1f-4bac-856a-f14c90ff2422')
INSERT [dbo].[Adresses] ([Id], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado], [ClientId]) VALUES (N'720b9bb1-e897-459c-bac4-47e41d7d034d', N'Rua Zumbi dos Palmares', N'1212', N'', N'Torrões', N'50660-030', N'Recife', N'PE', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361')
INSERT [dbo].[Adresses] ([Id], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado], [ClientId]) VALUES (N'4357c4eb-5c21-430f-96b9-6cd456275674', N'Rua Zumbi dos Palmares', N'1615', N'', N'Torrões', N'50660-030', N'Recife', N'PE', N'34e98503-03a0-4e74-8692-7db9d8d206bb')
INSERT [dbo].[Adresses] ([Id], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado], [ClientId]) VALUES (N'23902ae4-b8f8-4406-a8d9-7959a51e5406', N'Rua Nissin Bensoussan', N'1365', N'', N'Cordeiro', N'50630-030', N'Recife', N'PE', N'4f60aa69-ac1f-4bac-856a-f14c90ff2422')
INSERT [dbo].[Adresses] ([Id], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado], [ClientId]) VALUES (N'0f6af19f-7619-4fa6-85c7-8116c7eee50e', N'Rua Nissin Bensoussan', N'1364', N'', N'Cordeiro', N'50630-030', N'Recife', N'PE', N'4f60aa69-ac1f-4bac-856a-f14c90ff2422')
INSERT [dbo].[Adresses] ([Id], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado], [ClientId]) VALUES (N'c93908c9-9efe-43c1-b82c-8e32be0678d7', N'Avenida General San Martin', N'1250', N'', N'Cordeiro', N'50630-060', N'Recife', N'PE', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361')
INSERT [dbo].[Adresses] ([Id], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado], [ClientId]) VALUES (N'98b91c0e-107b-439a-8ea0-94a9fd78079b', N'Avenida General San Martin', N'1254', N'', N'Cordeiro', N'50630-060', N'Recife', N'PE', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361')
INSERT [dbo].[Adresses] ([Id], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado], [ClientId]) VALUES (N'b625e244-a072-418f-9696-d1ebcfa8b1b6', N'Rua Zumbi dos Palmares', N'1615', N'', N'Torrões', N'50660-030', N'Recife', N'PE', N'5c8703a7-0e2a-469f-b5f0-f7ee8e0c78ac')
INSERT [dbo].[Adresses] ([Id], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado], [ClientId]) VALUES (N'3b5f3bc7-4fe3-4df8-b50c-d63e18462965', N'Rua Zumbi dos Palmares', N'1615', N'', N'Torrões', N'50660-030', N'Recife', N'PE', N'34e98503-03a0-4e74-8692-7db9d8d206bb')
INSERT [dbo].[Adresses] ([Id], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado], [ClientId]) VALUES (N'bbaaf2ab-b4f9-4d11-8678-d9665deb72f9', N'rua xaxa', N'69', N'casa', N'dahora', N'50660030', N'Recife', N'Pernambuco', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361')
INSERT [dbo].[Adresses] ([Id], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado], [ClientId]) VALUES (N'351a0dc0-7bb8-4f9a-abb0-dec477596957', N'Avenida General San Martin', N'1200', N'', N'Cordeiro', N'50630-060', N'Recife', N'PE', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361')
INSERT [dbo].[Adresses] ([Id], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado], [ClientId]) VALUES (N'daf6135b-2c84-4dbd-a576-f3cf6b0be8c9', N'Rua Nissin Bensoussan', N'1365', N'', N'Cordeiro', N'50630-030', N'Recife', N'PE', N'8e0881aa-3816-46e6-9253-0248a33364fd')
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5, N'777b88dc-5cf8-4a14-b496-2035f2e2982f', N'Products', N'Adicionar,Editar,Excluir')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarFileName], [CreatedOn], [DeletedOn], [ModifiedOn], [isDeleted]) VALUES (N'1a67c90c-9e1e-4397-ad48-021ce2dff9a5', N'mateus@admin.com', N'MATEUS@ADMIN.COM', N'mateus@admin.com', N'MATEUS@ADMIN.COM', 1, N'AQAAAAEAACcQAAAAEKd0geCLsPQO/8YaxxuFFw6LIIVXYRRvGs4lcqIjrCtV21abNCsVoAndXHXnkYaccA==', N'TWAJGSVY7LKXRY4G4ZTWPCYI5HZRCYWH', N'a656a588-fbb8-4e04-9e0a-298586b31205', NULL, 0, 0, NULL, 1, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarFileName], [CreatedOn], [DeletedOn], [ModifiedOn], [isDeleted]) VALUES (N'34e98503-03a0-4e74-8692-7db9d8d206bb', N'maria@maria.com', N'MARIA@MARIA.COM', N'maria@maria.com', N'MARIA@MARIA.COM', 1, N'AQAAAAEAACcQAAAAEN5mNQNxa8OmR0TX6W3a+M5E9XOHsuYgrf4AtNw6CAPddy62zeCa9i+KFhcduHwEIQ==', N'RKSOGVKXYGAND32FRKGDEK5L4HY7XQKV', N'f8dc990f-b50e-4849-aea4-bdee638ecd40', NULL, 0, 0, NULL, 1, 0, N'08a784b1-65bf-4218-9632-fea92a938be6.png', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarFileName], [CreatedOn], [DeletedOn], [ModifiedOn], [isDeleted]) VALUES (N'3ab49fc6-f165-47bf-9ffe-afd40960aa6b', N'xuxa2@xuxa.com', N'XUXA2@XUXA.COM', N'xuxa2@xuxa.com', N'XUXA2@XUXA.COM', 1, N'AQAAAAEAACcQAAAAENcQDCdQx5Cmk/K1LYuL2Gdw+/KbcPe7Cb52oCNLA4rtFBYIrLP/JsKgmdrT9FYLDQ==', N'3W77Y6FI7WVDOLO2MLNDVQUX5WDXJ4V3', N'65091629-2d27-4287-9bd4-37ecc2b42ac5', NULL, 0, 0, NULL, 1, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarFileName], [CreatedOn], [DeletedOn], [ModifiedOn], [isDeleted]) VALUES (N'4f60aa69-ac1f-4bac-856a-f14c90ff2422', N'docker@docker.com', N'DOCKER@DOCKER.COM', N'docker@docker.com', N'DOCKER@DOCKER.COM', 1, N'AQAAAAEAACcQAAAAEHe1NdZMiuNyflksCtF4a/bivh/bKtuJCZ1a3F2yxb3sW31t7qyMvnKdg+F987lghA==', N'XWE3VYYNLCFRHI7HOG2KT2ZVNTH4YHV6', N'e6529b37-88b7-4e29-a476-1e5009cc58a2', NULL, 0, 0, NULL, 1, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarFileName], [CreatedOn], [DeletedOn], [ModifiedOn], [isDeleted]) VALUES (N'5479d828-47af-4615-87fc-238e0380d452', N'xuxa@xuxa.com', N'XUXA@XUXA.COM', N'xuxa@xuxa.com', N'XUXA@XUXA.COM', 1, N'AQAAAAEAACcQAAAAELWcRrIDF9RxUwBceiJlwylK6Prv4iRujiBQesNLp5wMq/2laiUH4klk8Y5lF2/KTA==', N'AJJPMCGDYLWQG5QDAV3XD2SSZSC5Q54H', N'0c4fb0c8-51ae-46fe-9e64-5afb05646e7c', NULL, 0, 0, NULL, 1, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarFileName], [CreatedOn], [DeletedOn], [ModifiedOn], [isDeleted]) VALUES (N'5c8703a7-0e2a-469f-b5f0-f7ee8e0c78ac', N'mccs@mccs.com', N'MCCS@MCCS.COM', N'mccs@mccs.com', N'MCCS@MCCS.COM', 1, N'AQAAAAEAACcQAAAAEE+yekoFiPv4o2cl1GpXI0GQ97V1TkZjCnywFcAyZ5yc/2x+K6voBBT0TxiBZ2tACg==', N'TKDR3NRGYEDXM5ZQP3KUBOR2YFWQR6LZ', N'9df75a2d-82d2-4009-a84c-875bc9a84df2', NULL, 0, 0, NULL, 1, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarFileName], [CreatedOn], [DeletedOn], [ModifiedOn], [isDeleted]) VALUES (N'777b88dc-5cf8-4a14-b496-2035f2e2982f', N'edson@admin.com', N'EDSON@ADMIN.COM', N'edson@admin.com', N'EDSON@ADMIN.COM', 1, N'AQAAAAEAACcQAAAAEHzApvFsEifgVSvO2GW34Hw5MIEE9EUWghlBETwkXlNlM7WUR878y/aMvIzbFnmpoA==', N'TSG7DEK5ANVKZEQRA2OIAXIV22VFWGWO', N'65405d37-bfea-46a5-bce3-852212ecfb33', NULL, 0, 0, NULL, 1, 0, N'a2f9f3f6-e63b-4225-8bab-ce84ab49c532.gif', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarFileName], [CreatedOn], [DeletedOn], [ModifiedOn], [isDeleted]) VALUES (N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'xaxa@xaxa.com', N'XAXA@XAXA.COM', N'xaxa@xaxa.com', N'XAXA@XAXA.COM', 1, N'AQAAAAEAACcQAAAAEBV+1zlWWRqvlbj+G8txO+PA9FIBReBkut8oWROSu0m+1aFLXvVlvkyPANlzbFTqyA==', N'PAUZIO5K5WNLTUEB3SKE5PBK2UPJ3CAH', N'1c84da88-38c2-484e-be77-7d3aa5edee30', NULL, 0, 0, NULL, 1, 0, N'928340b9-b868-456a-aef5-fab9ef8ef0b7.png', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarFileName], [CreatedOn], [DeletedOn], [ModifiedOn], [isDeleted]) VALUES (N'8bff0ffc-b26e-4dcd-a168-1947b2c82daf', N'juju@juju.com', N'JUJU@JUJU.COM', N'juju@juju.com', N'JUJU@JUJU.COM', 1, N'AQAAAAEAACcQAAAAEJ0qCC+cH17aY75FFhtGzJjAZXl8GpHTfo/vlrxmLpqcErcCfQyBc+9KGr+pbZhBHA==', N'QBTLXG72LTYEDUXKAKZ3MYTRWV6OB2V6', N'e7da0711-4773-4af3-bb1e-ae03bd092737', NULL, 0, 0, NULL, 1, 0, N'40f0e52b-9e77-4449-a18e-db4d711da658.jpg', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarFileName], [CreatedOn], [DeletedOn], [ModifiedOn], [isDeleted]) VALUES (N'8e0881aa-3816-46e6-9253-0248a33364fd', N'docker2@docker.com', N'DOCKER2@DOCKER.COM', N'docker2@docker.com', N'DOCKER2@DOCKER.COM', 1, N'AQAAAAEAACcQAAAAEKRVVo1QVVWMmH9INPgCoZWaBfAtm5swtPPaafignz9hUM1cWP6JY6CQCJ7OstGrTQ==', N'ITWV2KYIPTALUDRHR2JXXVXFP6TV5XU4', N'c264339d-c844-482e-b0d6-dedb77fa3a5b', NULL, 0, 0, NULL, 1, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarFileName], [CreatedOn], [DeletedOn], [ModifiedOn], [isDeleted]) VALUES (N'a437bde8-5eb5-4924-bb20-9e92d47af410', N'user@example.com', N'USER@EXAMPLE.COM', N'user@example.com', N'USER@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEOLe7QxD1qGer0PWQLTjT0wmAyrBQ4pI0PvO1l1okJ7uwuqytlcAN53MB2Awtb704A==', N'TYVOIATQDGO3G6VWKGDTIB3ZIOH2C4D4', N'1152c44e-0acd-4ac2-80cd-e10bd7af392a', NULL, 0, 0, NULL, 1, 0, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, 0)
GO
INSERT [dbo].[AssociatedProducts] ([Id], [ProductFatherId], [ProductSonId]) VALUES (N'ce0c2a7d-c1c4-4e41-b864-3ad866fc7b72', N'5d4eb5af-4c1d-431e-b15e-9f8c5017b9e4', N'f014aafb-d417-4904-89de-e523cad0db55')
INSERT [dbo].[AssociatedProducts] ([Id], [ProductFatherId], [ProductSonId]) VALUES (N'aab368ac-4bd6-4bf6-8d7e-8736ceb9551d', N'5d4eb5af-4c1d-431e-b15e-9f8c5017b9e4', N'd8995131-6e23-42b7-bb7f-f0280ee882cd')
INSERT [dbo].[AssociatedProducts] ([Id], [ProductFatherId], [ProductSonId]) VALUES (N'8bc2a05a-e8cc-4ae1-9232-936e85cbb5f7', N'5d4eb5af-4c1d-431e-b15e-9f8c5017b9e4', N'e22a932b-8ed2-4893-87c7-229192ebd49e')
INSERT [dbo].[AssociatedProducts] ([Id], [ProductFatherId], [ProductSonId]) VALUES (N'708b0e23-ba87-4771-975b-adfcab8e6d15', N'5d4eb5af-4c1d-431e-b15e-9f8c5017b9e4', N'fb534d05-aec7-4a80-8cd2-5f35ae2e7b64')
INSERT [dbo].[AssociatedProducts] ([Id], [ProductFatherId], [ProductSonId]) VALUES (N'4f03eb17-ba75-463e-95ad-d7d94199bc06', N'5d4eb5af-4c1d-431e-b15e-9f8c5017b9e4', N'6fda97de-d4ca-47ba-8228-99136a6850ff')
INSERT [dbo].[AssociatedProducts] ([Id], [ProductFatherId], [ProductSonId]) VALUES (N'fc6974c8-ebd6-4573-b1af-fd1f5fdc9d51', N'5d4eb5af-4c1d-431e-b15e-9f8c5017b9e4', N'8820159f-19d5-4f73-a104-7cd3fe89e0e7')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'a7b282fc-04bf-442c-96ab-0573ef19e4ce', N'Fonte')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'36866bc2-1c68-4d53-9d88-208cfd627c55', N'Cooler')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'5747ed69-a494-405a-8a54-542088558c06', N'Headset')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'53ad7b9a-4aa4-49fa-acd9-56ca49168833', N'SSD')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'cd7d28d1-72fa-41d1-8ab5-86dd4bbf2df3', N'Gabinete')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'267a4206-e81a-4307-bdc3-8e66ce700448', N'Placa de vídeo')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'6472cfa7-db79-4238-8dd4-96975ee0b8db', N'Placa mãe')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'db71ad8c-a219-4844-97b9-aa6198ea2426', N'HD')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'56159581-cc10-4bf8-840f-ac76cb9cd357', N'Teclado')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'2eec9124-2e33-45cf-87cf-b088320ca2e3', N'Armazenamento')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'75267f90-812e-4e4e-93b9-de049d5838c7', N'Processador')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'd9e22f02-b2ba-4068-90eb-f895c9126898', N'Memória RAM')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'6d931cad-31ef-4365-a3f8-fdca5a1bc678', N'Memória')
GO
INSERT [dbo].[Clients] ([Id], [Name], [Cpf], [Phone], [Email], [Excluded]) VALUES (N'1a67c90c-9e1e-4397-ad48-021ce2dff9a5', N'Mateus Xaxa', N'959.970.620-07', N'(11) 11111-1111', N'mateus@admin.com', 0)
INSERT [dbo].[Clients] ([Id], [Name], [Cpf], [Phone], [Email], [Excluded]) VALUES (N'8e0881aa-3816-46e6-9253-0248a33364fd', N'Docker final', N'269.295.390-82', N'(11) 11111-1111', N'docker2@docker.com', 0)
INSERT [dbo].[Clients] ([Id], [Name], [Cpf], [Phone], [Email], [Excluded]) VALUES (N'8bff0ffc-b26e-4dcd-a168-1947b2c82daf', N'Jurema', N'08803164030', N'(11) 12345-6789', N'juju@juju.com', 0)
INSERT [dbo].[Clients] ([Id], [Name], [Cpf], [Phone], [Email], [Excluded]) VALUES (N'777b88dc-5cf8-4a14-b496-2035f2e2982f', N'Edson', N'05563092437', N'(11) 12345-6789', N'edson@admin.com', 0)
INSERT [dbo].[Clients] ([Id], [Name], [Cpf], [Phone], [Email], [Excluded]) VALUES (N'5479d828-47af-4615-87fc-238e0380d452', N'Xuxa', N'55496860075', N'(11) 11111-1111', N'xuxa@xuxa.com', 0)
INSERT [dbo].[Clients] ([Id], [Name], [Cpf], [Phone], [Email], [Excluded]) VALUES (N'34e98503-03a0-4e74-8692-7db9d8d206bb', N'Maria', N'92615913026', N'11123451234', N'maria@maria.com', 0)
INSERT [dbo].[Clients] ([Id], [Name], [Cpf], [Phone], [Email], [Excluded]) VALUES (N'a437bde8-5eb5-4924-bb20-9e92d47af410', N'Miguel', N'50290306892', N'(11) 97222-9073', N'user@example.com', 0)
INSERT [dbo].[Clients] ([Id], [Name], [Cpf], [Phone], [Email], [Excluded]) VALUES (N'3ab49fc6-f165-47bf-9ffe-afd40960aa6b', N'Xuxa2', N'36238196033', N'(11) 11111-1111', N'xuxa2@xuxa.com', 0)
INSERT [dbo].[Clients] ([Id], [Name], [Cpf], [Phone], [Email], [Excluded]) VALUES (N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'xaxa', N'72939225079', N'012345679891234', N'xaxa@xaxa.com', 0)
INSERT [dbo].[Clients] ([Id], [Name], [Cpf], [Phone], [Email], [Excluded]) VALUES (N'4f60aa69-ac1f-4bac-856a-f14c90ff2422', N'Docker da silva', N'610.462.570-30', N'(11) 11111-1111', N'docker@docker.com', 0)
INSERT [dbo].[Clients] ([Id], [Name], [Cpf], [Phone], [Email], [Excluded]) VALUES (N'5c8703a7-0e2a-469f-b5f0-f7ee8e0c78ac', N'Marcelo Costa', N'055.630.924-37', N'(12) 31321-3212', N'mccs@mccs.com', 0)
GO
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'06d937ed-8d12-49d6-b2c4-7acccd7cff3e', 0, NULL, CAST(N'2020-11-05T22:35:51.2932214' AS DateTime2), NULL, N'agora vai', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'08171439-7df5-4ced-aae9-844c18826fad', 0, NULL, CAST(N'2020-11-05T23:04:25.9883182' AS DateTime2), NULL, N'123456', N'34e98503-03a0-4e74-8692-7db9d8d206bb', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'08652681-f64e-452d-b665-58fc8090ae8b', 0, NULL, CAST(N'2020-11-05T23:25:51.4055546' AS DateTime2), NULL, N'troca de avatar en tenoi reak', N'8bff0ffc-b26e-4dcd-a168-1947b2c82daf', N'a0212573-acea-43ae-8b30-1fba0c31ccdd')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'103886ee-7b46-4e21-8f76-2c2a9cd11570', 0, NULL, CAST(N'2020-11-02T15:21:27.8108583' AS DateTime2), NULL, N'123456', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'182f31bd-006b-4eec-bd55-4de2fc6384eb', 0, NULL, CAST(N'2020-11-02T15:21:04.5492713' AS DateTime2), NULL, N'salveee', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'1bfd16bc-b5a4-4b05-a0c0-913a4a28d050', 0, NULL, CAST(N'2020-11-05T23:14:09.5252791' AS DateTime2), NULL, N'teste de avatar concluido em 100%', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'2ce4cf80-bfd4-489b-9f1f-e65705085c08', 0, NULL, CAST(N'2020-11-05T22:38:37.7462037' AS DateTime2), NULL, N'só pra maria', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'3940451f-08d0-4efd-93ad-08c564b3da3f', 0, NULL, CAST(N'2020-11-02T14:57:24.7914827' AS DateTime2), NULL, N'vish', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'4930a3a3-416b-4a3b-8c5f-7aadc47e26e3', 0, NULL, CAST(N'2020-11-02T15:58:26.2184169' AS DateTime2), NULL, N'aaaaaaaaaaa', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'4e8e9ea3-7216-465c-a661-73c96e2d3ddb', 0, NULL, CAST(N'2020-11-02T14:52:17.5855046' AS DateTime2), NULL, N'olá maria', N'777b88dc-5cf8-4a14-b496-2035f2e2982f', N'77fccd7b-85df-4dbb-b79a-e2ab923b99e2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'52c8fd31-283a-42c4-b20a-3be15ebc4a2e', 0, NULL, CAST(N'2020-11-05T23:13:07.5764504' AS DateTime2), NULL, N'testando chat, e o typing', N'777b88dc-5cf8-4a14-b496-2035f2e2982f', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'52f96837-bb3f-456a-8af6-66d0542f1a54', 0, NULL, CAST(N'2020-11-05T23:25:59.9008407' AS DateTime2), NULL, N'em tempo real', N'8bff0ffc-b26e-4dcd-a168-1947b2c82daf', N'a0212573-acea-43ae-8b30-1fba0c31ccdd')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'538f3859-0e2e-4f29-afc7-3f33dfc286d0', 0, NULL, CAST(N'2020-11-05T22:07:09.2573906' AS DateTime2), NULL, N'agora vai', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'57138c95-ab69-4dfc-8a10-6ed5ffff0aff', 0, NULL, CAST(N'2020-11-02T15:59:22.5732804' AS DateTime2), NULL, N'e agora jo´se?', N'777b88dc-5cf8-4a14-b496-2035f2e2982f', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'5a60eaae-dd09-46b0-9be7-2adbeaa34d1c', 0, NULL, CAST(N'2020-11-05T21:41:23.2301216' AS DateTime2), NULL, N'teste', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'5d1fe323-b424-436e-86a6-949e7e5b46e2', 0, NULL, CAST(N'2020-11-05T19:14:51.1444013' AS DateTime2), NULL, N'olá', N'34e98503-03a0-4e74-8692-7db9d8d206bb', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'5d51746c-beca-4ca4-86a2-3aa5fc5b0df4', 0, NULL, CAST(N'2020-11-05T23:03:53.2734085' AS DateTime2), NULL, N'ola maria', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'619b6c56-532c-4db9-ae41-1ac523f27f43', 0, NULL, CAST(N'2020-11-02T14:54:09.0576806' AS DateTime2), NULL, N'eae', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'6646518d-4c92-4543-9d99-61dc64c6c05e', 0, NULL, CAST(N'2020-11-02T14:49:08.1932357' AS DateTime2), NULL, N'agora vai', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'6ac33099-cdfb-4f40-b433-ba0e765bd140', 0, NULL, CAST(N'2020-11-05T20:50:33.4645069' AS DateTime2), NULL, N'olá xaxa', N'34e98503-03a0-4e74-8692-7db9d8d206bb', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'739eb4b0-2edd-464e-86d0-63083757dac2', 0, NULL, CAST(N'2020-11-05T22:40:51.0311675' AS DateTime2), NULL, N'da maria pro edson', N'34e98503-03a0-4e74-8692-7db9d8d206bb', N'77fccd7b-85df-4dbb-b79a-e2ab923b99e2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'740d0210-149c-4c19-bdc3-e91de15ebdc4', 0, NULL, CAST(N'2020-11-05T20:49:35.0725875' AS DateTime2), NULL, N'olá maria', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'790e7212-e45e-4044-8fef-4a402892f919', 0, NULL, CAST(N'2020-11-02T15:36:34.0781285' AS DateTime2), NULL, N'eae 123', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'7a375515-2257-48e3-b00b-f1281bbb7fd1', 0, NULL, CAST(N'2020-11-05T22:10:47.9595237' AS DateTime2), NULL, N'teste', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'7b095d18-6a0c-48c5-9f7e-fbcc930f6280', 0, NULL, CAST(N'2020-11-02T15:59:31.9482892' AS DateTime2), NULL, N'sei la', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'82bf1f3d-5410-4ae6-abfd-ef33e9038263', 0, NULL, CAST(N'2020-11-02T15:40:46.7590778' AS DateTime2), NULL, N'teste tstando', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'842cca7b-1d90-45ef-91f8-ea784979df25', 0, NULL, CAST(N'2020-11-05T22:39:58.9860431' AS DateTime2), NULL, N'do edson pra maria', N'777b88dc-5cf8-4a14-b496-2035f2e2982f', N'77fccd7b-85df-4dbb-b79a-e2ab923b99e2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'89da6df7-61d3-4bee-bdb8-cbffcc42ef83', 0, NULL, CAST(N'2020-11-05T22:34:55.0160397' AS DateTime2), NULL, N'testando', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'8eab3bea-87a0-4b87-bef4-b01af58bcbb9', 0, NULL, CAST(N'2020-11-05T22:32:44.3689662' AS DateTime2), NULL, N'teste', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'8fb97add-b3dc-40a9-bb83-b20734812a1f', 0, NULL, CAST(N'2020-11-02T15:16:32.2914148' AS DateTime2), NULL, N'123', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'a0212573-acea-43ae-8b30-1fba0c31ccdd')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'97af97c3-d255-433d-8c56-93304cdff977', 0, NULL, CAST(N'2020-11-05T23:12:27.2150340' AS DateTime2), NULL, N'testando', N'777b88dc-5cf8-4a14-b496-2035f2e2982f', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'a601a1e3-b280-4869-9607-c21404abdba3', 0, NULL, CAST(N'2020-11-05T19:55:45.4805441' AS DateTime2), NULL, N'ola', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'b0beeaaf-4393-4ed1-8b3e-ff4ce2d03f57', 0, NULL, CAST(N'2020-11-02T15:07:26.0075628' AS DateTime2), NULL, N'teste', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'b5a0948d-f545-427e-acaa-3376314e8c21', 0, NULL, CAST(N'2020-11-05T22:39:33.7687923' AS DateTime2), NULL, N'só pro edson', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'c7807602-0dd3-4632-9aba-4224e33cfd54', 0, NULL, CAST(N'2020-11-02T14:57:08.2886045' AS DateTime2), NULL, N'tenso', N'777b88dc-5cf8-4a14-b496-2035f2e2982f', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'c9f97be6-9844-40ce-b697-392faf09bf4c', 0, NULL, CAST(N'2020-11-05T22:12:04.4605148' AS DateTime2), NULL, N'xaxaxaxa', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'ca84dc0d-ef28-4362-b31c-282e42561306', 0, NULL, CAST(N'2020-11-05T23:12:51.7643551' AS DateTime2), NULL, N'teste final', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'cfb33729-6cde-4db9-a856-a69993397851', 0, NULL, CAST(N'2020-11-05T23:24:27.7265738' AS DateTime2), NULL, N'salve salve', N'8bff0ffc-b26e-4dcd-a168-1947b2c82daf', N'a0212573-acea-43ae-8b30-1fba0c31ccdd')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'dda9a2e9-6d7e-40ac-96bf-aef29e4fb306', 0, NULL, CAST(N'2020-11-02T14:55:14.9716648' AS DateTime2), NULL, N'nao ta em tempo real', N'777b88dc-5cf8-4a14-b496-2035f2e2982f', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'de5dd5dd-0168-48e3-970a-29cebbcd3a21', 0, NULL, CAST(N'2020-11-05T22:35:54.0504682' AS DateTime2), NULL, N'agora foi', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'e5fa3dd8-e136-4188-93ad-9f7e182ff135', 0, NULL, CAST(N'2020-11-05T21:47:35.0257081' AS DateTime2), NULL, N'ola', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'e94edbc9-8669-44c4-893c-735d90353329', 0, NULL, CAST(N'2020-11-05T22:40:35.9056193' AS DateTime2), NULL, N'do xaxa só pra maria', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'4fbfd655-075f-4406-bcbd-a9009d593f93')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'ec565c0a-3b39-4d82-a68d-64086d624b2e', 0, NULL, CAST(N'2020-11-05T23:24:18.1512067' AS DateTime2), NULL, N'olá juju', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'a0212573-acea-43ae-8b30-1fba0c31ccdd')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'eec0dacb-db9b-4251-ab82-5d5211dd96e3', 0, NULL, CAST(N'2020-11-05T23:04:16.9460462' AS DateTime2), NULL, N'testando', N'34e98503-03a0-4e74-8692-7db9d8d206bb', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'fd403e30-d4dc-4d8e-9388-78bb0032fd04', 0, NULL, CAST(N'2020-11-05T23:04:07.1824839' AS DateTime2), NULL, N'olá xaxa', N'34e98503-03a0-4e74-8692-7db9d8d206bb', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
INSERT [dbo].[Message] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [Text], [SenderId], [ThreadId]) VALUES (N'fdf8a564-87b8-4947-9f45-caafaeb3d00b', 0, NULL, CAST(N'2020-11-05T22:35:43.7888800' AS DateTime2), NULL, N'123', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2')
GO
INSERT [dbo].[Pagamentos] ([Id], [PedidoId], [TipoPagamento], [Valor]) VALUES (N'dad3cda8-856e-4089-87d7-1129bfc4e617', N'7cacd663-f577-4c82-b672-9faeb3f45079', 1, CAST(20507.00 AS Decimal(18, 2)))
INSERT [dbo].[Pagamentos] ([Id], [PedidoId], [TipoPagamento], [Valor]) VALUES (N'd651ff3e-6fb9-4d65-9efd-1756738d829e', N'80503579-ebae-4e16-9b77-1dd17d4a354a', 1, CAST(20747.00 AS Decimal(18, 2)))
INSERT [dbo].[Pagamentos] ([Id], [PedidoId], [TipoPagamento], [Valor]) VALUES (N'f08818b2-82ab-4291-b8ed-460fb097d865', N'e6866d5b-ccd3-4191-975c-91de2757f4f3', 1, CAST(8699.00 AS Decimal(18, 2)))
INSERT [dbo].[Pagamentos] ([Id], [PedidoId], [TipoPagamento], [Valor]) VALUES (N'bded40d9-7509-4cb7-9075-8fa1322dc1fd', N'0460b990-7b33-4874-90f0-bfd31d636466', 1, CAST(26790.00 AS Decimal(18, 2)))
INSERT [dbo].[Pagamentos] ([Id], [PedidoId], [TipoPagamento], [Valor]) VALUES (N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa', N'360ac7f3-a9a8-460b-9ac5-3d313fc2d980', 1, CAST(28643.95 AS Decimal(18, 2)))
INSERT [dbo].[Pagamentos] ([Id], [PedidoId], [TipoPagamento], [Valor]) VALUES (N'6b3edbe6-a4e4-4072-a5a1-cf53239c98ed', N'8f07a4b7-a85e-4f8e-bc32-c7a4279f030c', 1, CAST(358.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[PedidoItems] ([Id], [PedidoId], [ProductId], [ProductName], [Amount], [ValorUnitario], [ProductImage]) VALUES (N'8688284c-4ae1-421a-9674-3a037284c713', N'80503579-ebae-4e16-9b77-1dd17d4a354a', N'91682c2a-cee8-4342-9cc9-60929d925137', N'Placa de Vídeo Gainward NVIDIA GeForce NV RTX3090, 24GB', 1, CAST(16449.00 AS Decimal(18, 2)), N'71bec27d-45ca-4b23-802d-6e29261d24f1_rtx3090-24gb.jpg')
INSERT [dbo].[PedidoItems] ([Id], [PedidoId], [ProductId], [ProductName], [Amount], [ValorUnitario], [ProductImage]) VALUES (N'41156049-17f8-4547-906f-4b5d085b876f', N'80503579-ebae-4e16-9b77-1dd17d4a354a', N'dace2320-c550-4fc8-af17-2ea5f5b23f3b', N'HD LaCie Externo 2Big Dock Thunderbolt 3, 8TB', 1, CAST(4298.00 AS Decimal(18, 2)), N'e777c05a-277b-435b-bcce-59745d524c96_hd-externo-8tb.jpg')
INSERT [dbo].[PedidoItems] ([Id], [PedidoId], [ProductId], [ProductName], [Amount], [ValorUnitario], [ProductImage]) VALUES (N'b81f57d4-162a-4eb2-a052-9eed1342559f', N'e6866d5b-ccd3-4191-975c-91de2757f4f3', N'2aa11080-7cbf-4690-b706-bed2bf11b517', N'Placa-Mãe Gigabyte TRX40 Aorus Xtreme', 1, CAST(8699.00 AS Decimal(18, 2)), N'f050d475-7cf3-4666-923d-d9befa53d710_placa-mae-trx40.jpg')
INSERT [dbo].[PedidoItems] ([Id], [PedidoId], [ProductId], [ProductName], [Amount], [ValorUnitario], [ProductImage]) VALUES (N'e515ca6d-bf63-4022-9534-ac60270ef2da', N'8f07a4b7-a85e-4f8e-bc32-c7a4279f030c', N'8820159f-19d5-4f73-a104-7cd3fe89e0e7', N'Memória XPG Spectrix D41 TUF, RGB, 8GB, 3000MHz', 1, CAST(358.00 AS Decimal(18, 2)), N'1e7a4072-4071-45bd-904a-9c97d0b2489b_memoria-xpg.jpg')
INSERT [dbo].[PedidoItems] ([Id], [PedidoId], [ProductId], [ProductName], [Amount], [ValorUnitario], [ProductImage]) VALUES (N'50e332a8-4609-4728-b1ff-c290f5fa6145', N'0460b990-7b33-4874-90f0-bfd31d636466', N'146d18a4-ca7d-48df-bb46-ff962b8292bc', N'Processador AMD Ryzen Threadripper 3990X', 1, CAST(26790.00 AS Decimal(18, 2)), N'8e176b7d-eb22-46dc-a769-8f9951085846_processador-amd-3990x.jpg')
GO
INSERT [dbo].[Pedidos] ([Id], [Codigo], [ClientId], [VoucherId], [VoucherUtilizado], [Desconto], [ValorTotal], [DataCadastro], [PedidoStatus], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado]) VALUES (N'80503579-ebae-4e16-9b77-1dd17d4a354a', 1013, N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(20747.00 AS Decimal(18, 2)), CAST(N'2021-02-24T12:03:44.6835630' AS DateTime2), 1, N'Rua Zumbi dos Palmares', N'1612', N'', N'Torrões', N'50660-030', N'Recife', N'PE')
INSERT [dbo].[Pedidos] ([Id], [Codigo], [ClientId], [VoucherId], [VoucherUtilizado], [Desconto], [ValorTotal], [DataCadastro], [PedidoStatus], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado]) VALUES (N'360ac7f3-a9a8-460b-9ac5-3d313fc2d980', 1011, N'34e98503-03a0-4e74-8692-7db9d8d206bb', N'15836256-13a9-4bf2-8607-44c0464b5599', 1, CAST(28643.95 AS Decimal(18, 2)), CAST(28643.95 AS Decimal(18, 2)), CAST(N'2020-12-11T16:02:26.4032474' AS DateTime2), 1, N'Rua Zumbi dos Palmares', N'1615', N'', N'Torrões', N'50660-030', N'Recife', N'PE')
INSERT [dbo].[Pedidos] ([Id], [Codigo], [ClientId], [VoucherId], [VoucherUtilizado], [Desconto], [ValorTotal], [DataCadastro], [PedidoStatus], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado]) VALUES (N'e6866d5b-ccd3-4191-975c-91de2757f4f3', 1016, N'8e0881aa-3816-46e6-9253-0248a33364fd', NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(8699.00 AS Decimal(18, 2)), CAST(N'2021-02-24T12:26:57.5703004' AS DateTime2), 1, N'Rua Nissin Bensoussan', N'1365', N'', N'Cordeiro', N'50630-030', N'Recife', N'PE')
INSERT [dbo].[Pedidos] ([Id], [Codigo], [ClientId], [VoucherId], [VoucherUtilizado], [Desconto], [ValorTotal], [DataCadastro], [PedidoStatus], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado]) VALUES (N'7cacd663-f577-4c82-b672-9faeb3f45079', 1012, N'5c8703a7-0e2a-469f-b5f0-f7ee8e0c78ac', N'15836256-13a9-4bf2-8607-44c0464b5599', 1, CAST(20507.00 AS Decimal(18, 2)), CAST(20507.00 AS Decimal(18, 2)), CAST(N'2020-12-28T12:12:20.9650413' AS DateTime2), 1, N'Rua Zumbi dos Palmares', N'1615', N'', N'Torrões', N'50660-030', N'Recife', N'PE')
INSERT [dbo].[Pedidos] ([Id], [Codigo], [ClientId], [VoucherId], [VoucherUtilizado], [Desconto], [ValorTotal], [DataCadastro], [PedidoStatus], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado]) VALUES (N'0460b990-7b33-4874-90f0-bfd31d636466', 1014, N'4f60aa69-ac1f-4bac-856a-f14c90ff2422', NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(26790.00 AS Decimal(18, 2)), CAST(N'2021-02-24T12:24:00.7417645' AS DateTime2), 1, N'Rua Francisco Cortez', N'1365', N'', N'Cordeiro', N'50630-630', N'Recife', N'PE')
INSERT [dbo].[Pedidos] ([Id], [Codigo], [ClientId], [VoucherId], [VoucherUtilizado], [Desconto], [ValorTotal], [DataCadastro], [PedidoStatus], [Logradouro], [Numero], [Complemento], [Bairro], [Cep], [Cidade], [Estado]) VALUES (N'8f07a4b7-a85e-4f8e-bc32-c7a4279f030c', 1015, N'4f60aa69-ac1f-4bac-856a-f14c90ff2422', NULL, 0, CAST(0.00 AS Decimal(18, 2)), CAST(358.00 AS Decimal(18, 2)), CAST(N'2021-02-24T12:25:02.4334796' AS DateTime2), 1, N'Rua Francisco Cortez', N'1365', N'', N'Cordeiro', N'50630-630', N'Recife', N'PE')
GO
INSERT [dbo].[Products] ([Id], [Name], [Active], [Description], [Model], [Brand], [Price], [Amount], [Image], [RegisterDate], [CategoryId]) VALUES (N'e22a932b-8ed2-4893-87c7-229192ebd49e', N'Processador Intel i9', 1, N'Processador Intel i9 9k series', N'9k Series', N'Intel', CAST(1000.00 AS Decimal(9, 2)), 30, 0x35343263623236652D353334302D346633352D623866372D3563303061363933663066385F69392E706E67, CAST(N'2020-10-15T12:06:49.0130971' AS DateTime2), N'75267f90-812e-4e4e-93b9-de049d5838c7')
INSERT [dbo].[Products] ([Id], [Name], [Active], [Description], [Model], [Brand], [Price], [Amount], [Image], [RegisterDate], [CategoryId]) VALUES (N'18843125-c98c-4bf6-bdb8-2972a9628cec', N'Fonte Corsair 1200W 80 Plus Platinum Modular AX1200i', 1, N'Corsair Fonte 1200W AX1200i Power Supply - CP-9020008.', N'AX1200i', N'Corsair', CAST(3499.00 AS Decimal(9, 2)), 0, 0x63653533313035312D636237312D346266342D613938642D6334346161623065323438635F666F6E74652D636F72736169722E6A7067, CAST(N'2020-12-03T11:11:15.9212475' AS DateTime2), N'a7b282fc-04bf-442c-96ab-0573ef19e4ce')
INSERT [dbo].[Products] ([Id], [Name], [Active], [Description], [Model], [Brand], [Price], [Amount], [Image], [RegisterDate], [CategoryId]) VALUES (N'dace2320-c550-4fc8-af17-2ea5f5b23f3b', N'HD LaCie Externo 2Big Dock Thunderbolt 3, 8TB', 1, N'O LaCie 2big Dock oferece tudo o que você espera de nossos produtos. Capacidade elevada, velocidades extremamente rápidas e unidades de classe empresarial mas é mais que isso. Porta por porta, slot por slot, nós projetamos um poderoso docking station que agiliza seu espaço criativo. Alimentado por um único cabo, o LaCie 2big Dock simplifica e centraliza o seu ambiente de trabalho conectando-se diretamente ao seu laptop e outros dispositivos.', N'STGB8000400', N'LaCie', CAST(4298.00 AS Decimal(9, 2)), 15, 0x65373737633035612D323737622D343335622D626363652D3539373435643532346339365F68642D65787465726E6F2D3874622E6A7067, CAST(N'2020-12-03T11:07:16.8835642' AS DateTime2), N'db71ad8c-a219-4844-97b9-aa6198ea2426')
INSERT [dbo].[Products] ([Id], [Name], [Active], [Description], [Model], [Brand], [Price], [Amount], [Image], [RegisterDate], [CategoryId]) VALUES (N'fb534d05-aec7-4a80-8cd2-5f35ae2e7b64', N'Memória XPG Spectrix D41 TUF, RGB, 8GB, 3000MHz', 1, N'Memória Adata XPG Spectrix D41, excelente performance e uma iluminação RGB poderosa, a peça que faltava para o upgrade do seu sistema. A linha Spectrix D41 proporciona overclocking rápidos e alta performance para jogos.', N'D41 xaxa', N'XPG', CAST(358.00 AS Decimal(9, 2)), 0, 0x37343062656638332D656131612D343232362D613139332D6430326362646238326639635F6D656D6F7269612D7870672E6A7067, CAST(N'2020-12-04T19:32:56.3578230' AS DateTime2), N'd9e22f02-b2ba-4068-90eb-f895c9126898')
INSERT [dbo].[Products] ([Id], [Name], [Active], [Description], [Model], [Brand], [Price], [Amount], [Image], [RegisterDate], [CategoryId]) VALUES (N'91682c2a-cee8-4342-9cc9-60929d925137', N'Placa de Vídeo Gainward NVIDIA GeForce NV RTX3090, 24GB', 1, N'Placa de Vídeo Gainward NVIDIA GeForce NV RTX3090, 24GB, GDDR6X - NED3090019SB-132BX.', N'NED3090019SB-132BX', N'Gainward', CAST(16449.00 AS Decimal(9, 2)), 20, 0x37316265633237642D343563612D346232332D383032642D3665323932363164323466315F727478333039302D323467622E6A7067, CAST(N'2020-12-03T10:58:56.4898694' AS DateTime2), N'267a4206-e81a-4307-bdc3-8e66ce700448')
INSERT [dbo].[Products] ([Id], [Name], [Active], [Description], [Model], [Brand], [Price], [Amount], [Image], [RegisterDate], [CategoryId]) VALUES (N'04d8cee7-c3ba-4cfb-8178-7b2dcb47a627', N'SSD Gigabyte Aorus Gen4 2TB, M.2 NVMe', 1, N'Com o novo controlador PCIe 4.0, o AORUS NVMe Gen 4 SSD oferece velocidades incríveis de até 5.000 MB/s para leitura e até 4.400 MB / s para gravação sequencial. O desempenho de leitura sequencial dos SSDs PCIe 4.0 é até 40% mais rápido que os PCIe 3.0.', N'GP-ASM2NE6200TTTD', N'Aorus', CAST(3961.00 AS Decimal(9, 2)), 50, 0x61306336366363322D363632352D346630302D626434392D6334666166376662306264325F7373642D616F72757330312E6A7067, CAST(N'2020-12-02T17:33:20.4819615' AS DateTime2), N'2eec9124-2e33-45cf-87cf-b088320ca2e3')
INSERT [dbo].[Products] ([Id], [Name], [Active], [Description], [Model], [Brand], [Price], [Amount], [Image], [RegisterDate], [CategoryId]) VALUES (N'8820159f-19d5-4f73-a104-7cd3fe89e0e7', N'Memória XPG Spectrix D41 TUF, RGB, 8GB, 3000MHz', 1, N'Memória Adata XPG Spectrix D41, excelente performance e uma iluminação RGB poderosa, a peça que faltava para o upgrade do seu sistema. A linha Spectrix D41 proporciona overclocking rápidos e alta performance para jogos.', N'AX4U300038G16-SB41', N'XPG', CAST(358.00 AS Decimal(9, 2)), 10, 0x31653761343037322D343037312D343562642D393034612D3963393764306232343839625F6D656D6F7269612D7870672E6A7067, CAST(N'2020-12-03T10:45:13.4097159' AS DateTime2), N'6d931cad-31ef-4365-a3f8-fdca5a1bc678')
INSERT [dbo].[Products] ([Id], [Name], [Active], [Description], [Model], [Brand], [Price], [Amount], [Image], [RegisterDate], [CategoryId]) VALUES (N'6fda97de-d4ca-47ba-8228-99136a6850ff', N'SSD Gigabyte Aorus Gen4 2TB, M.2 NVMe', 1, N'Com o novo controlador PCIe 4.0, o AORUS NVMe Gen 4 SSD oferece velocidades incríveis de até 5.000 MB/s para leitura e até 4.400 MB / s para gravação sequencial. O desempenho de leitura sequencial dos SSDs PCIe 4.0 é até 40% mais rápido que os PCIe 3.0.', N'GP-ASM2NE6200TTTD', N'Aorus', CAST(3961.00 AS Decimal(9, 2)), 35, 0x62336138363430362D306665632D343263332D383135312D3063303637313536333465315F7373642D616F72757330312E6A7067, CAST(N'2020-12-03T11:09:10.0714984' AS DateTime2), N'53ad7b9a-4aa4-49fa-acd9-56ca49168833')
INSERT [dbo].[Products] ([Id], [Name], [Active], [Description], [Model], [Brand], [Price], [Amount], [Image], [RegisterDate], [CategoryId]) VALUES (N'5d4eb5af-4c1d-431e-b15e-9f8c5017b9e4', N'Placa-Mãe Gigabyte X299X Aorus Xtreme Waterforce p/ Intel', 1, N'Design inovador, funcionalidade de ponta, estética de ponta, design térmico sofisticado, conectividade de rede de última geração, sistema de áudio de nível Hi-Fi. X299X AORUS XTREME WATERFORCE é a nova definição de uma placa-mãe principal. O X299X AORUS XTREME WATERFORCE usa o primeiro monobloco de CPU / VRM / SSD / PCH do mundo.', N'X299X Aorus Xtreme Waterforce', N'Intel', CAST(14590.00 AS Decimal(9, 2)), 35, 0x61373433386265342D616332332D343134342D626536302D6662353063353766653863375F706C6163612D6D61652D78323939782E6A7067, CAST(N'2020-12-02T17:37:57.3138083' AS DateTime2), N'6472cfa7-db79-4238-8dd4-96975ee0b8db')
INSERT [dbo].[Products] ([Id], [Name], [Active], [Description], [Model], [Brand], [Price], [Amount], [Image], [RegisterDate], [CategoryId]) VALUES (N'2aa11080-7cbf-4690-b706-bed2bf11b517', N'Placa-Mãe Gigabyte TRX40 Aorus Xtreme', 1, N'Placa-Mãe Gigabyte TRX40 Aorus Xtreme, AMD TRX4, XL-ATX, DDR4.', N'TRX40 AORUS XTREME', N'AMD', CAST(8699.00 AS Decimal(9, 2)), 10, 0x66303530643437352D376366332D343636362D393233642D6439626566613533643731305F706C6163612D6D61652D74727834302E6A7067, CAST(N'2020-12-02T17:40:06.1040602' AS DateTime2), N'6472cfa7-db79-4238-8dd4-96975ee0b8db')
INSERT [dbo].[Products] ([Id], [Name], [Active], [Description], [Model], [Brand], [Price], [Amount], [Image], [RegisterDate], [CategoryId]) VALUES (N'f014aafb-d417-4904-89de-e523cad0db55', N'Water Cooler Cooler Master Masterliquid ML360P', 1, N'Esta MasterLiquid ML360P Silver Edition utiliza uma bomba de perfil baixo e câmara dupla que trabalha para melhorar o desempenho e tem maior durabilidade em relação aos projetos de bomba de câmara única.', N'MLY-D36M-A18PA-R1', N'Cooler Master', CAST(1790.00 AS Decimal(9, 2)), 50, 0x64343630333363342D376634322D346361342D386238352D3131383766653439363964635F77617465722D636F6F6C657230312E6A7067, CAST(N'2020-12-02T17:28:24.7885878' AS DateTime2), N'36866bc2-1c68-4d53-9d88-208cfd627c55')
INSERT [dbo].[Products] ([Id], [Name], [Active], [Description], [Model], [Brand], [Price], [Amount], [Image], [RegisterDate], [CategoryId]) VALUES (N'd8995131-6e23-42b7-bb7f-f0280ee882cd', N'Gabinete Gamer Cooler Master MasterCase Cosmos C700M, RGB', 1, N'O design exclusivo suporta um layout convencional, inverso ou um layout totalmente personalizado. Cada parte do produto permite um alto nível de versatilidade. De suportes multifuncionais a opções no posicionamento de componentes, o COSMOS C700M incentiva a liberdade na criação e na personalização imediata.', N'MCC-C700M-MG5N-S00', N'Cooler Master', CAST(3799.90 AS Decimal(9, 2)), 0, 0x31653037363564632D646564362D346634302D616135332D6237306662656134663235665F676162696E6574652D67616D65722D636F6F6C65722D6D61737465722E6A7067, CAST(N'2020-12-03T11:14:18.1403962' AS DateTime2), N'cd7d28d1-72fa-41d1-8ab5-86dd4bbf2df3')
INSERT [dbo].[Products] ([Id], [Name], [Active], [Description], [Model], [Brand], [Price], [Amount], [Image], [RegisterDate], [CategoryId]) VALUES (N'146d18a4-ca7d-48df-bb46-ff962b8292bc', N'Processador AMD Ryzen Threadripper 3990X', 1, N'Aprovado por Hollywood - O AMD Ryzen Threadripper da 3ª Geraç;ão já; demonstrou seu valor para artistas de efeitos especiais de grandes estúdios de cinema. 
 
Com 64 núcleos surpreendentes e 128 threads de multiprocessamento simultâneo, enquanto 288 MB de cache combinados no amplo I/O da plataforma AMD TRX40 trabalham juntos para oferecer um desempenho incrí;vel.', N'100-100000163WOF', N'AMD', CAST(26790.00 AS Decimal(9, 2)), 10, 0x38653137366237642D656232322D343664632D613736392D3866393935313038353834365F70726F6365737361646F722D616D642D33393930782E6A7067, CAST(N'2020-12-02T17:43:05.7899581' AS DateTime2), N'75267f90-812e-4e4e-93b9-de049d5838c7')
GO
INSERT [dbo].[Thread] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [OwnerId], [OponentId]) VALUES (N'3d5daccc-0828-4611-920d-9ca64eb70284', 0, NULL, CAST(N'2020-11-02T12:36:40.5993541' AS DateTime2), NULL, N'777b88dc-5cf8-4a14-b496-2035f2e2982f', N'8bff0ffc-b26e-4dcd-a168-1947b2c82daf')
INSERT [dbo].[Thread] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [OwnerId], [OponentId]) VALUES (N'4fbfd655-075f-4406-bcbd-a9009d593f93', 0, NULL, CAST(N'2020-11-02T12:03:59.5099458' AS DateTime2), NULL, N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'777b88dc-5cf8-4a14-b496-2035f2e2982f')
INSERT [dbo].[Thread] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [OwnerId], [OponentId]) VALUES (N'77fccd7b-85df-4dbb-b79a-e2ab923b99e2', 0, NULL, CAST(N'2020-11-02T14:51:27.5205900' AS DateTime2), NULL, N'34e98503-03a0-4e74-8692-7db9d8d206bb', N'777b88dc-5cf8-4a14-b496-2035f2e2982f')
INSERT [dbo].[Thread] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [OwnerId], [OponentId]) VALUES (N'a0212573-acea-43ae-8b30-1fba0c31ccdd', 0, NULL, CAST(N'2020-11-02T12:39:09.0426404' AS DateTime2), NULL, N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361', N'8bff0ffc-b26e-4dcd-a168-1947b2c82daf')
INSERT [dbo].[Thread] ([Id], [isDeleted], [DeletedOn], [CreatedOn], [ModifiedOn], [OwnerId], [OponentId]) VALUES (N'e0b9518d-26af-4d6c-ae39-0c8fa99ce5f2', 0, NULL, CAST(N'2020-11-05T19:13:41.1304092' AS DateTime2), NULL, N'34e98503-03a0-4e74-8692-7db9d8d206bb', N'87c5dcce-bcb9-4bc2-aa10-cef3872fa361')
GO
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'69984d1a-ecb2-4bc7-8490-000170e5a3ac', N'', N'MasterCard', CAST(N'2020-12-28T12:24:31.7775647' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'167b1e96-01aa-4c55-b24c-00743ecb3271', N'', N'MasterCard', CAST(N'2020-12-28T12:28:46.7805139' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'01e63cbe-f257-4aab-90b1-0173340b2381', N'', N'MasterCard', CAST(N'2021-02-24T12:05:53.5777541' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'bdc7e10a-78ad-49de-b6f4-025b61107323', N'', N'MasterCard', CAST(N'2020-12-28T11:50:02.8118982' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'a950f7c5-24ad-4c95-91ca-02849b455dfa', N'', N'MasterCard', CAST(N'2020-12-28T11:20:16.7766824' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'727ca5a0-72ce-4368-a428-02f4686bc1e0', N'', N'MasterCard', CAST(N'2020-12-28T11:49:01.7945418' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f47b01c3-263f-4ef5-86d8-0470213af48c', N'', N'MasterCard', CAST(N'2020-12-28T11:56:17.3866810' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'69ed899f-f683-4cd8-9708-049d6d2f593b', N'', N'MasterCard', CAST(N'2020-12-28T12:02:31.7964098' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'4a50232c-c81c-4d56-8ac8-04e45136fb8a', N'', N'MasterCard', CAST(N'2021-02-24T11:58:23.5978218' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'2909f6b1-25a1-4762-b3ae-058a0f56db0a', N'', N'MasterCard', CAST(N'2020-12-28T12:19:46.7770808' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'96394d89-ce9f-406c-b6af-0681babd547b', N'', N'MasterCard', CAST(N'2021-02-24T12:05:08.5762542' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'e316b6df-fe9c-4490-8902-06a015dc7988', N'', N'MasterCard', CAST(N'2020-12-28T11:54:02.3329919' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'1056f630-bbf5-435b-ab8a-06ae499f9537', N'WGWFB1E00O', N'MasterCard', CAST(N'2021-02-24T12:24:30.8521508' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'7a079b92-35a2-4c54-bd27-0776b93030dd', N'', N'MasterCard', CAST(N'2021-02-24T12:04:38.5905582' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'4604f46d-01c4-4b0a-9a6e-091810b97895', N'', N'MasterCard', CAST(N'2020-12-28T11:31:16.7651438' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'1c6972b2-48e7-40bd-8685-0982c9dff4af', N'', N'MasterCard', CAST(N'2020-12-28T11:53:02.1552081' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'298ffdd0-9d93-4c04-b2af-099576d8952c', N'', N'MasterCard', CAST(N'2020-12-28T11:29:01.7696269' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'60ec42f3-54c9-4742-ba14-0a467be8f113', N'', N'MasterCard', CAST(N'2020-12-28T11:40:31.7746155' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'ac8eb2e2-71f3-485d-acce-0aaf97aed23b', N'', N'MasterCard', CAST(N'2020-12-28T11:29:46.7882170' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'72323fee-9873-439e-b565-0b0b4ca6c9bc', N'', N'MasterCard', CAST(N'2020-12-28T11:57:47.0039951' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'34a80436-15a0-4407-82cd-0c027f42d83d', N'', N'MasterCard', CAST(N'2020-12-28T11:28:16.7808607' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'e2fc382f-ad2f-4244-984b-0c4ca9d83c33', N'', N'MasterCard', CAST(N'2020-12-28T12:18:16.7825930' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'719401f5-efb4-4129-b9f2-0c846d537fbd', N'E4RWI2LG9O', N'MasterCard', CAST(N'2020-12-11T16:02:52.0295224' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'4f2124f8-12c9-4218-868f-0cb6fdbbc060', N'', N'MasterCard', CAST(N'2020-12-28T11:55:01.9676279' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'cb6f501c-79ed-4180-b254-0daa6f3e4c1d', N'', N'MasterCard', CAST(N'2020-12-28T11:26:01.7943731' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'4a3def1a-eb17-414d-80e7-0e22e1ec6615', N'', N'MasterCard', CAST(N'2020-12-28T12:02:16.8856552' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'87654da8-ef74-4701-a45d-0f30d56d632e', N'', N'MasterCard', CAST(N'2020-12-28T12:17:31.7597171' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'621b0360-bf89-46dd-be71-0f5ed5890fe3', N'TR4705W3D1', N'MasterCard', CAST(N'2021-02-24T12:26:57.5455396' AS DateTime2), CAST(8699.00 AS Decimal(18, 2)), CAST(260.97 AS Decimal(18, 2)), 1, N'26C4LD1J7V', N'OO99PS7OAS', N'f08818b2-82ab-4291-b8ed-460fb097d865')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'72d6dc57-79ad-495d-a719-0fcbf6243f8d', N'', N'MasterCard', CAST(N'2020-12-28T12:19:01.7865281' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'47dbf7ab-ce41-476b-934b-0ff25cafe77b', N'', N'MasterCard', CAST(N'2020-12-28T11:44:31.7697464' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'8a11258c-de6f-4086-839d-107891756347', N'', N'MasterCard', CAST(N'2020-12-28T11:46:01.7657908' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b8d4ad0d-de31-4409-87bf-10db903ad26b', N'SX2ETGKV80', N'MasterCard', CAST(N'2021-02-24T12:03:44.2761393' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(622.41 AS Decimal(18, 2)), 1, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'8278952a-cfb6-4fbf-9f2e-11d72a31575b', N'', N'MasterCard', CAST(N'2020-12-28T11:33:46.7652002' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'545e41a1-5f6a-4e14-b2ba-121f439b415c', N'K3FLPTZR0A', N'MasterCard', CAST(N'2021-02-24T12:25:45.8734747' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'905adbd5-90cb-4c62-b2f9-1265820be068', N'', N'MasterCard', CAST(N'2020-12-28T11:59:46.8126797' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'9306222f-2490-45ae-978c-1283e5a438cf', N'', N'MasterCard', CAST(N'2020-12-28T11:54:48.7851833' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'3728690e-78ee-462b-9d45-12988a1ed565', N'', N'MasterCard', CAST(N'2020-12-28T11:20:31.7883033' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'92750b6c-d2a5-49e9-bf5e-129d8ce9d72e', N'', N'MasterCard', CAST(N'2020-12-28T11:35:01.7985087' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'1cb4d8e8-5819-4d66-b450-139979b6115f', N'', N'MasterCard', CAST(N'2020-12-28T11:25:16.7629399' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'dcd14800-515e-4c29-aa70-14d537ac6423', N'', N'MasterCard', CAST(N'2020-12-28T12:09:01.7782550' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'9572a766-c541-4d7c-8fe0-158a48c17d69', N'', N'MasterCard', CAST(N'2021-02-24T12:17:17.4986616' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'02023963-0c06-4999-bc95-15e1de3a1384', N'', N'MasterCard', CAST(N'2020-12-28T11:31:01.7717285' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'224a63cb-982a-441e-a50b-16a26c46d3cb', N'', N'MasterCard', CAST(N'2020-12-28T12:25:31.7596143' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'8e8375c1-d16d-4c84-bdcc-16c8fa3a24a9', N'', N'MasterCard', CAST(N'2020-12-28T11:58:46.7815969' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'20971e7f-2955-44d2-b6ba-16d7c6efe198', N'', N'MasterCard', CAST(N'2020-12-28T11:24:16.7599416' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'57592452-330b-4481-940d-16ebff6e7135', N'', N'MasterCard', CAST(N'2020-12-28T12:19:31.7895398' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'02ecb691-ea03-4262-9452-18830833b71b', N'', N'MasterCard', CAST(N'2021-02-24T11:59:08.5729370' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f319d31b-2f09-482f-a3ac-193b57a9ddcc', N'2NLWVJSV0Q', N'MasterCard', CAST(N'2021-02-24T12:27:30.8561692' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'e76ea664-38a8-4d88-a960-194dc420449a', N'', N'MasterCard', CAST(N'2021-02-24T12:20:15.8441203' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b32f9f63-6a17-43bc-8359-1c2408ef5b32', N'', N'MasterCard', CAST(N'2020-12-28T11:34:31.7757890' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'cc862e2d-039b-4138-b9a9-1cb699cdcff4', N'', N'MasterCard', CAST(N'2020-12-28T11:52:47.1790318' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'373f44be-6a79-41d1-afde-1e8449a9c040', N'', N'MasterCard', CAST(N'2021-02-24T12:22:15.8519427' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'80bc0e84-74f1-4637-bd39-1f4c945053ae', N'', N'MasterCard', CAST(N'2020-12-28T11:37:46.7678073' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'283189d5-08f4-45a8-a561-20b44d22c9a4', N'', N'MasterCard', CAST(N'2020-12-28T12:05:01.7906553' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b20f821e-8298-4d46-9540-21e9314de4dc', N'', N'MasterCard', CAST(N'2020-12-28T11:52:16.8508297' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'53ebe3cf-2153-4739-b099-2202a84fcd76', N'', N'MasterCard', CAST(N'2020-12-28T11:52:31.8192036' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'6c63005e-a67a-4cc0-b9e3-22945ce06755', N'', N'MasterCard', CAST(N'2021-02-24T12:04:23.5865449' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'59d3d7bd-9483-40b1-a59f-232c6eed8896', N'', N'MasterCard', CAST(N'2020-12-28T11:59:31.7727044' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f9aede0c-8a3f-4c88-a94c-2451f8d565a9', N'', N'MasterCard', CAST(N'2020-12-28T11:57:01.7921743' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'58f5d30f-ff43-4c2a-83b9-24e6a377d334', N'', N'MasterCard', CAST(N'2020-12-28T11:41:46.7798678' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b3d660fa-d3b4-48d4-8d7f-2518255fc3d2', N'', N'MasterCard', CAST(N'2020-12-28T11:20:01.7710173' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'98b3534d-b3ad-4771-97cd-25e597a2fbbf', N'', N'MasterCard', CAST(N'2021-02-24T12:17:17.4986826' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'd61a6af0-4526-46cb-a969-25f3d85a8bda', N'V1J0UEO8AQ', N'MasterCard', CAST(N'2020-12-28T12:03:01.9684265' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'0f58041f-c729-4d5a-9864-29a33078702a', N'', N'MasterCard', CAST(N'2021-02-24T12:21:00.8738887' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'7a116a96-1ae3-4bd6-a6a4-2b4d1281cb70', N'', N'MasterCard', CAST(N'2021-02-24T12:05:38.5693704' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'58a42532-471e-46cf-8300-2b5b7c90ef26', N'AQBH4DCKXG', N'MasterCard', CAST(N'2021-02-24T12:25:00.8461673' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'2ab42763-9e82-4b00-bcd0-2bac9394d4fb', N'', N'MasterCard', CAST(N'2020-12-28T11:19:01.7969505' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'e8726b04-7748-4ad4-ac18-2bcd878e9487', N'', N'MasterCard', CAST(N'2020-12-28T12:23:31.7896153' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'60911d8f-d806-4f2f-8700-2c7da280bffc', N'', N'MasterCard', CAST(N'2020-12-28T11:28:46.7834309' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'aabde3c9-7a4a-4ec0-9dea-2cb713fc5e12', N'', N'MasterCard', CAST(N'2020-12-28T12:13:46.7713682' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'4c98df38-e61a-47f7-8bf9-2cdae6adbcb4', N'', N'MasterCard', CAST(N'2020-12-28T11:30:16.7786175' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'ad106849-5dc3-4ccd-8dbd-2d45ac3a9cbc', N'', N'MasterCard', CAST(N'2021-02-24T12:01:08.5820210' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'4987e1d6-a912-456f-b52c-2d850fd21762', N'', N'MasterCard', CAST(N'2020-12-28T11:23:16.8031446' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'3ee6dbb6-8b84-44c1-b951-2eeeabd28552', N'', N'MasterCard', CAST(N'2021-02-24T12:00:53.5931655' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'aaa92a0b-2e6f-4255-9068-2f27fee6cdda', N'', N'MasterCard', CAST(N'2020-12-28T12:07:01.7710832' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'4d757821-c20d-41c7-9685-3075db2aad56', N'', N'MasterCard', CAST(N'2020-12-28T12:22:31.7712623' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'6beee293-30ab-48c6-a18b-32890cc2a3a9', N'', N'MasterCard', CAST(N'2020-12-28T11:54:16.7861471' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'ceff0566-c897-4a53-ad5e-32e9974472db', N'', N'MasterCard', CAST(N'2020-12-28T11:56:46.8113192' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'16e049c8-8676-44dd-8010-335edd0f2d07', N'', N'MasterCard', CAST(N'2021-02-24T12:19:45.8504758' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'9c011e48-aa11-4d20-b95e-33635df37a46', N'', N'MasterCard', CAST(N'2020-12-28T11:58:01.7763951' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'9e4674d7-a6f3-4fff-895d-33b4cfb8789a', N'', N'MasterCard', CAST(N'2020-12-28T11:52:01.7977736' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'23503921-f61b-4182-85c6-33db2496401c', N'', N'MasterCard', CAST(N'2020-12-28T11:55:31.7747265' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'44a126d6-93a7-4bfe-8c68-354142ca52fe', N'GEDWYNAQQP', N'MasterCard', CAST(N'2021-02-24T12:25:02.4090067' AS DateTime2), CAST(358.00 AS Decimal(18, 2)), CAST(10.74 AS Decimal(18, 2)), 1, N'30W2QGPLWX', N'VA5SVOTT7M', N'6b3edbe6-a4e4-4072-a5a1-cf53239c98ed')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'333e02cc-7dbd-42da-b409-3552d82d0129', N'', N'MasterCard', CAST(N'2020-12-28T11:33:16.7851036' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'd4bd204a-a15f-4580-bbe0-357687a3c1d8', N'', N'MasterCard', CAST(N'2021-02-24T12:04:53.5628725' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'38717be6-14c9-4f14-b6ae-36ec811dae2d', N'', N'MasterCard', CAST(N'2021-02-24T12:22:30.8626244' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'7e5d375b-87e7-4209-a774-379a979ab167', N'JN3VFZYVJ6', N'MasterCard', CAST(N'2020-12-28T12:03:31.8782627' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'a7ad6eb8-d376-481a-852e-37a7e71fbd11', N'', N'MasterCard', CAST(N'2020-12-28T12:14:46.7739569' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'65c9d75a-5555-4ee4-9837-37be29338bd1', N'', N'MasterCard', CAST(N'2020-12-28T12:17:46.7805788' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'e5cd093b-1e3c-4311-9b7f-37c89c781268', N'WGE3A7U31P', N'MasterCard', CAST(N'2020-12-28T12:03:46.8480730' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'2957b520-c645-474e-af30-39cc7458d816', N'', N'MasterCard', CAST(N'2020-12-28T12:07:46.7805827' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'5d16de18-8ce6-4de1-bdb2-3a2519556874', N'', N'MasterCard', CAST(N'2020-12-28T11:39:01.7635346' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'263ca852-ec83-4c14-be6a-3ac29780f059', N'', N'MasterCard', CAST(N'2020-12-28T11:53:16.7775222' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'e1b12fc3-3168-43af-8724-3d0438907bff', N'', N'MasterCard', CAST(N'2020-12-28T11:54:31.9162623' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'd4a60b76-aaa7-44f0-a195-3e8f4efcf835', N'', N'MasterCard', CAST(N'2020-12-28T11:40:46.7629175' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'4794d283-7bef-4557-bc74-3f9566a8d669', N'', N'MasterCard', CAST(N'2020-12-28T11:27:16.7749404' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'fb92d4f7-21df-4489-ba22-3fdce3422568', N'', N'MasterCard', CAST(N'2020-12-28T11:37:16.7741289' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'85184e4a-bcc8-4722-bcc7-40eeb06a4b07', N'', N'MasterCard', CAST(N'2020-12-28T12:23:46.7871292' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'6fa2102c-156e-496a-aa98-428549c3e8fe', N'', N'MasterCard', CAST(N'2020-12-28T11:47:31.7925137' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'14520905-a924-42c1-9d36-428989c70db0', N'', N'MasterCard', CAST(N'2020-12-28T12:16:16.9201864' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
GO
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'3ea148b5-2271-4e0c-9e23-42b0f7364422', N'KLL9LOB6C9', N'MasterCard', CAST(N'2021-02-24T12:02:23.6357506' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'369241bc-fca1-4001-8a69-42d9a026bca7', N'', N'MasterCard', CAST(N'2020-12-28T11:56:31.9196796' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f9c87168-94af-4dfd-be7f-435685bc5e30', N'', N'MasterCard', CAST(N'2021-02-24T12:06:38.5944159' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'7f796d6f-2079-4463-8e17-436b8ff7e51d', N'GK0IX6822Z', N'MasterCard', CAST(N'2021-02-24T12:26:15.8580622' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'686481f1-889b-4f7d-98f2-43a381301474', N'', N'MasterCard', CAST(N'2020-12-28T11:49:16.7815424' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'e98dbdea-dd63-4b76-bf3c-447a63f9146a', N'', N'MasterCard', CAST(N'2020-12-28T11:43:01.7741719' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'58ad2967-eb3e-4f7a-b5b4-45c4808d56c2', N'', N'MasterCard', CAST(N'2020-12-28T11:46:16.7735640' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'299e5edc-16b7-4ba3-b2ab-467a95ebc525', N'', N'MasterCard', CAST(N'2021-02-24T12:06:08.5753585' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'85c09e12-b712-489d-a504-469f2639f129', N'', N'MasterCard', CAST(N'2020-12-28T11:47:01.7894017' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'fb6a5214-4082-4eb0-9131-4780d06908c4', N'', N'MasterCard', CAST(N'2020-12-28T11:43:46.7663808' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'ee98fa64-2158-4f67-a1d7-484d3accd05c', N'', N'MasterCard', CAST(N'2020-12-28T12:19:16.7868025' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'53f5521e-2ef0-4f98-b7f2-486ce50b8b14', N'', N'MasterCard', CAST(N'2020-12-28T12:06:31.7750285' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'210df891-a862-4b78-9b79-4870f2e312fd', N'', N'MasterCard', CAST(N'2020-12-28T11:16:47.1316153' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'10f5d3a8-c233-450a-af5a-48dec20db82e', N'', N'MasterCard', CAST(N'2020-12-28T11:45:01.7623978' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'fd13bcba-3707-44f8-9d9f-490f0392ab94', N'', N'MasterCard', CAST(N'2020-12-28T11:43:31.7760387' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'7e46119d-b971-482d-a523-491acb017c5a', N'', N'MasterCard', CAST(N'2020-12-28T11:58:31.8106824' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'55fab420-398b-448c-8192-49992a87258c', N'', N'MasterCard', CAST(N'2020-12-28T12:05:46.7722145' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'cec90267-cae5-48db-a94a-49a1c076b987', N'', N'MasterCard', CAST(N'2020-12-28T12:24:46.8037009' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'43aa57d7-d7ac-4def-b9d7-4abb78c313ae', N'', N'MasterCard', CAST(N'2020-12-28T12:04:46.9067691' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'385689e7-735a-429c-ac02-4b1d44b5d789', N'42ZUO2FN7G', N'MasterCard', CAST(N'2021-02-24T12:27:15.8784875' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'a00f019e-820d-442e-a8d1-4b74d2e6963c', N'', N'MasterCard', CAST(N'2020-12-28T11:46:31.7737088' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'ded9505c-9604-45b2-ad19-4cf24eb72263', N'', N'MasterCard', CAST(N'2020-12-28T11:51:16.8300031' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'6cd4eb87-2b1b-4602-baaa-4d1a25d59a68', N'1GX7VFWK96', N'MasterCard', CAST(N'2021-02-24T12:24:00.3283875' AS DateTime2), CAST(26790.00 AS Decimal(18, 2)), CAST(803.70 AS Decimal(18, 2)), 1, N'XPUNDDNCVM', N'KK8CRSYN3X', N'bded40d9-7509-4cb7-9075-8fa1322dc1fd')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f4e437e2-1749-4a19-a0c0-4d992a879d21', N'', N'MasterCard', CAST(N'2021-02-24T12:07:23.5667136' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'0bfcdf33-bfd2-4bd9-ad3b-4eebeeb5a807', N'', N'MasterCard', CAST(N'2020-12-28T12:28:01.8003940' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'92b3c052-bacc-4bd1-8611-50d0359f1dc9', N'', N'MasterCard', CAST(N'2020-12-28T12:23:16.7575178' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'c74db661-99d8-4874-872f-50dac4da366a', N'', N'MasterCard', CAST(N'2020-12-28T11:34:16.7812515' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'7412a74d-73fd-4f49-8410-51b6a20d360d', N'', N'MasterCard', CAST(N'2021-02-24T11:57:53.5957713' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'9d6616be-c419-4e19-bf85-51c8bff06105', N'', N'MasterCard', CAST(N'2020-12-28T11:42:16.8721843' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'67263f8c-474f-49bc-b5cf-5215f5cc5c36', N'', N'MasterCard', CAST(N'2020-12-28T11:36:16.7633823' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'4d4236f6-433d-4ca1-83de-528b907ff1b1', N'', N'MasterCard', CAST(N'2020-12-28T11:35:46.7941368' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'2fe654eb-86af-4bc1-9104-559e75d805f3', N'', N'MasterCard', CAST(N'2020-12-28T11:41:01.7631320' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'82a5d9ca-e7e0-43d6-9cbb-5629bc4e35c8', N'1DUI293TUG', N'MasterCard', CAST(N'2021-02-24T12:26:30.8686396' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'5db873df-ef4d-4a34-a553-56596e36a7af', N'', N'MasterCard', CAST(N'2020-12-28T11:20:46.7834515' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'93bc4a50-3f21-4733-802c-581a2d699114', N'', N'MasterCard', CAST(N'2020-12-28T12:13:31.7649985' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'c9782656-380f-433a-b7b8-583760ddf330', N'', N'MasterCard', CAST(N'2020-12-28T11:51:01.7763744' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'd50992b7-2541-4550-9d67-587ddeab8161', N'', N'MasterCard', CAST(N'2021-02-24T12:01:23.5821260' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'3cae8e0a-8dac-4928-9676-599e2633d9ff', N'', N'MasterCard', CAST(N'2020-12-28T12:04:01.7899310' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'ad8ed3f5-c910-40a0-bcc9-5b2406643997', N'', N'MasterCard', CAST(N'2020-12-28T12:22:46.7960773' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'5f4108bd-ed1c-48ed-888a-5b2a8b5345e3', N'', N'MasterCard', CAST(N'2020-12-28T11:47:46.7834512' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'd3eee0a1-49e9-41ba-b779-5b4db21fdc7b', N'', N'MasterCard', CAST(N'2020-12-28T11:51:31.7719640' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'03041743-4be9-4ae1-8ca2-5b86e44d606d', N'', N'MasterCard', CAST(N'2021-02-24T11:56:38.6479948' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'1f1836e4-1d46-4ec4-8964-5bee3027b528', N'', N'MasterCard', CAST(N'2020-12-28T11:36:01.7740662' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'cbfde8ca-a99f-4f67-979f-5e2a1dd9cf29', N'', N'MasterCard', CAST(N'2020-12-28T12:01:31.8764148' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'85cfef8e-d490-4e46-9a5f-61820129abd8', N'', N'MasterCard', CAST(N'2020-12-28T11:24:01.7838797' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'74bbe237-6c8c-4543-9541-6286e018cef1', N'', N'MasterCard', CAST(N'2020-12-28T11:31:31.7622389' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'a1d27c58-45e4-4813-b198-62b9897457b1', N'', N'MasterCard', CAST(N'2020-12-28T11:16:31.9513743' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'02c0f698-88e9-4fd4-ad3d-634653b2d4fa', N'CQLYO3JAW9', N'MasterCard', CAST(N'2021-02-24T12:23:45.8706599' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f5a617eb-85c0-444b-8a54-63cb53da5aec', N'', N'MasterCard', CAST(N'2020-12-28T11:45:16.7715045' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'04a5f468-d282-4cb6-83ed-64757b78ba05', N'', N'MasterCard', CAST(N'2021-02-24T12:06:23.5676250' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'334c358d-4309-4150-a048-66f9aef20797', N'', N'MasterCard', CAST(N'2020-12-28T12:01:46.8379645' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'40abba65-552b-42a8-bb91-673db470f490', N'', N'MasterCard', CAST(N'2020-12-28T11:39:31.7634156' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f8f57a9a-1a8e-4118-9aa9-68bf42a6e2db', N'', N'MasterCard', CAST(N'2020-12-28T12:09:16.7697326' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'ad63d5e3-804c-4457-8c97-68e49053e6b9', N'', N'MasterCard', CAST(N'2020-12-28T11:27:31.7855590' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'235f92af-e711-4e70-8a3f-6994e3282bfd', N'', N'MasterCard', CAST(N'2021-02-24T11:57:23.5891438' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'03846f82-1f53-41e5-a55e-69967e747229', N'KDN3HCX679', N'MasterCard', CAST(N'2020-12-28T12:02:47.3984380' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'bc209412-9a11-48b6-bf48-69ddc3902860', N'', N'MasterCard', CAST(N'2020-12-28T11:30:46.8057888' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'c2daec92-b5f1-408b-8fa9-6a6d0d96cb16', N'', N'MasterCard', CAST(N'2020-12-28T12:06:46.8427518' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'95d9d016-d531-468e-a42c-6ad913c76d6f', N'', N'MasterCard', CAST(N'2020-12-28T11:21:02.0286896' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'c23c7d71-0dde-48fd-a5d7-6ae7f5c69737', N'', N'MasterCard', CAST(N'2020-12-28T12:11:01.7692684' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'e0f92e13-5484-4629-8258-6b244e4faffb', N'', N'MasterCard', CAST(N'2020-12-28T12:18:46.7757354' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'6f225b67-6149-4053-a53d-6be8f9362143', N'', N'MasterCard', CAST(N'2020-12-28T12:20:16.7823510' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'7442e219-80d6-433e-b125-6ce139ffdf14', N'', N'MasterCard', CAST(N'2020-12-28T12:21:31.8575942' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'59c94723-db81-448c-b59f-6d04a50d4555', N'', N'MasterCard', CAST(N'2020-12-28T12:04:31.8083265' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'2e1d994f-4e1c-4288-bf3b-6d2344889a95', N'', N'MasterCard', CAST(N'2020-12-28T11:23:01.7847509' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'3caaded1-3452-454b-9a1e-6ebe3c4a1555', N'', N'MasterCard', CAST(N'2020-12-28T11:38:46.7711822' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'724b489a-8e7a-4862-a72c-6ee8266c9ae2', N'', N'MasterCard', CAST(N'2020-12-28T11:29:16.7824606' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'4d098864-d73f-42c7-81f8-6f3c946c7598', N'', N'MasterCard', CAST(N'2021-02-24T12:21:15.8674275' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'e48da5ff-699e-4c99-b535-6f5280243981', N'', N'MasterCard', CAST(N'2021-02-24T12:18:45.8646691' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'da7d32a8-da01-47e0-9339-70d1fe688c12', N'', N'MasterCard', CAST(N'2020-12-28T11:44:46.7830097' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'9e19d782-534d-4ac4-b62e-7182312a9292', N'', N'MasterCard', CAST(N'2021-02-24T12:03:23.5681225' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'971e6b4a-45c3-4478-ab69-71909fe8d2d9', N'HUYV4BHGPM', N'MasterCard', CAST(N'2021-02-24T12:22:46.3863203' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f846ba92-3dd2-40a0-a882-721d5e0f5d93', N'', N'MasterCard', CAST(N'2020-12-28T12:26:01.8011927' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'3828b93a-16eb-4009-8224-726f7cad7167', N'', N'MasterCard', CAST(N'2020-12-28T11:19:46.7973097' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'14ca8187-f103-485e-aa38-7306c9812b0f', N'', N'MasterCard', CAST(N'2020-12-28T11:33:01.7683759' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'ef37e490-72b5-4953-9b5d-735d2c24363c', N'', N'MasterCard', CAST(N'2020-12-28T12:28:16.7912542' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'33cfaa91-0ae2-4c38-af3f-739273678960', N'', N'MasterCard', CAST(N'2020-12-28T12:18:01.7938662' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'bc1a6ee3-747f-436e-a9b5-73db9240b5a5', N'0V5W9OE9Y6', N'MasterCard', CAST(N'2020-12-28T12:03:16.9036165' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'add3bb86-5340-409f-ae1d-75285a94556b', N'', N'MasterCard', CAST(N'2020-12-28T12:01:16.7921131' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b7bdf8b4-83e1-4390-bc4f-76d427058dde', N'', N'MasterCard', CAST(N'2020-12-28T12:10:16.7767735' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'0a6b5764-15e0-4342-9a24-76fa5f3c9a18', N'', N'MasterCard', CAST(N'2021-02-24T12:00:23.5774167' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'ca3fcde5-0b24-4bb6-b2ce-770e9234ca45', N'', N'MasterCard', CAST(N'2020-12-28T12:20:01.7757983' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'4025dc77-af84-4df2-9bd2-783183109765', N'EFKY71GP3K', N'MasterCard', CAST(N'2020-12-11T16:03:37.0045675' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'23cd63d4-158c-42fe-b371-7839f44297f7', N'', N'MasterCard', CAST(N'2021-02-24T12:05:23.5798600' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'af0a6a09-5a13-4334-b269-78710439ca4e', N'', N'MasterCard', CAST(N'2020-12-28T11:24:31.7705913' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'd08bb80e-70a5-4edd-a6e3-793b6a41b5d7', N'', N'MasterCard', CAST(N'2020-12-28T11:34:46.7751024' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'bebd6dfe-7f1f-43f9-982e-793e7978d1bf', N'', N'MasterCard', CAST(N'2020-12-28T11:21:16.8032771' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'01db7e21-0b8e-4bd6-877b-797767d06227', N'', N'MasterCard', CAST(N'2020-12-28T12:15:16.7633137' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'c7bb91c1-0c2a-4086-afb2-7989338a44b2', N'', N'MasterCard', CAST(N'2020-12-28T11:18:16.7935433' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'37f99226-7b4c-472f-9113-7992257e5f35', N'', N'MasterCard', CAST(N'2021-02-24T12:19:15.9124404' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'667d96e3-af0e-4986-a51b-79a3943aa33a', N'', N'MasterCard', CAST(N'2020-12-28T11:30:31.7750080' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'd60ca3dd-935a-4b37-bdec-7aaf6ff8d6e4', N'', N'MasterCard', CAST(N'2020-12-28T11:17:32.2438730' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'c298c6ed-e6ea-47b8-a319-7ab41e50cb5c', N'', N'MasterCard', CAST(N'2020-12-28T12:13:16.8249473' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'78082a40-80b0-4d85-a2fe-7ac186c4dbc7', N'', N'MasterCard', CAST(N'2020-12-28T12:28:31.7944378' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'0dfa0a29-f87b-4fdb-b148-7b392b142a70', N'', N'MasterCard', CAST(N'2020-12-28T11:38:16.7823757' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'4ac0f4d0-93a0-42a9-bc4e-7cca66bdf112', N'RQCA3NREYB', N'MasterCard', CAST(N'2020-12-11T16:03:07.0005372' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b9fbcede-64ba-43db-9a83-7ce448810b1d', N'', N'MasterCard', CAST(N'2020-12-28T11:18:31.7803573' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'10443624-d0e3-4bd7-9090-7d223490e85c', N'', N'MasterCard', CAST(N'2020-12-28T12:05:16.8096314' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'da0a218f-30ea-497e-9a20-7d609398a0ff', N'', N'MasterCard', CAST(N'2020-12-28T12:18:31.7758640' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'4124317d-8c76-4146-a5ab-7dd350ffabc5', N'', N'MasterCard', CAST(N'2020-12-28T12:24:01.7644569' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
GO
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'65ada08a-ed41-4533-981b-7e913eecd639', N'', N'MasterCard', CAST(N'2020-12-28T12:01:01.7950932' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'39cdc798-0e17-4ad0-aabd-804c0f0863da', N'', N'MasterCard', CAST(N'2020-12-28T11:23:31.7990181' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'09e24713-1d0c-4c82-af66-80dab9ef1d2a', N'', N'MasterCard', CAST(N'2020-12-28T11:26:31.7835185' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'6f1e55af-eeb2-41a3-9425-815ab428a281', N'', N'MasterCard', CAST(N'2020-12-28T11:32:46.8034136' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'3be9b000-dcca-4d5a-9ec6-831d63dc702d', N'', N'MasterCard', CAST(N'2020-12-28T11:42:01.7743496' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'c6e28da1-791f-42b7-89b7-84145acc68b0', N'', N'MasterCard', CAST(N'2020-12-28T11:32:01.7868192' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'c0f6a606-9301-4dd9-a879-8420b7b8ec94', N'', N'MasterCard', CAST(N'2020-12-28T12:13:01.7780027' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b5ca9e1b-360d-4657-9ee2-85886eb53169', N'', N'MasterCard', CAST(N'2021-02-24T11:56:23.7234907' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b6104497-f189-4b56-95f5-8705a66adb76', N'', N'MasterCard', CAST(N'2020-12-28T11:21:46.7829666' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'6a792a2c-3a8e-487a-90ab-87308f657642', N'', N'MasterCard', CAST(N'2020-12-28T12:00:31.8076032' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'64b3d7d1-bb71-47d5-bf08-87b55d5cf59b', N'', N'MasterCard', CAST(N'2020-12-28T11:27:01.7915458' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'76a19eb2-8147-442c-ad10-88765e5ffa77', N'', N'MasterCard', CAST(N'2020-12-28T12:12:46.7916867' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'bea18477-afb7-48f9-911c-897986df6791', N'', N'MasterCard', CAST(N'2021-02-24T11:59:53.5777965' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'49359330-a678-4561-bb35-89a4f097c0bf', N'39K1HM9629', N'MasterCard', CAST(N'2021-02-24T12:23:15.8589941' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'773a6fcd-c2b6-4cd9-8388-89da9ad2ccc4', N'', N'MasterCard', CAST(N'2021-02-24T11:59:38.5887010' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'172553a9-7753-46b7-bfad-89eb4befb234', N'', N'MasterCard', CAST(N'2021-02-24T11:57:38.6265448' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'1dc987ce-865c-49b6-9f33-8a9bdae068ee', N'', N'MasterCard', CAST(N'2020-12-28T11:35:31.7919283' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'c03d3ba1-f5e0-4545-acb4-8a9fd54feffa', N'', N'MasterCard', CAST(N'2020-12-28T12:22:01.7729292' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'a96269c8-90e0-43cc-be09-8b5f1d2064d1', N'', N'MasterCard', CAST(N'2020-12-28T11:24:46.7834551' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'feb67f85-81e7-4aef-bedd-8d5575668f7b', N'', N'MasterCard', CAST(N'2020-12-28T12:27:16.7963523' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'27f9f573-0f96-4637-8838-8f047f3d8dae', N'', N'MasterCard', CAST(N'2020-12-28T11:22:31.7731734' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'09b0d1b2-2aaf-4366-8891-8f5a853c4608', N'', N'MasterCard', CAST(N'2020-12-28T11:59:02.2838963' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'80397ca2-dc9b-468f-ae4a-8fbb1664f8f6', N'', N'MasterCard', CAST(N'2021-02-24T11:56:15.5344469' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'c98b0caa-d2f8-4f7a-809d-90bdd8589835', N'', N'MasterCard', CAST(N'2020-12-28T11:42:31.7642913' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'74663d07-d6ef-4d2a-8af7-90cba367ef72', N'', N'MasterCard', CAST(N'2020-12-28T11:35:16.7729515' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'cf2aac9c-a280-4fe3-a012-90ef1e6b12c0', N'NA0DDALU5T', N'MasterCard', CAST(N'2021-02-24T12:25:30.8770853' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'bfb75d1e-d762-4b24-b800-926e216a2f21', N'KVFYZQCYAB', N'MasterCard', CAST(N'2021-02-24T12:02:08.5924133' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'a04550c5-0b50-474e-a385-932898511c7a', N'', N'MasterCard', CAST(N'2020-12-28T12:16:31.7731151' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'c3ce1695-ce50-4af7-a5c3-93ca80a692d5', N'', N'MasterCard', CAST(N'2021-02-24T12:02:53.5791218' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f1fb1dea-e0da-40be-9ac4-94643f00959e', N'', N'MasterCard', CAST(N'2020-12-28T11:56:01.8498145' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'1cc314f2-b556-46e5-ab1e-95b0237a80b7', N'', N'MasterCard', CAST(N'2020-12-28T12:27:31.7777356' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'90e07cdb-de99-40b6-8d30-981bbb9ee068', N'', N'MasterCard', CAST(N'2020-12-28T11:53:46.8905294' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'a5dd15c2-ef55-4ee4-801a-995ecb0ec794', N'', N'MasterCard', CAST(N'2021-02-24T12:17:45.8678103' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'7338cb96-0328-4783-b5a9-99c296e6a749', N'', N'MasterCard', CAST(N'2020-12-28T12:24:16.7753104' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'9238243f-0c37-473e-9e15-9a0487beb10b', N'', N'MasterCard', CAST(N'2020-12-28T12:10:31.7927480' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'4ebff77d-d7bb-42db-a607-9a05b1fef403', N'', N'MasterCard', CAST(N'2021-02-24T11:56:53.6235973' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'90d0da9f-93a9-45a6-8104-9a62020e58ce', N'', N'MasterCard', CAST(N'2021-02-24T12:03:53.5718980' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'161f9baa-f5cb-4e97-a51b-9a7576f7e7fd', N'', N'MasterCard', CAST(N'2021-02-24T12:03:38.5876409' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'5d5d1819-ad27-428b-bee2-9a966433f2f6', N'', N'MasterCard', CAST(N'2020-12-28T12:26:16.7764777' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'98e387b0-0625-4e63-bd39-9afaf6cef74a', N'', N'MasterCard', CAST(N'2020-12-28T11:48:16.9276285' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'06339f7f-3be3-4513-97d9-9b648ae2b360', N'GTH0AIYFJT', N'MasterCard', CAST(N'2020-12-28T12:12:20.5339962' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(615.21 AS Decimal(18, 2)), 1, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'd77c3265-b90b-4ce6-8938-9c40d1be4209', N'', N'MasterCard', CAST(N'2020-12-28T12:26:31.7596843' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'17c02a30-6237-4522-a6c8-9cb3c3be1cc5', N'', N'MasterCard', CAST(N'2020-12-28T12:14:01.7960440' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'68d79c68-037d-4f5a-8062-9d10cc1ce383', N'', N'MasterCard', CAST(N'2020-12-28T11:39:46.8303474' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'97e63b4e-c48e-4d4f-a44b-9d11b515a67a', N'UNJJXLQVT6', N'MasterCard', CAST(N'2021-02-24T12:23:30.8518122' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'c895e7cb-b130-402a-9143-9d5af65f6b9f', N'', N'MasterCard', CAST(N'2021-02-24T12:19:00.8457569' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'bc0b760c-844d-4684-882f-9e01a0543ea3', N'', N'MasterCard', CAST(N'2020-12-28T11:37:31.7893052' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'4c8add32-e0ae-460a-a659-9e0bac9e6ea8', N'', N'MasterCard', CAST(N'2021-02-24T11:56:15.5344585' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'09964f29-64f3-4a62-a4a4-9ea556d41cbe', N'', N'MasterCard', CAST(N'2020-12-28T12:02:02.3301596' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'e68151ba-c004-483a-96f1-a0466a356577', N'', N'MasterCard', CAST(N'2020-12-28T12:00:01.8162163' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'68b6901d-5f8f-4aac-a80a-a060c29695e3', N'9C2ZF52TZR', N'MasterCard', CAST(N'2020-12-11T16:03:22.1061438' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'fb6ffb39-3a07-4226-b488-a0c420cf1fe2', N'', N'MasterCard', CAST(N'2020-12-28T11:17:18.4854552' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'8195a9d8-06f0-4586-9c81-a104c9a11787', N'', N'MasterCard', CAST(N'2021-02-24T11:59:23.5975513' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'be91c7ff-fce7-415d-9e92-a353137244e2', N'', N'MasterCard', CAST(N'2020-12-28T11:28:31.7761495' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'7ae22f98-5208-47ad-bcaf-a3d87e43ba64', N'', N'MasterCard', CAST(N'2021-02-24T11:58:38.5947337' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'e561022f-25e9-448d-9545-a6a195d688c9', N'', N'MasterCard', CAST(N'2020-12-28T11:51:46.7669898' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'9d3caea0-3804-4b60-a046-a91553f66243', N'', N'MasterCard', CAST(N'2020-12-28T11:30:01.7716377' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'9b51cd30-199f-42e6-8203-a95b2a08e4e1', N'', N'MasterCard', CAST(N'2020-12-28T12:17:01.7921832' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'230ce8d6-e73b-4c25-9ec5-a96c19059a35', N'', N'MasterCard', CAST(N'2020-12-28T12:17:16.7812780' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'd332aa78-91d2-47cb-94e4-a98d977ea41d', N'', N'MasterCard', CAST(N'2020-12-28T11:59:16.8744509' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'28e87223-f825-4110-a0a3-ab1cc831f0bb', N'', N'MasterCard', CAST(N'2020-12-28T11:18:46.8140222' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'ecb9e3e7-f94a-40f0-8a53-ab2c784f62bb', N'', N'MasterCard', CAST(N'2020-12-28T11:17:46.8106866' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'2bb0c741-8aba-411d-9115-ab4f427c03fc', N'R1ZJJYNE2L', N'MasterCard', CAST(N'2021-02-24T12:01:53.5946540' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'433a2e57-3159-4a97-a1ab-ac31b79e4fcf', N'', N'MasterCard', CAST(N'2020-12-28T12:00:17.1439992' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'd3a94533-a68d-4c47-b094-ac43cfabd44a', N'', N'MasterCard', CAST(N'2020-12-28T11:58:16.7663647' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'6f796054-bfa5-41fe-9aa3-acba4d28fe7b', N'SORC4IZ25L', N'MasterCard', CAST(N'2021-02-24T12:01:39.2164998' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'46e9e8c9-4874-41ef-8f7f-ad8d56ed9f39', N'', N'MasterCard', CAST(N'2020-12-28T12:15:31.7732030' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'd747a0df-84fc-4578-9301-ad8e2beafb46', N'', N'MasterCard', CAST(N'2021-02-24T11:58:08.6098071' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f3cf4a3a-eb7c-4f5e-bfca-add3489a873e', N'YQNWE6JILO', N'MasterCard', CAST(N'2020-12-11T16:02:38.0174744' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'25befa18-5443-457d-aa87-ade85aca6498', N'', N'MasterCard', CAST(N'2021-02-24T12:21:30.8856402' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'fa99e13d-f1dc-4ff5-8cea-ae21a59b9064', N'', N'MasterCard', CAST(N'2020-12-28T12:26:46.7787136' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'816bd393-00aa-415a-a1a4-ae58616c55ec', N'', N'MasterCard', CAST(N'2020-12-28T12:05:31.7884869' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'5cd2d889-d1e1-4f6c-9990-af39e21dcdf2', N'', N'MasterCard', CAST(N'2020-12-28T11:55:47.2142220' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'c1871bd1-5583-47f3-9241-af6f7f56e40c', N'', N'MasterCard', CAST(N'2020-12-28T11:40:16.7828555' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'1be98ac2-4a7e-499f-8a85-afe94b4a60e6', N'', N'MasterCard', CAST(N'2020-12-28T12:11:31.7685716' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b2e3febe-1a80-4fc7-b401-b09c5d5b0d62', N'FSEKCXDTTA', N'MasterCard', CAST(N'2021-02-24T12:23:00.8688569' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'7174fa3b-6165-474b-aef9-b0eb6f6dfe1e', N'', N'MasterCard', CAST(N'2020-12-28T12:25:01.7823099' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'aa2e2502-fc75-4c87-914d-b112ea94e5d5', N'', N'MasterCard', CAST(N'2021-02-24T12:20:30.8533987' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'0b9ddc2b-dadc-4f9a-b224-b18a35f381b9', N'', N'MasterCard', CAST(N'2020-12-28T11:16:31.9949677' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'6f8d3fce-666b-421a-8c8e-b22844441ccf', N'', N'MasterCard', CAST(N'2021-02-24T12:18:00.8696724' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'3a13c8c6-feee-4920-b801-b243acfe21db', N'', N'MasterCard', CAST(N'2020-12-28T12:12:16.7910746' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'd9c50243-e622-420e-80da-b265f2ec96ff', N'', N'MasterCard', CAST(N'2021-02-24T12:00:38.5917802' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'05d231f8-1b95-4c33-ae51-b32732198e99', N'', N'MasterCard', CAST(N'2020-12-28T11:19:31.7769966' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'7f43b64b-0bd4-4539-ad09-b501e71f470c', N'', N'MasterCard', CAST(N'2020-12-28T12:21:16.7676003' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'bb2b0f01-d275-4d06-a315-b5569ba635b0', N'', N'MasterCard', CAST(N'2021-02-24T12:19:30.8540669' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'704c4156-0ea0-40f2-8c98-b5830c90bf0e', N'', N'MasterCard', CAST(N'2020-12-28T12:09:31.7697079' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'03513307-c999-4c1d-ad78-b600c6bc934e', N'', N'MasterCard', CAST(N'2020-12-28T11:48:32.0608747' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b0a90bdd-86eb-446b-99ae-b63ebd8e524b', N'', N'MasterCard', CAST(N'2020-12-28T12:14:16.7870151' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f03fa0e6-a026-4982-82ec-b72ec0b99d76', N'', N'MasterCard', CAST(N'2021-02-24T12:22:00.8750732' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'5b0f9d75-f60f-4dad-9dad-b79bdbccee4e', N'', N'MasterCard', CAST(N'2021-02-24T12:07:08.5976983' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'e3d22aac-a7d1-49cc-95a7-b83edfe9ff21', N'GKYOCF2SRB', N'MasterCard', CAST(N'2021-02-24T12:02:38.6229658' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'18530968-0604-43e7-b2f1-bb285edf4cbc', N'', N'MasterCard', CAST(N'2020-12-28T11:44:01.7810414' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'6365e7de-15e8-4b09-8501-bc00b32ba121', N'', N'MasterCard', CAST(N'2020-12-28T11:32:16.7654347' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'351bfbab-e9b0-475d-b02b-bc26830a36a4', N'', N'MasterCard', CAST(N'2020-12-28T11:57:31.7864837' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'41aa5d3b-fbef-441c-bb61-be4751f47d7a', N'', N'MasterCard', CAST(N'2021-02-24T12:06:53.5749106' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'dab2ecc1-8efd-4350-8ad4-bfa65affcfef', N'', N'MasterCard', CAST(N'2020-12-28T12:06:01.7704731' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'6eb149a4-63e3-4bf2-84bf-c1000509c9e9', N'', N'MasterCard', CAST(N'2020-12-28T12:25:16.7685726' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'13a7d2dd-b82d-47af-be87-c1f34ab21124', N'', N'MasterCard', CAST(N'2021-02-24T12:04:08.5620260' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'26599407-61e8-4b81-becf-c20b056e7a95', N'', N'MasterCard', CAST(N'2021-02-24T12:18:30.8540647' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'55feaa5c-dff1-4a07-b025-c43ec0fec3b3', N'', N'MasterCard', CAST(N'2020-12-28T11:36:46.7692472' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
GO
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'7cc733b2-085f-4f95-9769-c50cd37a93ff', N'', N'MasterCard', CAST(N'2020-12-28T11:27:46.7906808' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'c833163c-79dc-4f40-9ed3-c5e12683809f', N'', N'MasterCard', CAST(N'2020-12-28T11:43:16.7748233' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'1f70fa6e-3b99-4b7a-b500-c607745340e0', N'', N'MasterCard', CAST(N'2020-12-28T12:20:31.7872057' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'5aed7215-e309-4bc4-a35c-c6155a057087', N'', N'MasterCard', CAST(N'2020-12-28T11:38:31.7801495' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'28498e7f-7a7e-488a-b108-c6ee7c1cb05a', N'', N'MasterCard', CAST(N'2021-02-24T12:03:08.6076254' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'9444717d-d8bf-4fb2-b72a-c7d0c295c8b6', N'', N'MasterCard', CAST(N'2020-12-28T12:11:46.8003709' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'25437da1-f5ee-4acc-924a-c8810957e228', N'', N'MasterCard', CAST(N'2020-12-28T11:46:46.7873767' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'cfa7fd9d-9caa-4fb0-846b-c8fb6421fc77', N'', N'MasterCard', CAST(N'2020-12-28T12:23:01.7848980' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'0a196d62-5c0d-4006-a567-c8ff3b3dbc11', N'', N'MasterCard', CAST(N'2020-12-28T12:14:31.8003004' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'cbdeddde-d096-4340-bc7d-c9315ee2f5ba', N'', N'MasterCard', CAST(N'2020-12-28T12:20:46.7743068' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'37b9cb73-cc6c-4174-8993-c9611ec59ecc', N'', N'MasterCard', CAST(N'2020-12-28T11:33:31.7692435' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'45f6220d-abbf-4987-8ae8-c96968e234e2', N'', N'MasterCard', CAST(N'2020-12-28T11:32:31.9294042' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'7543f577-ba10-42b2-8c63-ca4dbd5f636a', N'', N'MasterCard', CAST(N'2020-12-28T11:47:16.7711147' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b6016116-a35e-406e-b7d8-ca7b4944b615', N'XZF8S4ZSI3', N'MasterCard', CAST(N'2021-02-24T12:26:45.8791044' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b572ac48-d786-4874-b12e-cab1c211315f', N'', N'MasterCard', CAST(N'2020-12-28T12:22:16.7760927' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'0ff83af8-e73c-4647-a2ce-cb5a5566254a', N'', N'MasterCard', CAST(N'2020-12-28T11:37:01.7730592' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'69519897-718c-46ee-ac8c-cbaa39e5d4f1', N'', N'MasterCard', CAST(N'2020-12-28T12:07:31.7824198' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'ee68d771-a9da-45ef-b6ee-cd79df5fae0b', N'WZ6J4P8VJH', N'MasterCard', CAST(N'2020-12-11T16:02:25.1006780' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(859.32 AS Decimal(18, 2)), 1, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'ba168bfe-466d-45ea-80be-ce74d770a6e8', N'', N'MasterCard', CAST(N'2020-12-28T11:49:31.8548409' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'2ad0ca88-11ec-43d9-a042-ceccf3c7865d', N'', N'MasterCard', CAST(N'2020-12-28T11:22:01.7984855' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b6fa6d38-aabb-4303-8843-cf69b2e19903', N'', N'MasterCard', CAST(N'2020-12-28T11:49:46.7749829' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'e5652d09-b6ec-4fe0-81cc-cfc47d7debcc', N'', N'MasterCard', CAST(N'2020-12-28T11:17:03.4124877' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'66ad85b7-863c-48b7-b426-cfdf6defefa8', N'', N'MasterCard', CAST(N'2020-12-28T11:21:31.7731038' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'ca6b840c-b9af-4509-903a-cfedb468e30a', N'', N'MasterCard', CAST(N'2020-12-28T12:29:31.7853922' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'53a8144a-1a57-4f3a-a218-d07e82d09ac6', N'', N'MasterCard', CAST(N'2021-02-24T11:57:08.5759077' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'2ca2e74f-7de2-4a5b-beb5-d0edb0674416', N'', N'MasterCard', CAST(N'2020-12-28T12:09:46.7760383' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b5d8c1cc-4623-4b9e-9248-d12b93adac71', N'', N'MasterCard', CAST(N'2021-02-24T12:20:00.8484606' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f34204f3-fd1e-4e58-8c72-d2d122beb8de', N'', N'MasterCard', CAST(N'2020-12-28T11:50:31.7835186' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'0ac47705-825d-4590-ae58-d34379455d16', N'', N'MasterCard', CAST(N'2020-12-28T12:15:01.7923030' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'68c6899c-c1cd-47a7-97e6-d4795ee87c9d', N'', N'MasterCard', CAST(N'2020-12-28T11:16:31.9513633' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'dcb50846-9207-4a64-ace6-d550a2193f05', N'', N'MasterCard', CAST(N'2020-12-28T11:44:16.7638279' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'abd716f5-c146-43f7-b801-d5952c3d2b0a', N'TA2OKZPLOM', N'MasterCard', CAST(N'2021-02-24T12:24:45.8575335' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'7afcea6d-154d-4617-81a3-d5e56b96fe12', N'', N'MasterCard', CAST(N'2020-12-28T11:53:31.8347728' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'8f183c6a-7860-4f58-ad48-d6a4eb62eebb', N'', N'MasterCard', CAST(N'2020-12-28T11:31:46.7708493' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'3657a01d-826e-4a7b-9ae5-d7e7c1e5e4e9', N'', N'MasterCard', CAST(N'2020-12-28T12:10:02.4248435' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'a83078eb-0d6a-4938-85dc-d86af188420d', N'', N'MasterCard', CAST(N'2020-12-28T11:41:31.7736046' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'72903140-cc5b-4f6e-aafd-d8752ffb1510', N'', N'MasterCard', CAST(N'2020-12-28T12:27:01.7826516' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'6ca38b4e-dc0f-4c79-a6bb-da4bcaa92b23', N'', N'MasterCard', CAST(N'2020-12-28T12:07:16.8342397' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'3fa7bc32-3e81-4ce5-a028-da4eb3165637', N'', N'MasterCard', CAST(N'2020-12-28T11:28:01.8001294' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'07ee6982-be98-4dbc-a6b5-da6e7a9fb7a1', N'', N'MasterCard', CAST(N'2020-12-28T11:22:46.7944350' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f66126a6-3c0c-4bb2-8ca6-db6ccc1dc53b', N'', N'MasterCard', CAST(N'2020-12-28T11:25:01.7724992' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b7e3662f-ed81-46d3-9046-dbb1d0a0ad03', N'J39UG1C5YJ', N'MasterCard', CAST(N'2021-02-24T12:26:00.8645366' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b063ce1a-4f69-4d43-8f7e-dbd884c26749', N'', N'MasterCard', CAST(N'2020-12-28T12:27:46.7740655' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'1c43ec84-b53f-4920-97e3-dbf37bcbef56', N'', N'MasterCard', CAST(N'2020-12-28T11:50:46.8709550' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'18ea6adc-77da-4a0a-8f0d-dd4b5e5c058c', N'', N'MasterCard', CAST(N'2020-12-28T11:38:01.7976313' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'6df8bcc2-23d1-49b6-ae07-dd4da4f4f555', N'', N'MasterCard', CAST(N'2021-02-24T12:17:30.8958453' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'665f373a-c2d5-4a60-aaa7-dd535c182453', N'', N'MasterCard', CAST(N'2020-12-28T11:48:46.7684116' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'1ca3a491-0b0d-4559-ac71-ddc8d3f48fba', N'TFBXF9O4BK', N'MasterCard', CAST(N'2021-02-24T12:24:15.8567297' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'e1d009d6-82b5-466c-9f27-de23dc4d92b6', N'', N'MasterCard', CAST(N'2020-12-28T11:50:16.8003071' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'27ab8bc2-19c9-4798-9342-dfbecc4ca967', N'', N'MasterCard', CAST(N'2021-02-24T12:21:45.8756746' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'8a380035-d16c-4e09-ac06-dff02c7456b9', N'', N'MasterCard', CAST(N'2020-12-28T11:25:46.7752639' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'2e7ba4ec-2def-4aae-af10-e13789a1e64a', N'', N'MasterCard', CAST(N'2020-12-28T12:04:16.7913901' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'18f773b8-393b-45fd-b0a4-e18ce76aa826', N'', N'MasterCard', CAST(N'2021-02-24T12:07:38.5631826' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'fba18b0e-b81d-40d9-aa95-e197bdd83140', N'', N'MasterCard', CAST(N'2021-02-24T12:17:17.4986712' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'dab7b983-08cb-4e6b-b981-e42424cd55e3', N'', N'MasterCard', CAST(N'2020-12-28T11:18:01.8018173' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f2dfedc3-fd07-4dfb-9ee9-e4eb97ba8e8c', N'', N'MasterCard', CAST(N'2020-12-28T12:21:01.7658277' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'fe18be40-4e65-43cd-8e17-e5b77840a690', N'', N'MasterCard', CAST(N'2021-02-24T11:58:53.6056963' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b869d6eb-bacc-48fd-aa64-e6aecbece1ee', N'', N'MasterCard', CAST(N'2020-12-28T12:29:01.7827562' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'a5e38422-a862-4284-aa0a-e70a24b837e0', N'', N'MasterCard', CAST(N'2020-12-28T11:45:46.7650844' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'83a811c3-83c4-4747-9628-e73dbae27335', N'', N'MasterCard', CAST(N'2020-12-28T12:00:46.7902325' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'a0e28bab-4251-4b86-87f3-e8de4aec1707', N'', N'MasterCard', CAST(N'2021-02-24T12:20:45.8613271' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'2e92c1f2-fcc8-4132-b661-e9b0418f01f1', N'F2DD82DOID', N'MasterCard', CAST(N'2021-02-24T12:27:00.8823789' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f23e75fd-0895-43c8-ae0c-ea58c77aef97', N'', N'MasterCard', CAST(N'2020-12-28T11:41:16.8177273' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f102b3e9-3531-44c2-9dad-ead8d1215bc8', N'', N'MasterCard', CAST(N'2020-12-28T12:11:16.7808461' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'b3922f7f-b5f2-4397-a652-eda1de4e5a08', N'', N'MasterCard', CAST(N'2020-12-28T11:19:16.7771677' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'3d2a3ec9-084a-4183-80ce-ef2170a69826', N'', N'MasterCard', CAST(N'2020-12-28T11:25:31.7662198' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'a0e0e500-9098-4f2f-aaaf-f01b53709125', N'', N'MasterCard', CAST(N'2020-12-28T11:45:31.7839490' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'ffa70a10-2956-48b1-bc37-f052a8100503', N'', N'MasterCard', CAST(N'2020-12-28T12:08:46.8564431' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'8357bfd0-c9f9-4f9b-808b-f068f5441e9d', N'', N'MasterCard', CAST(N'2020-12-28T11:23:46.7791949' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'23e161a1-2941-4cbe-a901-f10680136097', N'', N'MasterCard', CAST(N'2020-12-28T12:29:16.7704533' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'affc16a0-dc2f-49dd-81a1-f1653112055b', N'', N'MasterCard', CAST(N'2020-12-28T12:10:46.7772940' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'e906ea18-47fd-42f4-8198-f1b46c8e20bb', N'', N'MasterCard', CAST(N'2020-12-28T12:12:01.7630349' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'8385dfe5-3fb4-4175-9b8d-f1cb84e65052', N'', N'MasterCard', CAST(N'2020-12-28T11:42:46.7644895' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f8b3655a-586e-440e-8639-f1df35d45c7c', N'', N'MasterCard', CAST(N'2020-12-28T12:08:01.7846923' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'3950d48f-e180-40d3-aad3-f2068e09347c', N'', N'MasterCard', CAST(N'2020-12-28T11:22:16.7740820' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'0fcf9a18-976c-489a-8eca-f23adb701413', N'', N'MasterCard', CAST(N'2020-12-28T12:21:46.7899839' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'7007e7b4-2dec-4c27-8d09-f245392693ed', N'', N'MasterCard', CAST(N'2021-02-24T12:18:15.8843499' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'aa623eda-6203-4b1b-b5c8-f2476232593d', N'', N'MasterCard', CAST(N'2020-12-28T11:40:01.7858717' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'60a422e0-ccb1-486e-828d-f325b43b503e', N'', N'MasterCard', CAST(N'2020-12-28T11:26:16.7787302' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f0361bdd-52aa-4176-b6ba-f391beb5a9e1', N'', N'MasterCard', CAST(N'2020-12-28T12:12:31.7825652' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'2f5ff6a2-b565-4112-b481-f3c4336faa09', N'', N'MasterCard', CAST(N'2020-12-28T11:48:01.8390119' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'84d95acd-398d-4bbf-811b-f436ed84e883', N'', N'MasterCard', CAST(N'2020-12-28T11:26:46.7759983' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'7f79c9ee-2c14-483d-9180-f4aa02513cd0', N'NQ4W4UY8L1', N'MasterCard', CAST(N'2021-02-24T12:24:00.8931911' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'17833cc4-1597-4ef0-ba1e-f4d33cf370fa', N'', N'MasterCard', CAST(N'2020-12-28T11:36:31.7873105' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'65b91371-1b30-4b3b-9573-f61f12ab4803', N'', N'MasterCard', CAST(N'2020-12-28T11:29:31.7717928' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'e09c18ec-46d8-4b6d-a038-f640dd621167', N'', N'MasterCard', CAST(N'2020-12-28T11:55:16.8047184' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'150b12f1-8cb1-44c9-be21-f8a89031e65a', N'', N'MasterCard', CAST(N'2020-12-28T12:08:31.8035519' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'e4da743f-429c-4b73-80d1-fb87de561b4d', N'', N'MasterCard', CAST(N'2021-02-24T12:07:53.5903461' AS DateTime2), CAST(20507.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'YDM0G0XN0G', N'QZVCXASOID', N'dad3cda8-856e-4089-87d7-1129bfc4e617')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'8ce25988-4126-44d5-aa33-fbfe5b4a3b08', N'', N'MasterCard', CAST(N'2021-02-24T12:00:08.5809096' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'cf9adf65-be2b-4f96-81ef-fc6a47e94709', N'H03XPRTJTR', N'MasterCard', CAST(N'2021-02-24T12:25:15.8545231' AS DateTime2), CAST(20747.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'RVG73MF70N', N'7JGY8EJYWJ', N'd651ff3e-6fb9-4d65-9efd-1756738d829e')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'10ed496d-abd5-4780-b831-fced822dd6ea', N'', N'MasterCard', CAST(N'2020-12-28T11:34:01.7922784' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'f14c601e-bcda-4ce1-a9cc-fd4c338022e1', N'', N'MasterCard', CAST(N'2020-12-28T11:57:16.7743038' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'57f03053-49d7-46e4-a3e3-fe6408fa6d77', N'', N'MasterCard', CAST(N'2020-12-28T12:16:46.7735861' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'1de48772-5d60-4243-952b-fe847f2e143f', N'', N'MasterCard', CAST(N'2020-12-28T11:39:16.7758450' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'17f3aa9d-cf66-4221-b069-fec075edff50', N'', N'MasterCard', CAST(N'2020-12-28T12:08:16.7981984' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'a9ca18c1-0802-43e2-b8fa-ff31d48f1626', N'', N'MasterCard', CAST(N'2020-12-28T12:06:16.7865817' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
INSERT [dbo].[Transacoes] ([Id], [CodigoAutorizacao], [BandeiraCartao], [DataTransacao], [ValorTotal], [CustoTransacao], [Status], [TID], [NSU], [PagamentoId]) VALUES (N'6c18e669-5031-44eb-9128-ff33a552178c', N'', N'MasterCard', CAST(N'2020-12-28T12:25:46.7660314' AS DateTime2), CAST(28643.95 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'4OT6O4U6NC', N'DXN3DJFSNM', N'3d3a4b53-b236-40a0-bb70-c7b3046f43aa')
GO
INSERT [dbo].[Vouchers] ([Id], [Codigo], [Percentual], [ValorDesconto], [Quantidade], [TipoDesconto], [DataCriacao], [DataUtilizacao], [DataValidade], [Ativo], [Utilizado]) VALUES (N'15836256-13a9-4bf2-8607-44c0464b5599', N'50-OFF-GERAL', CAST(50.00 AS Decimal(18, 2)), NULL, 48, 0, CAST(N'2020-06-12T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-02T14:46:52.8646525' AS DateTime2), CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), 1, 0)
GO
/****** Object:  Index [IX_Adresses_ClientId]    Script Date: 24/02/2021 18:16:23 ******/
CREATE NONCLUSTERED INDEX [IX_Adresses_ClientId] ON [dbo].[Adresses]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 24/02/2021 18:16:23 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 24/02/2021 18:16:23 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 24/02/2021 18:16:23 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 24/02/2021 18:16:23 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 24/02/2021 18:16:23 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 24/02/2021 18:16:23 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 24/02/2021 18:16:23 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AssociatedProducts_ProductFatherId]    Script Date: 24/02/2021 18:16:23 ******/
CREATE NONCLUSTERED INDEX [IX_AssociatedProducts_ProductFatherId] ON [dbo].[AssociatedProducts]
(
	[ProductFatherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AssociatedProducts_ProductSonId]    Script Date: 24/02/2021 18:16:23 ******/
CREATE NONCLUSTERED INDEX [IX_AssociatedProducts_ProductSonId] ON [dbo].[AssociatedProducts]
(
	[ProductSonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_Cliente]    Script Date: 24/02/2021 18:16:23 ******/
CREATE NONCLUSTERED INDEX [IDX_Cliente] ON [dbo].[CarrinhoCliente]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarrinhoItens_CarrinhoId]    Script Date: 24/02/2021 18:16:23 ******/
CREATE NONCLUSTERED INDEX [IX_CarrinhoItens_CarrinhoId] ON [dbo].[CarrinhoItens]
(
	[CarrinhoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Message_SenderId]    Script Date: 24/02/2021 18:16:23 ******/
CREATE NONCLUSTERED INDEX [IX_Message_SenderId] ON [dbo].[Message]
(
	[SenderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Message_ThreadId]    Script Date: 24/02/2021 18:16:23 ******/
CREATE NONCLUSTERED INDEX [IX_Message_ThreadId] ON [dbo].[Message]
(
	[ThreadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PedidoItems_PedidoId]    Script Date: 24/02/2021 18:16:23 ******/
CREATE NONCLUSTERED INDEX [IX_PedidoItems_PedidoId] ON [dbo].[PedidoItems]
(
	[PedidoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pedidos_VoucherId]    Script Date: 24/02/2021 18:16:23 ******/
CREATE NONCLUSTERED INDEX [IX_Pedidos_VoucherId] ON [dbo].[Pedidos]
(
	[VoucherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 24/02/2021 18:16:23 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Thread_OwnerId]    Script Date: 24/02/2021 18:16:23 ******/
CREATE NONCLUSTERED INDEX [IX_Thread_OwnerId] ON [dbo].[Thread]
(
	[OwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Transacoes_PagamentoId]    Script Date: 24/02/2021 18:16:23 ******/
CREATE NONCLUSTERED INDEX [IX_Transacoes_PagamentoId] ON [dbo].[Transacoes]
(
	[PagamentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreatedOn]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Pedidos] ADD  DEFAULT (NEXT VALUE FOR [ECOMSequencia]) FOR [Codigo]
GO
ALTER TABLE [dbo].[Adresses]  WITH CHECK ADD  CONSTRAINT [FK_Adresses_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[Adresses] CHECK CONSTRAINT [FK_Adresses_Clients_ClientId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AssociatedProducts]  WITH CHECK ADD  CONSTRAINT [FK_AssociatedProducts_Products_ProductFatherId] FOREIGN KEY([ProductFatherId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[AssociatedProducts] CHECK CONSTRAINT [FK_AssociatedProducts_Products_ProductFatherId]
GO
ALTER TABLE [dbo].[AssociatedProducts]  WITH CHECK ADD  CONSTRAINT [FK_AssociatedProducts_Products_ProductSonId] FOREIGN KEY([ProductSonId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[AssociatedProducts] CHECK CONSTRAINT [FK_AssociatedProducts_Products_ProductSonId]
GO
ALTER TABLE [dbo].[CarrinhoItens]  WITH CHECK ADD  CONSTRAINT [FK_CarrinhoItens_CarrinhoCliente_CarrinhoId] FOREIGN KEY([CarrinhoId])
REFERENCES [dbo].[CarrinhoCliente] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarrinhoItens] CHECK CONSTRAINT [FK_CarrinhoItens_CarrinhoCliente_CarrinhoId]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_AspNetUsers_SenderId] FOREIGN KEY([SenderId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_AspNetUsers_SenderId]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Thread_ThreadId] FOREIGN KEY([ThreadId])
REFERENCES [dbo].[Thread] ([Id])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Thread_ThreadId]
GO
ALTER TABLE [dbo].[PedidoItems]  WITH CHECK ADD  CONSTRAINT [FK_PedidoItems_Pedidos_PedidoId] FOREIGN KEY([PedidoId])
REFERENCES [dbo].[Pedidos] ([Id])
GO
ALTER TABLE [dbo].[PedidoItems] CHECK CONSTRAINT [FK_PedidoItems_Pedidos_PedidoId]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Vouchers_VoucherId] FOREIGN KEY([VoucherId])
REFERENCES [dbo].[Vouchers] ([Id])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Vouchers_VoucherId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Thread]  WITH CHECK ADD  CONSTRAINT [FK_Thread_AspNetUsers_OwnerId] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Thread] CHECK CONSTRAINT [FK_Thread_AspNetUsers_OwnerId]
GO
ALTER TABLE [dbo].[Transacoes]  WITH CHECK ADD  CONSTRAINT [FK_Transacoes_Pagamentos_PagamentoId] FOREIGN KEY([PagamentoId])
REFERENCES [dbo].[Pagamentos] ([Id])
GO
ALTER TABLE [dbo].[Transacoes] CHECK CONSTRAINT [FK_Transacoes_Pagamentos_PagamentoId]
GO
USE [master]
GO
ALTER DATABASE [ecommercedb] SET  READ_WRITE 
GO

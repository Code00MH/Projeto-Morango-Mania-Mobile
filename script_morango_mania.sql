USE [master]
GO
/****** Object:  Database [MorangoManiaMobile]    Script Date: 26/11/2024 19:40:52 ******/
CREATE DATABASE [MorangoManiaMobile]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MorangoManiaMobile', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MorangoManiaMobile.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MorangoManiaMobile_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MorangoManiaMobile_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MorangoManiaMobile] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MorangoManiaMobile].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MorangoManiaMobile] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET ARITHABORT OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MorangoManiaMobile] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MorangoManiaMobile] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MorangoManiaMobile] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MorangoManiaMobile] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET RECOVERY FULL 
GO
ALTER DATABASE [MorangoManiaMobile] SET  MULTI_USER 
GO
ALTER DATABASE [MorangoManiaMobile] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MorangoManiaMobile] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MorangoManiaMobile] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MorangoManiaMobile] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MorangoManiaMobile] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MorangoManiaMobile] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MorangoManiaMobile', N'ON'
GO
ALTER DATABASE [MorangoManiaMobile] SET QUERY_STORE = ON
GO
ALTER DATABASE [MorangoManiaMobile] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MorangoManiaMobile]
GO
/****** Object:  User [usuarioMobile]    Script Date: 26/11/2024 19:40:52 ******/
CREATE USER [usuarioMobile] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [usuarioM]    Script Date: 26/11/2024 19:40:52 ******/
CREATE USER [usuarioM] FOR LOGIN [usuarioM] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [userMobile]    Script Date: 26/11/2024 19:40:52 ******/
CREATE USER [userMobile] FOR LOGIN [userMobile] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [usuarioMobile]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [usuarioMobile]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [usuarioMobile]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [usuarioMobile]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [usuarioMobile]
GO
ALTER ROLE [db_datareader] ADD MEMBER [usuarioMobile]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [usuarioMobile]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [usuarioMobile]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [usuarioMobile]
GO
ALTER ROLE [db_owner] ADD MEMBER [usuarioM]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [usuarioM]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [usuarioM]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [usuarioM]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [usuarioM]
GO
ALTER ROLE [db_datareader] ADD MEMBER [usuarioM]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [usuarioM]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [usuarioM]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [usuarioM]
GO
ALTER ROLE [db_owner] ADD MEMBER [userMobile]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [userMobile]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [userMobile]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [userMobile]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [userMobile]
GO
ALTER ROLE [db_datareader] ADD MEMBER [userMobile]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [userMobile]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [userMobile]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [userMobile]
GO
/****** Object:  Table [dbo].[Cadastro]    Script Date: 26/11/2024 19:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cadastro](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NomeFull] [nvarchar](100) NOT NULL,
	[CPF] [nvarchar](14) NOT NULL,
	[Cargo] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Senha] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cargos]    Script Date: 26/11/2024 19:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](100) NULL,
	[Descricao] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 26/11/2024 19:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](100) NOT NULL,
	[Telefone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[cpf] [nvarchar](20) NOT NULL,
	[CEP] [nvarchar](20) NOT NULL,
	[Rua] [nvarchar](100) NOT NULL,
	[Numero] [nvarchar](20) NOT NULL,
	[Bairro] [nvarchar](100) NOT NULL,
	[senha] [nvarchar](255) NOT NULL,
	[Cidade] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colaboradores]    Script Date: 26/11/2024 19:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colaboradores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](100) NULL,
	[CPF] [nvarchar](14) NULL,
	[Horario] [nvarchar](30) NULL,
	[Cargo] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ferramentas]    Script Date: 26/11/2024 19:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ferramentas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](100) NULL,
	[Descricao] [nvarchar](100) NULL,
	[Tipo] [nvarchar](100) NULL,
	[QtdFerramenta] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fornecedores]    Script Date: 26/11/2024 19:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fornecedores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](100) NULL,
	[TipoFornecimento] [nvarchar](100) NULL,
	[Descricao] [nvarchar](200) NULL,
	[Telefone] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
	[CNPJ] [nvarchar](20) NULL,
	[Bairro] [nvarchar](100) NULL,
	[Numero] [nvarchar](20) NULL,
	[Rua] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nutrientes]    Script Date: 26/11/2024 19:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nutrientes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](100) NULL,
	[Validade] [date] NULL,
	[Quantidade] [int] NULL,
	[Descricao] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 26/11/2024 19:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produtos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](100) NULL,
	[Preco] [decimal](18, 2) NULL,
	[Validade] [date] NULL,
	[QtdProduto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sementes]    Script Date: 26/11/2024 19:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sementes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](50) NOT NULL,
	[Quantidade] [int] NULL,
	[Descricao] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendas]    Script Date: 26/11/2024 19:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Cliente] [int] NULL,
	[ID_Produto] [int] NULL,
	[Quantidade] [int] NULL,
	[TotalCompra] [decimal](10, 2) NULL,
	[CodigoCompra] [varchar](50) NULL,
	[MetodoPagamento] [nvarchar](25) NULL,
	[Endereco] [nvarchar](255) NOT NULL,
	[Situacao] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clientes] ADD  DEFAULT ('Desconhecida') FOR [Cidade]
GO
ALTER TABLE [dbo].[Vendas] ADD  DEFAULT ('A preparar') FOR [Situacao]
GO
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD FOREIGN KEY([ID_Produto])
REFERENCES [dbo].[Produtos] ([Id])
GO
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD FOREIGN KEY([ID_Cliente])
REFERENCES [dbo].[Clientes] ([Id])
GO
USE [master]
GO
ALTER DATABASE [MorangoManiaMobile] SET  READ_WRITE 
GO

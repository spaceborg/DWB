USE [master]
GO
/****** Object:  Database [DWB_MER_SUPERMERCADO]    Script Date: 12/06/2020 23:09:14 ******/
CREATE DATABASE [DWB_MER_SUPERMERCADO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DWB_ER_SUPER', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DWB_ER_SUPER.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DWB_ER_SUPER_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DWB_ER_SUPER_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DWB_MER_SUPERMERCADO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET ARITHABORT OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET RECOVERY FULL 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET  MULTI_USER 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DWB_MER_SUPERMERCADO', N'ON'
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET QUERY_STORE = OFF
GO
USE [DWB_MER_SUPERMERCADO]
GO
/****** Object:  Table [dbo].[adquisiciones]    Script Date: 12/06/2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adquisiciones](
	[idAdqui] [int] NOT NULL,
	[fecAdqui] [datetime] NULL,
	[cantAdqui] [int] NULL,
	[totalAdqui] [int] NULL,
	[idProveedor] [int] NULL,
	[idProducto] [int] NULL,
 CONSTRAINT [PK_adquisiciones] PRIMARY KEY CLUSTERED 
(
	[idAdqui] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cargos]    Script Date: 12/06/2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cargos](
	[idCargo] [int] NOT NULL,
	[nomCargo] [varchar](50) NULL,
 CONSTRAINT [PK_cargos] PRIMARY KEY CLUSTERED 
(
	[idCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorias]    Script Date: 12/06/2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorias](
	[idCategoria] [int] NOT NULL,
	[nomCategoria] [varchar](50) NULL,
 CONSTRAINT [PK_categorias] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 12/06/2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[idCliente] [int] NOT NULL,
	[rutCliente] [varchar](10) NULL,
	[nomCliente] [varchar](50) NULL,
	[apeCliente] [varchar](50) NULL,
	[emailCliente] [varchar](50) NULL,
	[telCliente] [varchar](20) NULL,
	[dirCliente] [varchar](100) NULL,
	[idComuna] [int] NULL,
 CONSTRAINT [PK_clientes] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comunas]    Script Date: 12/06/2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comunas](
	[idComuna] [int] NOT NULL,
	[nomComuna] [varchar](50) NOT NULL,
	[idRegion] [int] NOT NULL,
 CONSTRAINT [PK_comunas] PRIMARY KEY CLUSTERED 
(
	[idComuna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalleVenta]    Script Date: 12/06/2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalleVenta](
	[idDetVenta] [int] NOT NULL,
	[cantDetVenta] [int] NULL,
	[precioDetVenta] [int] NULL,
	[totalDetVenta] [int] NULL,
	[idVenta] [int] NULL,
	[idProducto] [int] NULL,
 CONSTRAINT [PK_detalleVenta] PRIMARY KEY CLUSTERED 
(
	[idDetVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 12/06/2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[idEmpleado] [int] NOT NULL,
	[nomEmpleado] [varchar](50) NULL,
	[apeEmpleado] [varchar](50) NULL,
	[idCargo] [int] NULL,
	[idComuna] [int] NULL,
 CONSTRAINT [PK_empleados] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[marcas]    Script Date: 12/06/2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marcas](
	[idMarca] [int] NOT NULL,
	[nomMarca] [varchar](50) NULL,
 CONSTRAINT [PK_marcas] PRIMARY KEY CLUSTERED 
(
	[idMarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mediosPago]    Script Date: 12/06/2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mediosPago](
	[idMedioPago] [int] NOT NULL,
	[nomMedioPago] [varchar](50) NULL,
	[idOrigen] [int] NULL,
 CONSTRAINT [PK_mediosPago] PRIMARY KEY CLUSTERED 
(
	[idMedioPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Origenes]    Script Date: 12/06/2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Origenes](
	[idOrigen] [int] NOT NULL,
	[nomOrigen] [varchar](50) NULL,
 CONSTRAINT [PK_Origenes] PRIMARY KEY CLUSTERED 
(
	[idOrigen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 12/06/2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[idProducto] [int] NOT NULL,
	[nomProducto] [varchar](50) NULL,
	[precioProducto] [varchar](50) NULL,
	[idMarca] [int] NULL,
	[idSubCategoria] [int] NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 12/06/2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[idProveedor] [int] NOT NULL,
	[rutProveedor] [varchar](10) NULL,
	[nomProveedor] [varchar](50) NULL,
	[idComuna] [int] NULL,
 CONSTRAINT [PK_proveedores] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[regiones]    Script Date: 12/06/2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[regiones](
	[idRegion] [int] NOT NULL,
	[nomRegion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_regiones] PRIMARY KEY CLUSTERED 
(
	[idRegion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subcategorias]    Script Date: 12/06/2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subcategorias](
	[idSubCategoria] [int] NOT NULL,
	[nomSubCategoria] [varchar](50) NULL,
	[idCategoria] [int] NULL,
 CONSTRAINT [PK_subcategorias] PRIMARY KEY CLUSTERED 
(
	[idSubCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 12/06/2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[idVenta] [int] NOT NULL,
	[fecVenta] [datetime] NULL,
	[totVenta] [int] NULL,
	[idCliente] [int] NULL,
	[idMedioPago] [int] NULL,
	[idEmpleado] [int] NULL,
 CONSTRAINT [PK_ventas] PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[adquisiciones]  WITH CHECK ADD  CONSTRAINT [FK_adquisiciones_productos] FOREIGN KEY([idProducto])
REFERENCES [dbo].[productos] ([idProducto])
GO
ALTER TABLE [dbo].[adquisiciones] CHECK CONSTRAINT [FK_adquisiciones_productos]
GO
ALTER TABLE [dbo].[adquisiciones]  WITH CHECK ADD  CONSTRAINT [FK_adquisiciones_proveedores] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[proveedores] ([idProveedor])
GO
ALTER TABLE [dbo].[adquisiciones] CHECK CONSTRAINT [FK_adquisiciones_proveedores]
GO
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [FK_clientes_comunas] FOREIGN KEY([idComuna])
REFERENCES [dbo].[comunas] ([idComuna])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [FK_clientes_comunas]
GO
ALTER TABLE [dbo].[comunas]  WITH CHECK ADD  CONSTRAINT [FK_comunas_regiones1] FOREIGN KEY([idRegion])
REFERENCES [dbo].[regiones] ([idRegion])
GO
ALTER TABLE [dbo].[comunas] CHECK CONSTRAINT [FK_comunas_regiones1]
GO
ALTER TABLE [dbo].[detalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_detalleVenta_productos] FOREIGN KEY([idProducto])
REFERENCES [dbo].[productos] ([idProducto])
GO
ALTER TABLE [dbo].[detalleVenta] CHECK CONSTRAINT [FK_detalleVenta_productos]
GO
ALTER TABLE [dbo].[detalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_detalleVenta_ventas] FOREIGN KEY([idVenta])
REFERENCES [dbo].[ventas] ([idVenta])
GO
ALTER TABLE [dbo].[detalleVenta] CHECK CONSTRAINT [FK_detalleVenta_ventas]
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [FK_empleados_cargos] FOREIGN KEY([idCargo])
REFERENCES [dbo].[cargos] ([idCargo])
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [FK_empleados_cargos]
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [FK_empleados_comunas] FOREIGN KEY([idComuna])
REFERENCES [dbo].[comunas] ([idComuna])
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [FK_empleados_comunas]
GO
ALTER TABLE [dbo].[mediosPago]  WITH CHECK ADD  CONSTRAINT [FK_mediosPago_Origenes] FOREIGN KEY([idOrigen])
REFERENCES [dbo].[Origenes] ([idOrigen])
GO
ALTER TABLE [dbo].[mediosPago] CHECK CONSTRAINT [FK_mediosPago_Origenes]
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [FK_productos_marcas] FOREIGN KEY([idMarca])
REFERENCES [dbo].[marcas] ([idMarca])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [FK_productos_marcas]
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [FK_productos_subcategorias] FOREIGN KEY([idSubCategoria])
REFERENCES [dbo].[subcategorias] ([idSubCategoria])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [FK_productos_subcategorias]
GO
ALTER TABLE [dbo].[proveedores]  WITH CHECK ADD  CONSTRAINT [FK_proveedores_comunas] FOREIGN KEY([idComuna])
REFERENCES [dbo].[comunas] ([idComuna])
GO
ALTER TABLE [dbo].[proveedores] CHECK CONSTRAINT [FK_proveedores_comunas]
GO
ALTER TABLE [dbo].[subcategorias]  WITH CHECK ADD  CONSTRAINT [FK_subcategorias_categorias] FOREIGN KEY([idCategoria])
REFERENCES [dbo].[categorias] ([idCategoria])
GO
ALTER TABLE [dbo].[subcategorias] CHECK CONSTRAINT [FK_subcategorias_categorias]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [FK_ventas_clientes] FOREIGN KEY([idCliente])
REFERENCES [dbo].[clientes] ([idCliente])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [FK_ventas_clientes]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [FK_ventas_empleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [FK_ventas_empleados]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [FK_ventas_mediosPago] FOREIGN KEY([idMedioPago])
REFERENCES [dbo].[mediosPago] ([idMedioPago])
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [FK_ventas_mediosPago]
GO
USE [master]
GO
ALTER DATABASE [DWB_MER_SUPERMERCADO] SET  READ_WRITE 
GO

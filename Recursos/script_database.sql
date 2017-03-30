USE [AgroMarketDB]
GO
ALTER TABLE [dbo].[usuario] DROP CONSTRAINT [FK_usuario_tipo_usuario]
GO
ALTER TABLE [dbo].[usuario] DROP CONSTRAINT [FK_usuario_cuenta]
GO
ALTER TABLE [dbo].[sesion] DROP CONSTRAINT [FK_sesion_usuario]
GO
ALTER TABLE [dbo].[producto_intencion_venta] DROP CONSTRAINT [FK_producto_intencion_venta_tipo_unidad]
GO
ALTER TABLE [dbo].[producto_intencion_venta] DROP CONSTRAINT [FK_producto_intencion_venta_producto]
GO
ALTER TABLE [dbo].[producto_intencion_venta] DROP CONSTRAINT [FK_producto_intencion_venta_intencion_venta]
GO
ALTER TABLE [dbo].[producto_intencion_compra] DROP CONSTRAINT [FK_producto_intencion_compra_tipo_unidad]
GO
ALTER TABLE [dbo].[producto_intencion_compra] DROP CONSTRAINT [FK_producto_intencion_compra_producto]
GO
ALTER TABLE [dbo].[producto_intencion_compra] DROP CONSTRAINT [FK_producto_intencion_compra_intencion_compra]
GO
ALTER TABLE [dbo].[oferta] DROP CONSTRAINT [FK_oferta_usuario]
GO
ALTER TABLE [dbo].[oferta] DROP CONSTRAINT [FK_oferta_tipo_unidad]
GO
ALTER TABLE [dbo].[oferta] DROP CONSTRAINT [FK_oferta_producto]
GO
ALTER TABLE [dbo].[intencion_venta] DROP CONSTRAINT [FK_intencion_venta_usuario]
GO
ALTER TABLE [dbo].[intencion_compra] DROP CONSTRAINT [FK_intencion_compra_usuario]
GO
ALTER TABLE [dbo].[firma] DROP CONSTRAINT [FK_firma_usuario1]
GO
ALTER TABLE [dbo].[firma] DROP CONSTRAINT [FK_firma_usuario]
GO
ALTER TABLE [dbo].[intencion_venta] DROP CONSTRAINT [DF_intencion_venta_activo]
GO
ALTER TABLE [dbo].[intencion_venta] DROP CONSTRAINT [DF_intencion_venta_fecha_creacion]
GO
ALTER TABLE [dbo].[firma] DROP CONSTRAINT [DF_firma_fecha_creacion]
GO
ALTER TABLE [dbo].[error_log] DROP CONSTRAINT [DF_error_log_fecha_creacion]
GO
/****** Object:  Index [unique_usuario]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP INDEX [unique_usuario] ON [dbo].[usuario]
GO
/****** Object:  Index [IX_producto_intencion_venta_1]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP INDEX [IX_producto_intencion_venta_1] ON [dbo].[producto_intencion_venta]
GO
/****** Object:  Index [IX_producto_intencion_venta]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP INDEX [IX_producto_intencion_venta] ON [dbo].[producto_intencion_venta]
GO
/****** Object:  Index [IX_producto_intencion_compra]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP INDEX [IX_producto_intencion_compra] ON [dbo].[producto_intencion_compra]
GO
/****** Object:  Index [Unique_codigo]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP INDEX [Unique_codigo] ON [dbo].[producto]
GO
/****** Object:  Index [IX_intencion_venta]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP INDEX [IX_intencion_venta] ON [dbo].[intencion_venta]
GO
/****** Object:  Index [IX_firma_2]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP INDEX [IX_firma_2] ON [dbo].[firma]
GO
/****** Object:  Index [IX_firma_1]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP INDEX [IX_firma_1] ON [dbo].[firma]
GO
/****** Object:  Index [IX_firma]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP INDEX [IX_firma] ON [dbo].[firma]
GO
/****** Object:  Index [IX_errores]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP INDEX [IX_errores] ON [dbo].[errores]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP TABLE [dbo].[usuario]
GO
/****** Object:  Table [dbo].[tipo_usuario]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP TABLE [dbo].[tipo_usuario]
GO
/****** Object:  Table [dbo].[tipo_unidad]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP TABLE [dbo].[tipo_unidad]
GO
/****** Object:  Table [dbo].[sesion]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP TABLE [dbo].[sesion]
GO
/****** Object:  Table [dbo].[producto_intencion_venta]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP TABLE [dbo].[producto_intencion_venta]
GO
/****** Object:  Table [dbo].[producto_intencion_compra]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP TABLE [dbo].[producto_intencion_compra]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP TABLE [dbo].[producto]
GO
/****** Object:  Table [dbo].[oferta]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP TABLE [dbo].[oferta]
GO
/****** Object:  Table [dbo].[intencion_venta]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP TABLE [dbo].[intencion_venta]
GO
/****** Object:  Table [dbo].[intencion_compra]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP TABLE [dbo].[intencion_compra]
GO
/****** Object:  Table [dbo].[firma]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP TABLE [dbo].[firma]
GO
/****** Object:  Table [dbo].[errores]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP TABLE [dbo].[errores]
GO
/****** Object:  Table [dbo].[error_log]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP TABLE [dbo].[error_log]
GO
/****** Object:  Table [dbo].[cuenta]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP TABLE [dbo].[cuenta]
GO
/****** Object:  Table [dbo].[acceso_log]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP TABLE [dbo].[acceso_log]
GO
USE [master]
GO
/****** Object:  Database [AgroMarketDB]    Script Date: 3/30/2017 6:12:52 PM ******/
DROP DATABASE [AgroMarketDB]
GO
/****** Object:  Database [AgroMarketDB]    Script Date: 3/30/2017 6:12:52 PM ******/
CREATE DATABASE [AgroMarketDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AgroMarketDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\AgroMarketDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AgroMarketDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\AgroMarketDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AgroMarketDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AgroMarketDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AgroMarketDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AgroMarketDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AgroMarketDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AgroMarketDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AgroMarketDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AgroMarketDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AgroMarketDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AgroMarketDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AgroMarketDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AgroMarketDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AgroMarketDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AgroMarketDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AgroMarketDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AgroMarketDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AgroMarketDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AgroMarketDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AgroMarketDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AgroMarketDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AgroMarketDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AgroMarketDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AgroMarketDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AgroMarketDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AgroMarketDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AgroMarketDB] SET  MULTI_USER 
GO
ALTER DATABASE [AgroMarketDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AgroMarketDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AgroMarketDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AgroMarketDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AgroMarketDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [AgroMarketDB]
GO
/****** Object:  Table [dbo].[acceso_log]    Script Date: 3/30/2017 6:12:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[acceso_log](
	[usuario] [nvarchar](50) NOT NULL,
	[solicitud] [nvarchar](250) NOT NULL,
	[endpoint] [nvarchar](150) NULL,
	[fecha_creacion] [datetime] NOT NULL CONSTRAINT [DF_acceso_log_fecha_creacion]  DEFAULT (getdate())
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cuenta]    Script Date: 3/30/2017 6:12:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuenta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[monto] [numeric](18, 2) NOT NULL,
	[limite_credito] [numeric](18, 2) NOT NULL,
	[total_consumido] [numeric](18, 2) NOT NULL,
	[total_disponible] [numeric](18, 2) NOT NULL,
	[descripcion] [nvarchar](250) NOT NULL,
	[activo] [bit] NOT NULL CONSTRAINT [DF_cuenta_activo]  DEFAULT ((1)),
 CONSTRAINT [PK_cuenta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[error_log]    Script Date: 3/30/2017 6:12:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[error_log](
	[mensaje] [nvarchar](250) NOT NULL,
	[excepcion] [nvarchar](350) NULL,
	[stacktrace] [text] NULL,
	[usuario] [nvarchar](50) NULL,
	[fecha_creacion] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[errores]    Script Date: 3/30/2017 6:12:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[errores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_errores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[firma]    Script Date: 3/30/2017 6:12:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[firma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vendedor] [int] NOT NULL,
	[comprador] [int] NOT NULL,
	[fecha_creacion] [datetime] NOT NULL,
	[fecha_final] [datetime] NULL,
 CONSTRAINT [PK_firma] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[intencion_compra]    Script Date: 3/30/2017 6:12:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[intencion_compra](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NOT NULL,
	[fecha_creacion] [datetime] NOT NULL CONSTRAINT [DF_intencion_compra_fecha_creacion]  DEFAULT (getdate()),
	[fecha_expiracion] [datetime] NOT NULL,
	[activo] [bit] NOT NULL CONSTRAINT [DF_intencion_compra_activo]  DEFAULT ((1)),
 CONSTRAINT [PK_intencion_compra] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[intencion_venta]    Script Date: 3/30/2017 6:12:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[intencion_venta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NOT NULL,
	[fecha_creacion] [datetime] NOT NULL,
	[fecha_expiracion] [datetime] NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_intencion_venta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[oferta]    Script Date: 3/30/2017 6:12:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oferta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[producto_id] [int] NOT NULL,
	[tipo_unidad_id] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio_unidad] [numeric](18, 2) NOT NULL,
	[usuario_id] [int] NOT NULL,
	[fecha_creacion] [datetime] NOT NULL CONSTRAINT [DF_oferta_fecha_creacion]  DEFAULT (getdate()),
	[activo] [bit] NOT NULL CONSTRAINT [DF_oferta_activo]  DEFAULT ((1)),
 CONSTRAINT [PK_oferta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[producto]    Script Date: 3/30/2017 6:12:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [nvarchar](50) NOT NULL,
	[descripcion] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[producto_intencion_compra]    Script Date: 3/30/2017 6:12:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto_intencion_compra](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[producto_id] [int] NOT NULL,
	[tipo_unidad_id] [int] NOT NULL,
	[id_intencion_compra] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio_unidad] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_producto_intencion_compra] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[producto_intencion_venta]    Script Date: 3/30/2017 6:12:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto_intencion_venta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[producto_id] [int] NOT NULL,
	[tipo_unidad_id] [int] NOT NULL,
	[id_intencion_venta] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio_unidad] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_producto_intencion_venta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sesion]    Script Date: 3/30/2017 6:12:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sesion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NOT NULL,
	[token] [nvarchar](350) NOT NULL,
	[fecha_expiracion] [datetime] NOT NULL,
	[activo] [bit] NOT NULL CONSTRAINT [DF_sesion_activo]  DEFAULT ((1)),
 CONSTRAINT [PK_sesion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipo_unidad]    Script Date: 3/30/2017 6:12:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_unidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tipo_unidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipo_usuario]    Script Date: 3/30/2017 6:12:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tipo_usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[usuario]    Script Date: 3/30/2017 6:12:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](150) NOT NULL,
	[rnc] [nvarchar](20) NOT NULL,
	[usuario] [nvarchar](50) NOT NULL,
	[contrasena] [nvarchar](350) NOT NULL,
	[cuenta_id] [int] NOT NULL,
	[tipo_usuario_id] [int] NOT NULL,
	[activo] [bit] NOT NULL CONSTRAINT [DF_usuario_activo]  DEFAULT ((1)),
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'0', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 14:41:34.547' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'0', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 14:42:15.647' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'0', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 14:42:39.217' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'0', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 14:42:53.157' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'0', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 14:44:17.333' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'0', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 14:44:50.067' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'0', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 14:47:46.950' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'0', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 14:48:31.373' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'0', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 14:55:05.487' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'0', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 14:55:17.100' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 15:10:39.367' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 15:25:51.030' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 15:26:06.667' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 15:26:48.433' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 15:34:19.020' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 15:34:41.630' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 15:35:02.260' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 15:36:35.527' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 15:38:42.733' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 15:39:50.540' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 15:41:42.210' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 15:42:48.600' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 15:47:28.767' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 16:26:09.037' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 16:26:23.777' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 16:27:48.043' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 16:28:13.413' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 16:28:19.670' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 16:29:14.780' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 16:32:56.140' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 16:34:03.907' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 16:39:42.650' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 17:12:11.183' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 17:21:09.090' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 17:33:05.560' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 15:27:10.660' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 16:02:37.903' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 16:08:26.227' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 16:17:17.757' AS DateTime))
INSERT [dbo].[acceso_log] ([usuario], [solicitud], [endpoint], [fecha_creacion]) VALUES (N'equipo1', N'System.ServiceModel.Channels.MessageHeaders', N'http://localhost:50629/AgroMarketService.svc', CAST(N'2017-03-30 16:19:10.720' AS DateTime))
SET IDENTITY_INSERT [dbo].[cuenta] ON 

INSERT [dbo].[cuenta] ([id], [monto], [limite_credito], [total_consumido], [total_disponible], [descripcion], [activo]) VALUES (2, CAST(50000000.00 AS Numeric(18, 2)), CAST(50000000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(50000000.00 AS Numeric(18, 2)), N'Cuenta del equipo 1', 1)
INSERT [dbo].[cuenta] ([id], [monto], [limite_credito], [total_consumido], [total_disponible], [descripcion], [activo]) VALUES (3, CAST(50000000.00 AS Numeric(18, 2)), CAST(50000000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(50000000.00 AS Numeric(18, 2)), N'Cuenta del equipo 2', 1)
INSERT [dbo].[cuenta] ([id], [monto], [limite_credito], [total_consumido], [total_disponible], [descripcion], [activo]) VALUES (4, CAST(50000000.00 AS Numeric(18, 2)), CAST(50000000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(50000000.00 AS Numeric(18, 2)), N'Cuenta del equipo 3', 1)
INSERT [dbo].[cuenta] ([id], [monto], [limite_credito], [total_consumido], [total_disponible], [descripcion], [activo]) VALUES (5, CAST(50000000.00 AS Numeric(18, 2)), CAST(50000000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(50000000.00 AS Numeric(18, 2)), N'Cuenta del equipo 4', 1)
INSERT [dbo].[cuenta] ([id], [monto], [limite_credito], [total_consumido], [total_disponible], [descripcion], [activo]) VALUES (6, CAST(50000000.00 AS Numeric(18, 2)), CAST(50000000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(50000000.00 AS Numeric(18, 2)), N'Cuenta del equipo 7', 1)
INSERT [dbo].[cuenta] ([id], [monto], [limite_credito], [total_consumido], [total_disponible], [descripcion], [activo]) VALUES (7, CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'Cuenta de equipo de Auditoría', 1)
SET IDENTITY_INSERT [dbo].[cuenta] OFF
SET IDENTITY_INSERT [dbo].[errores] ON 

INSERT [dbo].[errores] ([id], [codigo], [descripcion]) VALUES (1, N'AG001', N'Credenciales de usuario no válidas.')
INSERT [dbo].[errores] ([id], [codigo], [descripcion]) VALUES (2, N'AG002', N'Error interno no controlado.')
INSERT [dbo].[errores] ([id], [codigo], [descripcion]) VALUES (3, N'AG000', N'Procesado satisfactoriamente.')
INSERT [dbo].[errores] ([id], [codigo], [descripcion]) VALUES (4, N'AG003', N'La sesión no es válida o ha expirado.')
INSERT [dbo].[errores] ([id], [codigo], [descripcion]) VALUES (5, N'AG004', N'Error controlado.')
SET IDENTITY_INSERT [dbo].[errores] OFF
SET IDENTITY_INSERT [dbo].[intencion_compra] ON 

INSERT [dbo].[intencion_compra] ([id], [usuario_id], [fecha_creacion], [fecha_expiracion], [activo]) VALUES (1, 1, CAST(N'2017-03-30 17:12:12.477' AS DateTime), CAST(N'2017-04-29 17:12:12.477' AS DateTime), 1)
INSERT [dbo].[intencion_compra] ([id], [usuario_id], [fecha_creacion], [fecha_expiracion], [activo]) VALUES (2, 1, CAST(N'2017-03-30 17:33:06.753' AS DateTime), CAST(N'2017-04-29 17:33:06.753' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[intencion_compra] OFF
SET IDENTITY_INSERT [dbo].[oferta] ON 

INSERT [dbo].[oferta] ([id], [producto_id], [tipo_unidad_id], [cantidad], [precio_unidad], [usuario_id], [fecha_creacion], [activo]) VALUES (1, 1, 1, 5, CAST(200.00 AS Numeric(18, 2)), 1, CAST(N'2017-03-30 16:02:39.110' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[oferta] OFF
SET IDENTITY_INSERT [dbo].[producto] ON 

INSERT [dbo].[producto] ([id], [codigo], [descripcion]) VALUES (1, N'RDP01', N'Platano')
INSERT [dbo].[producto] ([id], [codigo], [descripcion]) VALUES (2, N'RDY01', N'Yuca')
SET IDENTITY_INSERT [dbo].[producto] OFF
SET IDENTITY_INSERT [dbo].[producto_intencion_compra] ON 

INSERT [dbo].[producto_intencion_compra] ([id], [producto_id], [tipo_unidad_id], [id_intencion_compra], [cantidad], [precio_unidad]) VALUES (1, 2, 1, 1, 20, CAST(1.00 AS Numeric(18, 2)))
INSERT [dbo].[producto_intencion_compra] ([id], [producto_id], [tipo_unidad_id], [id_intencion_compra], [cantidad], [precio_unidad]) VALUES (2, 1, 1, 1, 20, CAST(1.00 AS Numeric(18, 2)))
INSERT [dbo].[producto_intencion_compra] ([id], [producto_id], [tipo_unidad_id], [id_intencion_compra], [cantidad], [precio_unidad]) VALUES (3, 1, 1, 2, 5, CAST(200.00 AS Numeric(18, 2)))
SET IDENTITY_INSERT [dbo].[producto_intencion_compra] OFF
SET IDENTITY_INSERT [dbo].[sesion] ON 

INSERT [dbo].[sesion] ([id], [usuario_id], [token], [fecha_expiracion], [activo]) VALUES (1, 1, N'ecdc5221-29fd-45aa-89ff-12f0ab6c1348', CAST(N'2017-04-01 14:48:32.657' AS DateTime), 0)
INSERT [dbo].[sesion] ([id], [usuario_id], [token], [fecha_expiracion], [activo]) VALUES (2, 1, N'c0ce259e-ccf9-41a2-a9bc-ebbb0231c665', CAST(N'2017-04-01 14:55:06.743' AS DateTime), 0)
INSERT [dbo].[sesion] ([id], [usuario_id], [token], [fecha_expiracion], [activo]) VALUES (3, 1, N'20b038ce-e1c9-47ee-abfc-44d05fcbb950', CAST(N'2017-04-01 14:55:17.190' AS DateTime), 0)
INSERT [dbo].[sesion] ([id], [usuario_id], [token], [fecha_expiracion], [activo]) VALUES (4, 1, N'2b1a000c-ad14-4de6-bc32-99f7737ff7de', CAST(N'2017-04-01 15:26:48.520' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[sesion] OFF
SET IDENTITY_INSERT [dbo].[tipo_unidad] ON 

INSERT [dbo].[tipo_unidad] ([id], [descripcion]) VALUES (1, N'KILO')
INSERT [dbo].[tipo_unidad] ([id], [descripcion]) VALUES (2, N'LIBRA')
INSERT [dbo].[tipo_unidad] ([id], [descripcion]) VALUES (3, N'SACO')
SET IDENTITY_INSERT [dbo].[tipo_unidad] OFF
SET IDENTITY_INSERT [dbo].[tipo_usuario] ON 

INSERT [dbo].[tipo_usuario] ([id], [descripcion]) VALUES (1, N'Comprador')
INSERT [dbo].[tipo_usuario] ([id], [descripcion]) VALUES (2, N'Productor')
INSERT [dbo].[tipo_usuario] ([id], [descripcion]) VALUES (3, N'Auditoría')
SET IDENTITY_INSERT [dbo].[tipo_usuario] OFF
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([id], [nombre], [rnc], [usuario], [contrasena], [cuenta_id], [tipo_usuario_id], [activo]) VALUES (1, N'Jesús, Ismael y  Kevin', N'00000001', N'equipo1', N'+z2/nAcpT45/EYG6JcD/HQ==', 2, 1, 1)
INSERT [dbo].[usuario] ([id], [nombre], [rnc], [usuario], [contrasena], [cuenta_id], [tipo_usuario_id], [activo]) VALUES (2, N'Juan Alberto y Giselle', N'00000002', N'equipo2', N'2JEoMFHcpseux1sOuWW0hk3XDBckvNsS6aTCPzj1WlQ=', 3, 2, 1)
INSERT [dbo].[usuario] ([id], [nombre], [rnc], [usuario], [contrasena], [cuenta_id], [tipo_usuario_id], [activo]) VALUES (3, N'Jose Cordero y Juárez', N'00000003', N'equipo3', N'p9HLmsp+3kiZSdS6K8LD3Q==', 4, 1, 1)
INSERT [dbo].[usuario] ([id], [nombre], [rnc], [usuario], [contrasena], [cuenta_id], [tipo_usuario_id], [activo]) VALUES (4, N'Jeremy y Dwane', N'00000005', N'equipo4', N'KV49kqS6w0pJUCf4wpE7BQ==', 5, 2, 1)
INSERT [dbo].[usuario] ([id], [nombre], [rnc], [usuario], [contrasena], [cuenta_id], [tipo_usuario_id], [activo]) VALUES (5, N'Moisés y Laura', N'00000006', N'auditoria', N'oKCpQNo02Bv8oCG0TSCW5w==', 7, 3, 1)
INSERT [dbo].[usuario] ([id], [nombre], [rnc], [usuario], [contrasena], [cuenta_id], [tipo_usuario_id], [activo]) VALUES (6, N'Miguel Alejandro y Cristhian', N'00000007', N'equipo7', N'b8iFDwNHU18F8xyYPDP6+Q==', 6, 1, 1)
SET IDENTITY_INSERT [dbo].[usuario] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_errores]    Script Date: 3/30/2017 6:12:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_errores] ON [dbo].[errores]
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_firma]    Script Date: 3/30/2017 6:12:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_firma] ON [dbo].[firma]
(
	[vendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_firma_1]    Script Date: 3/30/2017 6:12:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_firma_1] ON [dbo].[firma]
(
	[comprador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_firma_2]    Script Date: 3/30/2017 6:12:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_firma_2] ON [dbo].[firma]
(
	[comprador] ASC,
	[vendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_intencion_venta]    Script Date: 3/30/2017 6:12:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_intencion_venta] ON [dbo].[intencion_venta]
(
	[usuario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Unique_codigo]    Script Date: 3/30/2017 6:12:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [Unique_codigo] ON [dbo].[producto]
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_producto_intencion_compra]    Script Date: 3/30/2017 6:12:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_producto_intencion_compra] ON [dbo].[producto_intencion_compra]
(
	[id_intencion_compra] ASC,
	[producto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_producto_intencion_venta]    Script Date: 3/30/2017 6:12:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_producto_intencion_venta] ON [dbo].[producto_intencion_venta]
(
	[id_intencion_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_producto_intencion_venta_1]    Script Date: 3/30/2017 6:12:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_producto_intencion_venta_1] ON [dbo].[producto_intencion_venta]
(
	[producto_id] ASC,
	[id_intencion_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [unique_usuario]    Script Date: 3/30/2017 6:12:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [unique_usuario] ON [dbo].[usuario]
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[error_log] ADD  CONSTRAINT [DF_error_log_fecha_creacion]  DEFAULT (getdate()) FOR [fecha_creacion]
GO
ALTER TABLE [dbo].[firma] ADD  CONSTRAINT [DF_firma_fecha_creacion]  DEFAULT (getdate()) FOR [fecha_creacion]
GO
ALTER TABLE [dbo].[intencion_venta] ADD  CONSTRAINT [DF_intencion_venta_fecha_creacion]  DEFAULT (getdate()) FOR [fecha_creacion]
GO
ALTER TABLE [dbo].[intencion_venta] ADD  CONSTRAINT [DF_intencion_venta_activo]  DEFAULT ((1)) FOR [activo]
GO
ALTER TABLE [dbo].[firma]  WITH CHECK ADD  CONSTRAINT [FK_firma_usuario] FOREIGN KEY([vendedor])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[firma] CHECK CONSTRAINT [FK_firma_usuario]
GO
ALTER TABLE [dbo].[firma]  WITH CHECK ADD  CONSTRAINT [FK_firma_usuario1] FOREIGN KEY([comprador])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[firma] CHECK CONSTRAINT [FK_firma_usuario1]
GO
ALTER TABLE [dbo].[intencion_compra]  WITH CHECK ADD  CONSTRAINT [FK_intencion_compra_usuario] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[intencion_compra] CHECK CONSTRAINT [FK_intencion_compra_usuario]
GO
ALTER TABLE [dbo].[intencion_venta]  WITH CHECK ADD  CONSTRAINT [FK_intencion_venta_usuario] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[intencion_venta] CHECK CONSTRAINT [FK_intencion_venta_usuario]
GO
ALTER TABLE [dbo].[oferta]  WITH CHECK ADD  CONSTRAINT [FK_oferta_producto] FOREIGN KEY([producto_id])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[oferta] CHECK CONSTRAINT [FK_oferta_producto]
GO
ALTER TABLE [dbo].[oferta]  WITH CHECK ADD  CONSTRAINT [FK_oferta_tipo_unidad] FOREIGN KEY([tipo_unidad_id])
REFERENCES [dbo].[tipo_unidad] ([id])
GO
ALTER TABLE [dbo].[oferta] CHECK CONSTRAINT [FK_oferta_tipo_unidad]
GO
ALTER TABLE [dbo].[oferta]  WITH CHECK ADD  CONSTRAINT [FK_oferta_usuario] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[oferta] CHECK CONSTRAINT [FK_oferta_usuario]
GO
ALTER TABLE [dbo].[producto_intencion_compra]  WITH CHECK ADD  CONSTRAINT [FK_producto_intencion_compra_intencion_compra] FOREIGN KEY([id_intencion_compra])
REFERENCES [dbo].[intencion_compra] ([id])
GO
ALTER TABLE [dbo].[producto_intencion_compra] CHECK CONSTRAINT [FK_producto_intencion_compra_intencion_compra]
GO
ALTER TABLE [dbo].[producto_intencion_compra]  WITH CHECK ADD  CONSTRAINT [FK_producto_intencion_compra_producto] FOREIGN KEY([producto_id])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[producto_intencion_compra] CHECK CONSTRAINT [FK_producto_intencion_compra_producto]
GO
ALTER TABLE [dbo].[producto_intencion_compra]  WITH CHECK ADD  CONSTRAINT [FK_producto_intencion_compra_tipo_unidad] FOREIGN KEY([tipo_unidad_id])
REFERENCES [dbo].[tipo_unidad] ([id])
GO
ALTER TABLE [dbo].[producto_intencion_compra] CHECK CONSTRAINT [FK_producto_intencion_compra_tipo_unidad]
GO
ALTER TABLE [dbo].[producto_intencion_venta]  WITH CHECK ADD  CONSTRAINT [FK_producto_intencion_venta_intencion_venta] FOREIGN KEY([id_intencion_venta])
REFERENCES [dbo].[intencion_venta] ([id])
GO
ALTER TABLE [dbo].[producto_intencion_venta] CHECK CONSTRAINT [FK_producto_intencion_venta_intencion_venta]
GO
ALTER TABLE [dbo].[producto_intencion_venta]  WITH CHECK ADD  CONSTRAINT [FK_producto_intencion_venta_producto] FOREIGN KEY([producto_id])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[producto_intencion_venta] CHECK CONSTRAINT [FK_producto_intencion_venta_producto]
GO
ALTER TABLE [dbo].[producto_intencion_venta]  WITH CHECK ADD  CONSTRAINT [FK_producto_intencion_venta_tipo_unidad] FOREIGN KEY([tipo_unidad_id])
REFERENCES [dbo].[tipo_unidad] ([id])
GO
ALTER TABLE [dbo].[producto_intencion_venta] CHECK CONSTRAINT [FK_producto_intencion_venta_tipo_unidad]
GO
ALTER TABLE [dbo].[sesion]  WITH CHECK ADD  CONSTRAINT [FK_sesion_usuario] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[sesion] CHECK CONSTRAINT [FK_sesion_usuario]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_cuenta] FOREIGN KEY([cuenta_id])
REFERENCES [dbo].[cuenta] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_cuenta]
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [FK_usuario_tipo_usuario] FOREIGN KEY([tipo_usuario_id])
REFERENCES [dbo].[tipo_usuario] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [FK_usuario_tipo_usuario]
GO
USE [master]
GO
ALTER DATABASE [AgroMarketDB] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [BD_CLINICA_RP]    Script Date: 3/04/2017 01:16:19 AM ******/
CREATE DATABASE [BD_CLINICA_RP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_CLINICA_RP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BD_CLINICA_RP.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BD_CLINICA_RP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\BD_CLINICA_RP_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BD_CLINICA_RP] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_CLINICA_RP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_CLINICA_RP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_CLINICA_RP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_CLINICA_RP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD_CLINICA_RP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_CLINICA_RP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET RECOVERY FULL 
GO
ALTER DATABASE [BD_CLINICA_RP] SET  MULTI_USER 
GO
ALTER DATABASE [BD_CLINICA_RP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_CLINICA_RP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_CLINICA_RP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_CLINICA_RP] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BD_CLINICA_RP] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD_CLINICA_RP', N'ON'
GO
USE [BD_CLINICA_RP]
GO
/****** Object:  Table [dbo].[T_BASE_FINANCIERA]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_BASE_FINANCIERA](
	[id_base_financiera] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](max) NULL,
	[comentario] [varchar](50) NULL,
	[monto] [int] NULL,
	[presupuesto] [int] NULL,
	[promocion] [varchar](20) NULL,
	[fecha_registro] [datetime] NULL,
 CONSTRAINT [PK_T_BASE_FINANCIERA] PRIMARY KEY CLUSTERED 
(
	[id_base_financiera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_BASE_LEGAL]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_BASE_LEGAL](
	[id_base_legal] [int] IDENTITY(1,1) NOT NULL,
	[nombre_normativa] [nvarchar](max) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[autorizacion] [varchar](10) NULL,
	[fecha_registro] [datetime] NULL,
 CONSTRAINT [PK_T_BASE_LEGAL] PRIMARY KEY CLUSTERED 
(
	[id_base_legal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_BIEN]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_BIEN](
	[codBien] [int] NOT NULL,
	[dscBien] [varchar](100) NULL,
	[fecAdquisicion] [datetime] NULL,
 CONSTRAINT [PK_T_BIEN] PRIMARY KEY CLUSTERED 
(
	[codBien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_BITACORA_INCIDENCIA]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_BITACORA_INCIDENCIA](
	[id_bitacora] [int] IDENTITY(1,1) NOT NULL,
	[tipo_incidencia] [varchar](10) NULL,
	[fecha_registro] [datetime] NULL,
	[descripcion] [nvarchar](max) NOT NULL,
	[id_plan_salud] [int] NULL,
	[idempleado] [int] NULL,
 CONSTRAINT [PK_T_BITACORA_INCIDENCIA] PRIMARY KEY CLUSTERED 
(
	[id_bitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_COMPROBANTE]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_COMPROBANTE](
	[id_comprobante] [int] IDENTITY(1,1) NOT NULL,
	[numero] [varchar](11) NULL,
	[descripcion] [nvarchar](max) NOT NULL,
	[fecha_emision] [datetime] NOT NULL,
	[fecha_pago] [datetime] NULL,
	[moneda] [int] NULL,
	[importe] [int] NULL,
	[impuesto] [int] NULL,
	[area_venta] [nvarchar](max) NOT NULL,
	[total] [decimal](18, 0) NOT NULL,
	[id_paciente] [int] NULL,
 CONSTRAINT [PK_T_COMPROBANTE] PRIMARY KEY CLUSTERED 
(
	[id_comprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_CONFIGURACION]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CONFIGURACION](
	[id_configuracion] [int] IDENTITY(1,1) NOT NULL,
	[modulo] [nvarchar](max) NOT NULL,
	[area] [nvarchar](max) NOT NULL,
	[indicador] [nvarchar](max) NOT NULL,
	[valor_minimo] [nvarchar](max) NOT NULL,
	[valor_maximo] [nvarchar](max) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[id_investigacion_comercial] [int] NULL,
 CONSTRAINT [PK_T_CONFIGURACION] PRIMARY KEY CLUSTERED 
(
	[id_configuracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_EMPLEADO]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_EMPLEADO](
	[idEmpleado] [int] NOT NULL,
	[nroDni] [int] NULL,
	[nomEmpleado] [varchar](200) NULL,
	[fecIngreso] [datetime] NULL,
	[stdEmplead] [char](3) NULL,
	[dscCargo] [varchar](100) NULL,
	[dscProfesion] [varchar](100) NULL,
	[dscArea] [varchar](100) NULL,
	[dscCorreo] [varchar](100) NULL,
	[idEspecialidad] [int] NULL,
	[codPersona] [int] NULL,
 CONSTRAINT [PK_T_EMPLEADO] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_EMPRESA]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_EMPRESA](
	[codEmpresa] [int] NOT NULL,
	[nroRuc] [varchar](20) NULL,
	[razonSocial] [varchar](300) NULL,
	[direccion] [varchar](300) NULL,
	[telefono] [varchar](20) NULL,
	[codPersona] [int] NULL,
 CONSTRAINT [PK_T_EMPRESA] PRIMARY KEY CLUSTERED 
(
	[codEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_EQUIPO_MEDICO]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_EQUIPO_MEDICO](
	[idEquipoMedico] [int] NOT NULL,
	[intervaloMant] [int] NULL,
	[nivelPrioridad] [int] NULL,
	[fecUltimoMant] [datetime] NULL,
	[estEquipo] [char](3) NULL,
	[codMueble] [int] NULL,
	[idEspecialidad] [int] NULL,
	[codInmueble] [int] NULL,
 CONSTRAINT [PK_T_EQUIPO_MEDICO] PRIMARY KEY CLUSTERED 
(
	[idEquipoMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_EQUIPO_USO]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_EQUIPO_USO](
	[idequipousoo] [int] NOT NULL,
	[idEquipoMedico] [int] NULL,
	[fecUso] [datetime] NULL,
 CONSTRAINT [PK_T_EQUIPO_USO] PRIMARY KEY CLUSTERED 
(
	[idequipousoo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_ESPECIALIDAD_MEDICA]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_ESPECIALIDAD_MEDICA](
	[idEspecialidad] [int] NOT NULL,
	[nomEspecialidad] [varchar](100) NULL,
 CONSTRAINT [PK_T_ESPECIALIDAD_MEDICA] PRIMARY KEY CLUSTERED 
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_ESPECIALIDAD_SERVICIO]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_ESPECIALIDAD_SERVICIO](
	[id_servicio] [int] NOT NULL,
	[idEspecialidad] [int] NOT NULL,
	[fecha_ingreso] [datetime] NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_T_ESPECIALIDAD_SERVICIO] PRIMARY KEY CLUSTERED 
(
	[id_servicio] ASC,
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_ESTRATEGIA_COMERCIAL]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_ESTRATEGIA_COMERCIAL](
	[id_estrategia_comercial] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](max) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[objetivo] [varchar](50) NULL,
	[fecha_registro] [datetime] NULL,
	[presupuesto] [int] NULL,
 CONSTRAINT [PK_T_ESTRATEGIA_COMERCIAL] PRIMARY KEY CLUSTERED 
(
	[id_estrategia_comercial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_INMUEBLE]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_INMUEBLE](
	[codInmueble] [int] NOT NULL,
	[dscTipoEstado] [varchar](100) NULL,
	[codBien] [int] NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK_T_INMUEBLE] PRIMARY KEY CLUSTERED 
(
	[codInmueble] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_INVESTIGACION_COMERCIAL]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_INVESTIGACION_COMERCIAL](
	[id_investigacion_comercial] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](max) NOT NULL,
	[resultado_sexo] [varchar](10) NULL,
	[resultado_edad] [varchar](10) NULL,
	[resultado_servicio] [varchar](10) NULL,
	[resultado_especialidad] [varchar](10) NULL,
	[fecha_creacion] [varchar](10) NULL,
 CONSTRAINT [PK_T_INVESTIGACION_COMERCIAL] PRIMARY KEY CLUSTERED 
(
	[id_investigacion_comercial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_MANTENIMIENTO_EQUIPO]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_MANTENIMIENTO_EQUIPO](
	[idMantEquipo] [int] IDENTITY(1,1) NOT NULL,
	[codPlan] [int] NULL,
	[fecMantenimiento1] [datetime] NULL,
	[fecMantenimiento2] [datetime] NULL,
	[fecMantenimiento3] [datetime] NULL,
	[dscTipoMantenimiento] [varchar](200) NULL,
	[estMantenimiento] [char](3) NULL,
	[idEquipoMedico] [int] NULL,
	[idSolicitud] [int] NULL,
	[codEmpresa] [int] NULL,
 CONSTRAINT [PK_T_MANTENIMIENTO_EQUIPO] PRIMARY KEY CLUSTERED 
(
	[idMantEquipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_MODELO]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_MODELO](
	[codModelo] [int] NOT NULL,
	[nomModelo] [varchar](100) NULL,
	[dscMarca] [varchar](100) NULL,
 CONSTRAINT [PK_T_MODELO] PRIMARY KEY CLUSTERED 
(
	[codModelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_MUEBLE]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_MUEBLE](
	[codMueble] [int] NOT NULL,
	[dscFuncion] [varchar](100) NULL,
	[dscAplicacionMedica] [varchar](100) NULL,
	[garantia] [bit] NULL,
	[tipoMueble] [char](3) NULL,
	[codBien] [int] NULL,
	[codEmpresa] [int] NULL,
	[codModelo] [int] NULL,
 CONSTRAINT [PK_T_MUEBLE] PRIMARY KEY CLUSTERED 
(
	[codMueble] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_PACIENTE]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_PACIENTE](
	[id_paciente] [int] IDENTITY(1,1) NOT NULL,
	[nom_paciente] [nvarchar](max) NULL,
	[fecha_nacimiento] [datetime] NOT NULL,
	[segmentacion] [nvarchar](max) NOT NULL,
	[estado] [varchar](10) NULL,
	[codPersona] [int] NULL,
 CONSTRAINT [PK_T_PACIENTE] PRIMARY KEY CLUSTERED 
(
	[id_paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_PERSONA]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_PERSONA](
	[codPersona] [int] NOT NULL,
	[nompersona] [varchar](100) NULL,
 CONSTRAINT [PK_T_PERSONA] PRIMARY KEY CLUSTERED 
(
	[codPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_PERSONA_PLANSALUD]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PERSONA_PLANSALUD](
	[id_persona_plansalud] [int] IDENTITY(1,1) NOT NULL,
	[fecha_inicio] [datetime] NOT NULL,
	[fecha_fin] [datetime] NOT NULL,
	[codPersona] [int] NOT NULL,
	[id_plan_salud] [int] NOT NULL,
 CONSTRAINT [PK_T_PERSONA_PLANSALUD] PRIMARY KEY CLUSTERED 
(
	[id_persona_plansalud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_PLAN_BASE_FINANCIERA]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_PLAN_BASE_FINANCIERA](
	[id_plan_base_financiera] [int] IDENTITY(1,1) NOT NULL,
	[id_base_financiera] [int] NULL,
	[id_plan_salud] [int] NULL,
	[fecha_registro] [datetime] NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_T_PLAN_BASE_FINANCIERA] PRIMARY KEY CLUSTERED 
(
	[id_plan_base_financiera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_PLAN_BASE_LEGAL]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_PLAN_BASE_LEGAL](
	[id_plan_base_financiera] [int] IDENTITY(1,1) NOT NULL,
	[id_base_legal] [int] NULL,
	[id_plan_salud] [int] NULL,
	[fecha_registro] [datetime] NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_T_PLAN_BASE_LEGAL] PRIMARY KEY CLUSTERED 
(
	[id_plan_base_financiera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_PLAN_DE_SALUD]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_PLAN_DE_SALUD](
	[id_plan_salud] [int] IDENTITY(1,1) NOT NULL,
	[nombre_plan] [nvarchar](max) NOT NULL,
	[descripcion] [varchar](10) NULL,
	[fecha_inicio] [datetime] NULL,
	[fecha_fin] [datetime] NULL,
	[objetivo] [varchar](20) NULL,
	[id_investigacion_comercial] [int] NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_T_PLAN_DE_SALUD] PRIMARY KEY CLUSTERED 
(
	[id_plan_salud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_PLAN_ESPECIALIDADxSERVICIO]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_PLAN_ESPECIALIDADxSERVICIO](
	[id_plan_especialidad] [int] IDENTITY(1,1) NOT NULL,
	[id_especialidad_servicio] [int] NULL,
	[id_plan_salud] [int] NULL,
	[fecha_inicio] [datetime] NULL,
	[fecha_fin] [datetime] NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_T_PLAN_ESPECIALIDADxSERVICIO] PRIMARY KEY CLUSTERED 
(
	[id_plan_especialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_PLAN_ESTRATEGIA_COMERCIAL]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_PLAN_ESTRATEGIA_COMERCIAL](
	[id_plan_estrategia_comercial] [int] IDENTITY(1,1) NOT NULL,
	[id_estrategia_comercial] [int] NULL,
	[id_plan_salud] [int] NULL,
	[fecha_registro] [datetime] NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_T_PLAN_ESTRATEGIA_COMERCIAL] PRIMARY KEY CLUSTERED 
(
	[id_plan_estrategia_comercial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_PLAN_MANTENIMIENTO]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_PLAN_MANTENIMIENTO](
	[codPlan] [int] NOT NULL,
	[fecRegistro] [datetime] NULL,
	[estPlan] [char](3) NULL,
	[idTecnicoMant] [int] NULL,
 CONSTRAINT [PK_T_PLAN_MANTENIMIENTO] PRIMARY KEY CLUSTERED 
(
	[codPlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_PLAN_PACIENTE]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_PLAN_PACIENTE](
	[id_plan_paciente] [int] IDENTITY(1,1) NOT NULL,
	[id_paciente] [int] NULL,
	[id_plan_salud] [int] NULL,
	[fecha_registro] [datetime] NULL,
	[fecha_fin] [datetime] NULL,
	[estado] [char](1) NULL,
 CONSTRAINT [PK_T_PLAN_PACIENTE] PRIMARY KEY CLUSTERED 
(
	[id_plan_paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_PLAN_SERVICIO]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PLAN_SERVICIO](
	[id_plan_servicio] [int] IDENTITY(1,1) NOT NULL,
	[fecha_inicio] [datetime] NOT NULL,
	[fecha_fin] [datetime] NULL,
	[id_plan_salud] [int] NOT NULL,
	[id_servicio] [int] NOT NULL,
	[idEspecialidad] [int] NOT NULL,
	[estado] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_T_PLAN_SERVICIO] PRIMARY KEY CLUSTERED 
(
	[id_plan_servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_PROGRAMACION_MEDICA]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_PROGRAMACION_MEDICA](
	[id_programacion] [int] IDENTITY(1,1) NOT NULL,
	[prestaciones] [int] NULL,
	[dis_prestaciones] [int] NULL,
	[fecha] [datetime] NOT NULL,
	[hora_inicio] [time](7) NOT NULL,
	[hora_fin] [time](7) NOT NULL,
	[anotaciones] [varchar](10) NULL,
	[estado] [varchar](10) NULL,
	[descripcion] [nvarchar](max) NOT NULL,
	[id_empleado] [int] NOT NULL,
	[codInmueble] [int] NULL,
	[codPersona] [int] NOT NULL,
	[id_servicio] [int] NOT NULL,
	[idEspecialidad] [int] NOT NULL,
 CONSTRAINT [PK_T_PROGRAMACION_MEDICA] PRIMARY KEY CLUSTERED 
(
	[id_programacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_PROYECTO_PLANSALUD]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PROYECTO_PLANSALUD](
	[id_proyecto] [int] IDENTITY(1,1) NOT NULL,
	[nombre_proyecto] [nvarchar](max) NOT NULL,
	[descripcion] [nvarchar](max) NOT NULL,
	[fecha_inicio] [datetime] NULL,
	[fecha_fin] [datetime] NULL,
	[estado] [smallint] NOT NULL,
	[id_investigacion_comercial] [int] NULL,
 CONSTRAINT [PK_T_PROYECTO_PLANSALUD] PRIMARY KEY CLUSTERED 
(
	[id_proyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_RESERVA_SERVICIO_SALUD]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_RESERVA_SERVICIO_SALUD](
	[id_reserva] [int] IDENTITY(1,1) NOT NULL,
	[fecha_reserva] [datetime] NULL,
	[tipo_atencion] [varchar](20) NULL,
	[estado] [char](1) NULL,
	[id_paciente] [int] NULL,
	[id_servicio] [int] NULL,
 CONSTRAINT [PK_T_RESERVA_SERVICIO_SALUD] PRIMARY KEY CLUSTERED 
(
	[id_reserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_SEGUIMIENTO]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_SEGUIMIENTO](
	[id_seguimiento] [int] IDENTITY(1,1) NOT NULL,
	[id_bitacora] [int] NULL,
	[id_plan_salud] [int] NULL,
	[seguimiento] [varchar](500) NULL,
	[fecha_registro] [datetime] NULL,
 CONSTRAINT [PK_T_SEGUIMIENTO] PRIMARY KEY CLUSTERED 
(
	[id_seguimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_SERVICIO_SALUD]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_SERVICIO_SALUD](
	[id_servicio] [int] IDENTITY(1,1) NOT NULL,
	[nombre_servicio] [nvarchar](max) NOT NULL,
	[tipo_servicio] [varchar](10) NULL,
 CONSTRAINT [PK_T_SERVICIO_SALUD] PRIMARY KEY CLUSTERED 
(
	[id_servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_SOLICITUD_MANTENIMIENTO]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_SOLICITUD_MANTENIMIENTO](
	[idSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[fecSolicitud] [datetime] NULL,
	[estSolicitud] [char](3) NULL,
	[fecAtencion] [datetime] NULL,
	[dscObservacion] [varchar](300) NULL,
	[idTecnicoMant] [int] NULL,
	[idEmpleado] [int] NULL,
	[idEquipoMedico] [int] NULL,
 CONSTRAINT [PK_T_SOLICITUD_MANTENIMIENTO] PRIMARY KEY CLUSTERED 
(
	[idSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_TECNICO_MANTENIMIENTO]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_TECNICO_MANTENIMIENTO](
	[idTecnicoMant] [int] NOT NULL,
	[idEmpleado] [int] NULL,
	[experienciaTrabajoRiesgo] [varchar](200) NULL,
	[seguroRiesgo] [varchar](100) NULL,
	[vigenciaEPP] [datetime] NULL,
	[vigenciaExamenMedicoOcup] [datetime] NULL,
	[habilidades] [varchar](300) NULL,
 CONSTRAINT [PK_T_TECNICO_MANTENIMIENTO] PRIMARY KEY CLUSTERED 
(
	[idTecnicoMant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_TIPO_PERSONA]    Script Date: 3/04/2017 01:16:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_TIPO_PERSONA](
	[id_tipo_persona] [int] IDENTITY(1,1) NOT NULL,
	[nombre_servicio] [nvarchar](max) NOT NULL,
	[tipo_servicio] [varchar](10) NULL,
 CONSTRAINT [PK_T_TIPO_PERSONA] PRIMARY KEY CLUSTERED 
(
	[id_tipo_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[T_CONFIGURACION] ON 

INSERT [dbo].[T_CONFIGURACION] ([id_configuracion], [modulo], [area], [indicador], [valor_minimo], [valor_maximo], [fecha], [id_investigacion_comercial]) VALUES (3, N'modulo', N'area', N'asignar_servicio', N'5', N'10', CAST(N'2017-03-03 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[T_CONFIGURACION] ([id_configuracion], [modulo], [area], [indicador], [valor_minimo], [valor_maximo], [fecha], [id_investigacion_comercial]) VALUES (4, N'modulo1', N'area1', N'retirar_servicio', N'2', N'3', CAST(N'2017-03-03 00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[T_CONFIGURACION] OFF
INSERT [dbo].[T_EMPLEADO] ([idEmpleado], [nroDni], [nomEmpleado], [fecIngreso], [stdEmplead], [dscCargo], [dscProfesion], [dscArea], [dscCorreo], [idEspecialidad], [codPersona]) VALUES (1, 34323454, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[T_EMPLEADO] ([idEmpleado], [nroDni], [nomEmpleado], [fecIngreso], [stdEmplead], [dscCargo], [dscProfesion], [dscArea], [dscCorreo], [idEspecialidad], [codPersona]) VALUES (2, 98787656, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[T_EMPLEADO] ([idEmpleado], [nroDni], [nomEmpleado], [fecIngreso], [stdEmplead], [dscCargo], [dscProfesion], [dscArea], [dscCorreo], [idEspecialidad], [codPersona]) VALUES (3, 45445567, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (1, N'ODONTOLOGÍA')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (2, N'PSICOLOGÍA')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (3, N'PEDIATRIA')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (4, N'OFTALMOLOGÍA')
INSERT [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad], [nomEspecialidad]) VALUES (5, N'ONCOLOGÍA')
INSERT [dbo].[T_ESPECIALIDAD_SERVICIO] ([id_servicio], [idEspecialidad], [fecha_ingreso], [estado]) VALUES (1, 1, CAST(N'2015-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[T_ESPECIALIDAD_SERVICIO] ([id_servicio], [idEspecialidad], [fecha_ingreso], [estado]) VALUES (1, 2, CAST(N'2015-03-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[T_ESPECIALIDAD_SERVICIO] ([id_servicio], [idEspecialidad], [fecha_ingreso], [estado]) VALUES (2, 2, CAST(N'2016-02-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[T_ESPECIALIDAD_SERVICIO] ([id_servicio], [idEspecialidad], [fecha_ingreso], [estado]) VALUES (2, 3, CAST(N'2016-04-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[T_ESPECIALIDAD_SERVICIO] ([id_servicio], [idEspecialidad], [fecha_ingreso], [estado]) VALUES (3, 3, CAST(N'2016-05-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[T_ESPECIALIDAD_SERVICIO] ([id_servicio], [idEspecialidad], [fecha_ingreso], [estado]) VALUES (3, 4, CAST(N'2016-08-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[T_ESPECIALIDAD_SERVICIO] ([id_servicio], [idEspecialidad], [fecha_ingreso], [estado]) VALUES (4, 5, CAST(N'2017-02-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (1, N'LUIS DIAZ')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (2, N'JUAN PERES')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (3, N'ANDRES RIOS')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (4, N'HENNRI TAPIA')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (5, N'CRISTIAN MACEDO')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (6, N'CRISTIAN CUEVA')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (7, N'ANDRES MENDOZA')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (8, N'PIZARRO')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (9, N'PAOLO G')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (10, N'GARECA')
INSERT [dbo].[T_PERSONA] ([codPersona], [nompersona]) VALUES (11, N'RUIZ D')
SET IDENTITY_INSERT [dbo].[T_PERSONA_PLANSALUD] ON 

INSERT [dbo].[T_PERSONA_PLANSALUD] ([id_persona_plansalud], [fecha_inicio], [fecha_fin], [codPersona], [id_plan_salud]) VALUES (2, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(N'2015-04-30 00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[T_PERSONA_PLANSALUD] ([id_persona_plansalud], [fecha_inicio], [fecha_fin], [codPersona], [id_plan_salud]) VALUES (3, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(N'2015-06-30 00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[T_PERSONA_PLANSALUD] ([id_persona_plansalud], [fecha_inicio], [fecha_fin], [codPersona], [id_plan_salud]) VALUES (4, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(N'2015-08-30 00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[T_PERSONA_PLANSALUD] ([id_persona_plansalud], [fecha_inicio], [fecha_fin], [codPersona], [id_plan_salud]) VALUES (5, CAST(N'2015-09-01 00:00:00.000' AS DateTime), CAST(N'2015-10-30 00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[T_PERSONA_PLANSALUD] ([id_persona_plansalud], [fecha_inicio], [fecha_fin], [codPersona], [id_plan_salud]) VALUES (6, CAST(N'2015-11-01 00:00:00.000' AS DateTime), CAST(N'2015-12-30 00:00:00.000' AS DateTime), 3, 2)
INSERT [dbo].[T_PERSONA_PLANSALUD] ([id_persona_plansalud], [fecha_inicio], [fecha_fin], [codPersona], [id_plan_salud]) VALUES (7, CAST(N'2016-01-01 00:00:00.000' AS DateTime), CAST(N'2016-03-30 00:00:00.000' AS DateTime), 3, 2)
INSERT [dbo].[T_PERSONA_PLANSALUD] ([id_persona_plansalud], [fecha_inicio], [fecha_fin], [codPersona], [id_plan_salud]) VALUES (8, CAST(N'2016-01-01 00:00:00.000' AS DateTime), CAST(N'2016-05-30 00:00:00.000' AS DateTime), 3, 3)
INSERT [dbo].[T_PERSONA_PLANSALUD] ([id_persona_plansalud], [fecha_inicio], [fecha_fin], [codPersona], [id_plan_salud]) VALUES (9, CAST(N'2016-01-01 00:00:00.000' AS DateTime), CAST(N'2016-07-30 00:00:00.000' AS DateTime), 3, 3)
INSERT [dbo].[T_PERSONA_PLANSALUD] ([id_persona_plansalud], [fecha_inicio], [fecha_fin], [codPersona], [id_plan_salud]) VALUES (10, CAST(N'2016-08-01 00:00:00.000' AS DateTime), CAST(N'2016-09-30 00:00:00.000' AS DateTime), 5, 3)
INSERT [dbo].[T_PERSONA_PLANSALUD] ([id_persona_plansalud], [fecha_inicio], [fecha_fin], [codPersona], [id_plan_salud]) VALUES (11, CAST(N'2016-10-01 00:00:00.000' AS DateTime), CAST(N'2016-11-30 00:00:00.000' AS DateTime), 5, 3)
INSERT [dbo].[T_PERSONA_PLANSALUD] ([id_persona_plansalud], [fecha_inicio], [fecha_fin], [codPersona], [id_plan_salud]) VALUES (12, CAST(N'2016-12-01 00:00:00.000' AS DateTime), CAST(N'2017-01-30 00:00:00.000' AS DateTime), 5, 5)
INSERT [dbo].[T_PERSONA_PLANSALUD] ([id_persona_plansalud], [fecha_inicio], [fecha_fin], [codPersona], [id_plan_salud]) VALUES (13, CAST(N'2017-02-01 00:00:00.000' AS DateTime), CAST(N'2017-03-30 00:00:00.000' AS DateTime), 1, 5)
INSERT [dbo].[T_PERSONA_PLANSALUD] ([id_persona_plansalud], [fecha_inicio], [fecha_fin], [codPersona], [id_plan_salud]) VALUES (14, CAST(N'2017-05-01 00:00:00.000' AS DateTime), CAST(N'2017-07-30 00:00:00.000' AS DateTime), 1, 5)
INSERT [dbo].[T_PERSONA_PLANSALUD] ([id_persona_plansalud], [fecha_inicio], [fecha_fin], [codPersona], [id_plan_salud]) VALUES (15, CAST(N'2017-08-01 00:00:00.000' AS DateTime), CAST(N'2017-09-30 00:00:00.000' AS DateTime), 1, 5)
INSERT [dbo].[T_PERSONA_PLANSALUD] ([id_persona_plansalud], [fecha_inicio], [fecha_fin], [codPersona], [id_plan_salud]) VALUES (16, CAST(N'2017-10-01 00:00:00.000' AS DateTime), CAST(N'2017-11-30 00:00:00.000' AS DateTime), 1, 5)
SET IDENTITY_INSERT [dbo].[T_PERSONA_PLANSALUD] OFF
SET IDENTITY_INSERT [dbo].[T_PLAN_DE_SALUD] ON 

INSERT [dbo].[T_PLAN_DE_SALUD] ([id_plan_salud], [nombre_plan], [descripcion], [fecha_inicio], [fecha_fin], [objetivo], [id_investigacion_comercial], [estado]) VALUES (1, N'PLAN BÁSICO', N'PLNB', NULL, NULL, N'OBJ BASICO', NULL, N'1')
INSERT [dbo].[T_PLAN_DE_SALUD] ([id_plan_salud], [nombre_plan], [descripcion], [fecha_inicio], [fecha_fin], [objetivo], [id_investigacion_comercial], [estado]) VALUES (2, N'PLAN FAMILIAR', N'PLNF', NULL, NULL, N'OBJ FAMILIAR', NULL, N'1')
INSERT [dbo].[T_PLAN_DE_SALUD] ([id_plan_salud], [nombre_plan], [descripcion], [fecha_inicio], [fecha_fin], [objetivo], [id_investigacion_comercial], [estado]) VALUES (3, N'PLAN 03', N'DES 03', NULL, NULL, N'OBJ 03', NULL, N'1')
INSERT [dbo].[T_PLAN_DE_SALUD] ([id_plan_salud], [nombre_plan], [descripcion], [fecha_inicio], [fecha_fin], [objetivo], [id_investigacion_comercial], [estado]) VALUES (4, N'PLAN 04', N'DES 04', NULL, NULL, N'OBJ 04', NULL, N'1')
INSERT [dbo].[T_PLAN_DE_SALUD] ([id_plan_salud], [nombre_plan], [descripcion], [fecha_inicio], [fecha_fin], [objetivo], [id_investigacion_comercial], [estado]) VALUES (5, N'PLAN 05', N'DES 05', NULL, NULL, N'OBJ 05', NULL, N'1')
INSERT [dbo].[T_PLAN_DE_SALUD] ([id_plan_salud], [nombre_plan], [descripcion], [fecha_inicio], [fecha_fin], [objetivo], [id_investigacion_comercial], [estado]) VALUES (6, N'PLAN 06', N'DES 06', NULL, NULL, N'OBJ 06', NULL, N'1')
SET IDENTITY_INSERT [dbo].[T_PLAN_DE_SALUD] OFF
SET IDENTITY_INSERT [dbo].[T_PLAN_SERVICIO] ON 

INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (1, CAST(N'2017-04-02 00:00:00.000' AS DateTime), NULL, 1, 1, 1, N'1')
INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (2, CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, 1, 1, 1, N'1')
INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (3, CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, 2, 1, 1, N'1')
INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (4, CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, 2, 1, 2, N'1')
INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (5, CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, 2, 1, 2, N'1')
INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (6, CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, 2, 1, 2, N'1')
INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (7, CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, 2, 2, 2, N'1')
INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (8, CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, 2, 2, 2, N'1')
INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (9, CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, 3, 2, 2, N'1')
INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (10, CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, 3, 2, 2, N'1')
INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (11, CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, 3, 3, 3, N'1')
INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (12, CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, 4, 3, 3, N'1')
INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (13, CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, 4, 3, 4, N'1')
INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (14, CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, 5, 3, 4, N'1')
INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (15, CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, 5, 3, 4, N'1')
INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (16, CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, 6, 3, 4, N'1')
INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (17, CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, 6, 4, 5, N'1')
INSERT [dbo].[T_PLAN_SERVICIO] ([id_plan_servicio], [fecha_inicio], [fecha_fin], [id_plan_salud], [id_servicio], [idEspecialidad], [estado]) VALUES (18, CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, 6, 4, 5, N'1')
SET IDENTITY_INSERT [dbo].[T_PLAN_SERVICIO] OFF
SET IDENTITY_INSERT [dbo].[T_PROGRAMACION_MEDICA] ON 

INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (1, NULL, NULL, CAST(N'2015-01-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 1, 1)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (2, NULL, NULL, CAST(N'2015-02-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 1, 1)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (3, NULL, NULL, CAST(N'2015-04-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 1, 2)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (4, NULL, NULL, CAST(N'2015-04-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 2, 2)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (5, NULL, NULL, CAST(N'2015-04-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 2, 2)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (6, NULL, NULL, CAST(N'2015-05-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 2, 2)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (7, NULL, NULL, CAST(N'2015-07-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 2, 2)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (8, NULL, NULL, CAST(N'2015-08-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 2, 2)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (9, NULL, NULL, CAST(N'2016-01-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 2, 3)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (10, NULL, NULL, CAST(N'2016-02-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 2, 3)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (11, NULL, NULL, CAST(N'2016-02-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 2, 3)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (12, NULL, NULL, CAST(N'2016-04-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 2, 3)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (13, NULL, NULL, CAST(N'2016-04-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 2, 3)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (14, NULL, NULL, CAST(N'2016-04-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 2, 3)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (15, NULL, NULL, CAST(N'2016-08-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 2, 3)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (16, NULL, NULL, CAST(N'2017-01-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 3, 3)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (17, NULL, NULL, CAST(N'2017-01-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 3, 3)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (18, NULL, NULL, CAST(N'2017-01-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 3, 3)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (19, NULL, NULL, CAST(N'2017-03-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 3, 3)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (20, NULL, NULL, CAST(N'2017-04-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 3, 4)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (21, NULL, NULL, CAST(N'2017-04-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 4, 5)
INSERT [dbo].[T_PROGRAMACION_MEDICA] ([id_programacion], [prestaciones], [dis_prestaciones], [fecha], [hora_inicio], [hora_fin], [anotaciones], [estado], [descripcion], [id_empleado], [codInmueble], [codPersona], [id_servicio], [idEspecialidad]) VALUES (22, NULL, NULL, CAST(N'2017-04-01 00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), N'NOTA', N'1', N'DES', 1, NULL, 1, 4, 5)
SET IDENTITY_INSERT [dbo].[T_PROGRAMACION_MEDICA] OFF
SET IDENTITY_INSERT [dbo].[T_SERVICIO_SALUD] ON 

INSERT [dbo].[T_SERVICIO_SALUD] ([id_servicio], [nombre_servicio], [tipo_servicio]) VALUES (1, N'CONSULTA', N'TIP01')
INSERT [dbo].[T_SERVICIO_SALUD] ([id_servicio], [nombre_servicio], [tipo_servicio]) VALUES (2, N'CHARLA GRATUITA', N'TIP02')
INSERT [dbo].[T_SERVICIO_SALUD] ([id_servicio], [nombre_servicio], [tipo_servicio]) VALUES (3, N'VACUNA 0-1 AÑO', N'TIP03')
INSERT [dbo].[T_SERVICIO_SALUD] ([id_servicio], [nombre_servicio], [tipo_servicio]) VALUES (4, N'DESPISTAJE', N'TIP04')
SET IDENTITY_INSERT [dbo].[T_SERVICIO_SALUD] OFF
/****** Object:  Index [IX_FK__T_BITACOR__idemp__4D94879B]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_BITACOR__idemp__4D94879B] ON [dbo].[T_BITACORA_INCIDENCIA]
(
	[idempleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_BITACORA_INCIDENCIA_PLAN_DE_SALUD]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_BITACORA_INCIDENCIA_PLAN_DE_SALUD] ON [dbo].[T_BITACORA_INCIDENCIA]
(
	[id_plan_salud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_COMPROB__id_pa__49C3F6B7]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_COMPROB__id_pa__49C3F6B7] ON [dbo].[T_COMPROBANTE]
(
	[id_paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_CONFIGU__id_in__4AB81AF0]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_CONFIGU__id_in__4AB81AF0] ON [dbo].[T_CONFIGURACION]
(
	[id_investigacion_comercial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_EMPLEAD__codPe__1273C1CD]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_EMPLEAD__codPe__1273C1CD] ON [dbo].[T_EMPLEADO]
(
	[codPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_EMPLEADO_T_ESPECIALIDAD_MEDICA]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_EMPLEADO_T_ESPECIALIDAD_MEDICA] ON [dbo].[T_EMPLEADO]
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_EMPRESA__codPe__4D94879B]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_EMPRESA__codPe__4D94879B] ON [dbo].[T_EMPRESA]
(
	[codPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_EQUIPO___codIn__2C3393D0]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_EQUIPO___codIn__2C3393D0] ON [dbo].[T_EQUIPO_MEDICO]
(
	[codInmueble] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_EQUIPO___codMu__4F7CD00D]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_EQUIPO___codMu__4F7CD00D] ON [dbo].[T_EQUIPO_MEDICO]
(
	[codMueble] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_EQUIPO___idEsp__5070F446]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_EQUIPO___idEsp__5070F446] ON [dbo].[T_EQUIPO_MEDICO]
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_EQUIPO___idEqu__4CA06362]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_EQUIPO___idEqu__4CA06362] ON [dbo].[T_EQUIPO_USO]
(
	[idEquipoMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_ESPECIALIDAD_SERVICIOT_ESPECIALIDAD_MEDICA]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_ESPECIALIDAD_SERVICIOT_ESPECIALIDAD_MEDICA] ON [dbo].[T_ESPECIALIDAD_SERVICIO]
(
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_INMUEBLE_T_BIEN]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_INMUEBLE_T_BIEN] ON [dbo].[T_INMUEBLE]
(
	[codBien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_MANTENI__codEm__534D60F1]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_MANTENI__codEm__534D60F1] ON [dbo].[T_MANTENIMIENTO_EQUIPO]
(
	[codEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_MANTENI__codPl__5441852A]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_MANTENI__codPl__5441852A] ON [dbo].[T_MANTENIMIENTO_EQUIPO]
(
	[codPlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_MANTENI__idEqu__5535A963]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_MANTENI__idEqu__5535A963] ON [dbo].[T_MANTENIMIENTO_EQUIPO]
(
	[idEquipoMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_MANTENI__idSol__5629CD9C]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_MANTENI__idSol__5629CD9C] ON [dbo].[T_MANTENIMIENTO_EQUIPO]
(
	[idSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_MUEBLE__codBie__571DF1D5]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_MUEBLE__codBie__571DF1D5] ON [dbo].[T_MUEBLE]
(
	[codBien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_MUEBLE__codEmp__5812160E]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_MUEBLE__codEmp__5812160E] ON [dbo].[T_MUEBLE]
(
	[codEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_MUEBLE__codMod__59063A47]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_MUEBLE__codMod__59063A47] ON [dbo].[T_MUEBLE]
(
	[codModelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_PACIENT__codPe__59FA5E80]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_PACIENT__codPe__59FA5E80] ON [dbo].[T_PACIENTE]
(
	[codPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_PERSONA_PLANSALUDT_PLAN_DE_SALUD]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_PERSONA_PLANSALUDT_PLAN_DE_SALUD] ON [dbo].[T_PERSONA_PLANSALUD]
(
	[id_plan_salud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_PERSONAT_PERSONA_PLANSALUD]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_PERSONAT_PERSONA_PLANSALUD] ON [dbo].[T_PERSONA_PLANSALUD]
(
	[codPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_BASE_FINANCIERA]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_BASE_FINANCIERA] ON [dbo].[T_PLAN_BASE_FINANCIERA]
(
	[id_base_financiera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_PLAN_DE_SALUD]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_PLAN_DE_SALUD] ON [dbo].[T_PLAN_BASE_FINANCIERA]
(
	[id_plan_salud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_PLAN]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_PLAN] ON [dbo].[T_PLAN_BASE_LEGAL]
(
	[id_plan_salud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_PLAN_BASE_LEGAL]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_PLAN_BASE_LEGAL] ON [dbo].[T_PLAN_BASE_LEGAL]
(
	[id_base_legal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_PLAN_DE_SALUD1]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_PLAN_DE_SALUD1] ON [dbo].[T_PLAN_DE_SALUD]
(
	[id_investigacion_comercial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_PLAN_COMERCIAL]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_PLAN_COMERCIAL] ON [dbo].[T_PLAN_ESTRATEGIA_COMERCIAL]
(
	[id_plan_salud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_PLAN_ESTRATEGIA_COMERCIAL]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_PLAN_ESTRATEGIA_COMERCIAL] ON [dbo].[T_PLAN_ESTRATEGIA_COMERCIAL]
(
	[id_estrategia_comercial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_PLAN_MA__idTec__5EBF139D]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_PLAN_MA__idTec__5EBF139D] ON [dbo].[T_PLAN_MANTENIMIENTO]
(
	[idTecnicoMant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_PLAN_PACIENTE_T_PACIENTE]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_PLAN_PACIENTE_T_PACIENTE] ON [dbo].[T_PLAN_PACIENTE]
(
	[id_paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_PLAN_PACIENTE_T_PLAN_DE_SALUD]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_PLAN_PACIENTE_T_PLAN_DE_SALUD] ON [dbo].[T_PLAN_PACIENTE]
(
	[id_plan_salud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_PLAN_SERVICIOT_ESPECIALIDAD_SERVICIO]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_PLAN_SERVICIOT_ESPECIALIDAD_SERVICIO] ON [dbo].[T_PLAN_SERVICIO]
(
	[id_servicio] ASC,
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_PLAN_SERVICIOT_PLAN_DE_SALUD]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_PLAN_SERVICIOT_PLAN_DE_SALUD] ON [dbo].[T_PLAN_SERVICIO]
(
	[id_plan_salud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_PROGRAM__codIn__6754599E]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_PROGRAM__codIn__6754599E] ON [dbo].[T_PROGRAMACION_MEDICA]
(
	[codInmueble] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_PROGRAMACION_MEDICA_T_EMPLEADO]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_PROGRAMACION_MEDICA_T_EMPLEADO] ON [dbo].[T_PROGRAMACION_MEDICA]
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_PROGRAMACION_MEDICAT_ESPECIALIDAD_SERVICIO]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_PROGRAMACION_MEDICAT_ESPECIALIDAD_SERVICIO] ON [dbo].[T_PROGRAMACION_MEDICA]
(
	[id_servicio] ASC,
	[idEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_PROGRAMACION_MEDICAT_PERSONA]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_PROGRAMACION_MEDICAT_PERSONA] ON [dbo].[T_PROGRAMACION_MEDICA]
(
	[codPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_PROYECT__id_in__656C112C]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_PROYECT__id_in__656C112C] ON [dbo].[T_PROYECTO_PLANSALUD]
(
	[id_investigacion_comercial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_RESERVA__id_pa__5DCAEF64]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_RESERVA__id_pa__5DCAEF64] ON [dbo].[T_RESERVA_SERVICIO_SALUD]
(
	[id_paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_RESERVA__id_se__5EBF139D]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_RESERVA__id_se__5EBF139D] ON [dbo].[T_RESERVA_SERVICIO_SALUD]
(
	[id_servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_T_SEGUIMIENTO_BITACORA_INCIDENCIA]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK_T_SEGUIMIENTO_BITACORA_INCIDENCIA] ON [dbo].[T_SEGUIMIENTO]
(
	[id_bitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_SOLICIT__idEmp__300424B4]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_SOLICIT__idEmp__300424B4] ON [dbo].[T_SOLICITUD_MANTENIMIENTO]
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_SOLICIT__idEqu__693CA210]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_SOLICIT__idEqu__693CA210] ON [dbo].[T_SOLICITUD_MANTENIMIENTO]
(
	[idEquipoMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_SOLICIT__idTec__6A30C649]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_SOLICIT__idTec__6A30C649] ON [dbo].[T_SOLICITUD_MANTENIMIENTO]
(
	[idTecnicoMant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__T_TECNICO__idEmp__15502E78]    Script Date: 3/04/2017 01:16:20 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__T_TECNICO__idEmp__15502E78] ON [dbo].[T_TECNICO_MANTENIMIENTO]
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_BITACORA_INCIDENCIA]  WITH CHECK ADD  CONSTRAINT [FK__T_BITACOR__idemp__4D94879B] FOREIGN KEY([idempleado])
REFERENCES [dbo].[T_EMPLEADO] ([idEmpleado])
GO
ALTER TABLE [dbo].[T_BITACORA_INCIDENCIA] CHECK CONSTRAINT [FK__T_BITACOR__idemp__4D94879B]
GO
ALTER TABLE [dbo].[T_BITACORA_INCIDENCIA]  WITH CHECK ADD  CONSTRAINT [FK_T_BITACORA_INCIDENCIA_PLAN_DE_SALUD] FOREIGN KEY([id_plan_salud])
REFERENCES [dbo].[T_PLAN_DE_SALUD] ([id_plan_salud])
GO
ALTER TABLE [dbo].[T_BITACORA_INCIDENCIA] CHECK CONSTRAINT [FK_T_BITACORA_INCIDENCIA_PLAN_DE_SALUD]
GO
ALTER TABLE [dbo].[T_COMPROBANTE]  WITH CHECK ADD  CONSTRAINT [FK__T_COMPROB__id_pa__49C3F6B7] FOREIGN KEY([id_paciente])
REFERENCES [dbo].[T_PACIENTE] ([id_paciente])
GO
ALTER TABLE [dbo].[T_COMPROBANTE] CHECK CONSTRAINT [FK__T_COMPROB__id_pa__49C3F6B7]
GO
ALTER TABLE [dbo].[T_CONFIGURACION]  WITH CHECK ADD  CONSTRAINT [FK__T_CONFIGU__id_in__4AB81AF0] FOREIGN KEY([id_investigacion_comercial])
REFERENCES [dbo].[T_INVESTIGACION_COMERCIAL] ([id_investigacion_comercial])
GO
ALTER TABLE [dbo].[T_CONFIGURACION] CHECK CONSTRAINT [FK__T_CONFIGU__id_in__4AB81AF0]
GO
ALTER TABLE [dbo].[T_EMPLEADO]  WITH CHECK ADD  CONSTRAINT [FK__T_EMPLEAD__codPe__1273C1CD] FOREIGN KEY([codPersona])
REFERENCES [dbo].[T_PERSONA] ([codPersona])
GO
ALTER TABLE [dbo].[T_EMPLEADO] CHECK CONSTRAINT [FK__T_EMPLEAD__codPe__1273C1CD]
GO
ALTER TABLE [dbo].[T_EMPLEADO]  WITH CHECK ADD  CONSTRAINT [FK_T_EMPLEADO_T_ESPECIALIDAD_MEDICA] FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad])
GO
ALTER TABLE [dbo].[T_EMPLEADO] CHECK CONSTRAINT [FK_T_EMPLEADO_T_ESPECIALIDAD_MEDICA]
GO
ALTER TABLE [dbo].[T_EMPRESA]  WITH CHECK ADD  CONSTRAINT [FK__T_EMPRESA__codPe__4D94879B] FOREIGN KEY([codPersona])
REFERENCES [dbo].[T_PERSONA] ([codPersona])
GO
ALTER TABLE [dbo].[T_EMPRESA] CHECK CONSTRAINT [FK__T_EMPRESA__codPe__4D94879B]
GO
ALTER TABLE [dbo].[T_EQUIPO_MEDICO]  WITH CHECK ADD  CONSTRAINT [FK__T_EQUIPO___codIn__2C3393D0] FOREIGN KEY([codInmueble])
REFERENCES [dbo].[T_INMUEBLE] ([codInmueble])
GO
ALTER TABLE [dbo].[T_EQUIPO_MEDICO] CHECK CONSTRAINT [FK__T_EQUIPO___codIn__2C3393D0]
GO
ALTER TABLE [dbo].[T_EQUIPO_MEDICO]  WITH CHECK ADD  CONSTRAINT [FK__T_EQUIPO___codMu__4F7CD00D] FOREIGN KEY([codMueble])
REFERENCES [dbo].[T_MUEBLE] ([codMueble])
GO
ALTER TABLE [dbo].[T_EQUIPO_MEDICO] CHECK CONSTRAINT [FK__T_EQUIPO___codMu__4F7CD00D]
GO
ALTER TABLE [dbo].[T_EQUIPO_MEDICO]  WITH CHECK ADD  CONSTRAINT [FK__T_EQUIPO___idEsp__5070F446] FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad])
GO
ALTER TABLE [dbo].[T_EQUIPO_MEDICO] CHECK CONSTRAINT [FK__T_EQUIPO___idEsp__5070F446]
GO
ALTER TABLE [dbo].[T_EQUIPO_USO]  WITH CHECK ADD  CONSTRAINT [FK__T_EQUIPO___idEqu__4CA06362] FOREIGN KEY([idEquipoMedico])
REFERENCES [dbo].[T_EQUIPO_MEDICO] ([idEquipoMedico])
GO
ALTER TABLE [dbo].[T_EQUIPO_USO] CHECK CONSTRAINT [FK__T_EQUIPO___idEqu__4CA06362]
GO
ALTER TABLE [dbo].[T_ESPECIALIDAD_SERVICIO]  WITH CHECK ADD  CONSTRAINT [FK_T_ESPECIALIDAD_SERVICIOT_ESPECIALIDAD_MEDICA] FOREIGN KEY([idEspecialidad])
REFERENCES [dbo].[T_ESPECIALIDAD_MEDICA] ([idEspecialidad])
GO
ALTER TABLE [dbo].[T_ESPECIALIDAD_SERVICIO] CHECK CONSTRAINT [FK_T_ESPECIALIDAD_SERVICIOT_ESPECIALIDAD_MEDICA]
GO
ALTER TABLE [dbo].[T_ESPECIALIDAD_SERVICIO]  WITH CHECK ADD  CONSTRAINT [FK_T_SERVICIO_ESPECIALIDAD] FOREIGN KEY([id_servicio])
REFERENCES [dbo].[T_SERVICIO_SALUD] ([id_servicio])
GO
ALTER TABLE [dbo].[T_ESPECIALIDAD_SERVICIO] CHECK CONSTRAINT [FK_T_SERVICIO_ESPECIALIDAD]
GO
ALTER TABLE [dbo].[T_INMUEBLE]  WITH CHECK ADD  CONSTRAINT [FK_T_INMUEBLE_T_BIEN] FOREIGN KEY([codBien])
REFERENCES [dbo].[T_BIEN] ([codBien])
GO
ALTER TABLE [dbo].[T_INMUEBLE] CHECK CONSTRAINT [FK_T_INMUEBLE_T_BIEN]
GO
ALTER TABLE [dbo].[T_MANTENIMIENTO_EQUIPO]  WITH CHECK ADD  CONSTRAINT [FK__T_MANTENI__codEm__534D60F1] FOREIGN KEY([codEmpresa])
REFERENCES [dbo].[T_EMPRESA] ([codEmpresa])
GO
ALTER TABLE [dbo].[T_MANTENIMIENTO_EQUIPO] CHECK CONSTRAINT [FK__T_MANTENI__codEm__534D60F1]
GO
ALTER TABLE [dbo].[T_MANTENIMIENTO_EQUIPO]  WITH CHECK ADD  CONSTRAINT [FK__T_MANTENI__codPl__5441852A] FOREIGN KEY([codPlan])
REFERENCES [dbo].[T_PLAN_MANTENIMIENTO] ([codPlan])
GO
ALTER TABLE [dbo].[T_MANTENIMIENTO_EQUIPO] CHECK CONSTRAINT [FK__T_MANTENI__codPl__5441852A]
GO
ALTER TABLE [dbo].[T_MANTENIMIENTO_EQUIPO]  WITH CHECK ADD  CONSTRAINT [FK__T_MANTENI__idEqu__5535A963] FOREIGN KEY([idEquipoMedico])
REFERENCES [dbo].[T_EQUIPO_MEDICO] ([idEquipoMedico])
GO
ALTER TABLE [dbo].[T_MANTENIMIENTO_EQUIPO] CHECK CONSTRAINT [FK__T_MANTENI__idEqu__5535A963]
GO
ALTER TABLE [dbo].[T_MANTENIMIENTO_EQUIPO]  WITH CHECK ADD  CONSTRAINT [FK__T_MANTENI__idSol__5629CD9C] FOREIGN KEY([idSolicitud])
REFERENCES [dbo].[T_SOLICITUD_MANTENIMIENTO] ([idSolicitud])
GO
ALTER TABLE [dbo].[T_MANTENIMIENTO_EQUIPO] CHECK CONSTRAINT [FK__T_MANTENI__idSol__5629CD9C]
GO
ALTER TABLE [dbo].[T_MUEBLE]  WITH CHECK ADD  CONSTRAINT [FK__T_MUEBLE__codBie__571DF1D5] FOREIGN KEY([codBien])
REFERENCES [dbo].[T_BIEN] ([codBien])
GO
ALTER TABLE [dbo].[T_MUEBLE] CHECK CONSTRAINT [FK__T_MUEBLE__codBie__571DF1D5]
GO
ALTER TABLE [dbo].[T_MUEBLE]  WITH CHECK ADD  CONSTRAINT [FK__T_MUEBLE__codEmp__5812160E] FOREIGN KEY([codEmpresa])
REFERENCES [dbo].[T_EMPRESA] ([codEmpresa])
GO
ALTER TABLE [dbo].[T_MUEBLE] CHECK CONSTRAINT [FK__T_MUEBLE__codEmp__5812160E]
GO
ALTER TABLE [dbo].[T_MUEBLE]  WITH CHECK ADD  CONSTRAINT [FK__T_MUEBLE__codMod__59063A47] FOREIGN KEY([codModelo])
REFERENCES [dbo].[T_MODELO] ([codModelo])
GO
ALTER TABLE [dbo].[T_MUEBLE] CHECK CONSTRAINT [FK__T_MUEBLE__codMod__59063A47]
GO
ALTER TABLE [dbo].[T_PACIENTE]  WITH CHECK ADD  CONSTRAINT [FK__T_PACIENT__codPe__59FA5E80] FOREIGN KEY([codPersona])
REFERENCES [dbo].[T_PERSONA] ([codPersona])
GO
ALTER TABLE [dbo].[T_PACIENTE] CHECK CONSTRAINT [FK__T_PACIENT__codPe__59FA5E80]
GO
ALTER TABLE [dbo].[T_PERSONA_PLANSALUD]  WITH CHECK ADD  CONSTRAINT [FK_T_PERSONA_PLANSALUDT_PLAN_DE_SALUD] FOREIGN KEY([id_plan_salud])
REFERENCES [dbo].[T_PLAN_DE_SALUD] ([id_plan_salud])
GO
ALTER TABLE [dbo].[T_PERSONA_PLANSALUD] CHECK CONSTRAINT [FK_T_PERSONA_PLANSALUDT_PLAN_DE_SALUD]
GO
ALTER TABLE [dbo].[T_PERSONA_PLANSALUD]  WITH CHECK ADD  CONSTRAINT [FK_T_PERSONAT_PERSONA_PLANSALUD] FOREIGN KEY([codPersona])
REFERENCES [dbo].[T_PERSONA] ([codPersona])
GO
ALTER TABLE [dbo].[T_PERSONA_PLANSALUD] CHECK CONSTRAINT [FK_T_PERSONAT_PERSONA_PLANSALUD]
GO
ALTER TABLE [dbo].[T_PLAN_BASE_FINANCIERA]  WITH CHECK ADD  CONSTRAINT [FK_T_BASE_FINANCIERA] FOREIGN KEY([id_base_financiera])
REFERENCES [dbo].[T_BASE_FINANCIERA] ([id_base_financiera])
GO
ALTER TABLE [dbo].[T_PLAN_BASE_FINANCIERA] CHECK CONSTRAINT [FK_T_BASE_FINANCIERA]
GO
ALTER TABLE [dbo].[T_PLAN_BASE_FINANCIERA]  WITH CHECK ADD  CONSTRAINT [FK_T_PLAN_DE_SALUD] FOREIGN KEY([id_plan_salud])
REFERENCES [dbo].[T_PLAN_DE_SALUD] ([id_plan_salud])
GO
ALTER TABLE [dbo].[T_PLAN_BASE_FINANCIERA] CHECK CONSTRAINT [FK_T_PLAN_DE_SALUD]
GO
ALTER TABLE [dbo].[T_PLAN_BASE_LEGAL]  WITH CHECK ADD  CONSTRAINT [FK_T_PLAN] FOREIGN KEY([id_plan_salud])
REFERENCES [dbo].[T_PLAN_DE_SALUD] ([id_plan_salud])
GO
ALTER TABLE [dbo].[T_PLAN_BASE_LEGAL] CHECK CONSTRAINT [FK_T_PLAN]
GO
ALTER TABLE [dbo].[T_PLAN_BASE_LEGAL]  WITH CHECK ADD  CONSTRAINT [FK_T_PLAN_BASE_LEGAL] FOREIGN KEY([id_base_legal])
REFERENCES [dbo].[T_BASE_LEGAL] ([id_base_legal])
GO
ALTER TABLE [dbo].[T_PLAN_BASE_LEGAL] CHECK CONSTRAINT [FK_T_PLAN_BASE_LEGAL]
GO
ALTER TABLE [dbo].[T_PLAN_DE_SALUD]  WITH CHECK ADD  CONSTRAINT [FK__T_PLAN_DE_SALUD1] FOREIGN KEY([id_investigacion_comercial])
REFERENCES [dbo].[T_INVESTIGACION_COMERCIAL] ([id_investigacion_comercial])
GO
ALTER TABLE [dbo].[T_PLAN_DE_SALUD] CHECK CONSTRAINT [FK__T_PLAN_DE_SALUD1]
GO
ALTER TABLE [dbo].[T_PLAN_ESTRATEGIA_COMERCIAL]  WITH CHECK ADD  CONSTRAINT [FK_T_PLAN_COMERCIAL] FOREIGN KEY([id_plan_salud])
REFERENCES [dbo].[T_PLAN_DE_SALUD] ([id_plan_salud])
GO
ALTER TABLE [dbo].[T_PLAN_ESTRATEGIA_COMERCIAL] CHECK CONSTRAINT [FK_T_PLAN_COMERCIAL]
GO
ALTER TABLE [dbo].[T_PLAN_ESTRATEGIA_COMERCIAL]  WITH CHECK ADD  CONSTRAINT [FK_T_PLAN_ESTRATEGIA_COMERCIAL] FOREIGN KEY([id_estrategia_comercial])
REFERENCES [dbo].[T_ESTRATEGIA_COMERCIAL] ([id_estrategia_comercial])
GO
ALTER TABLE [dbo].[T_PLAN_ESTRATEGIA_COMERCIAL] CHECK CONSTRAINT [FK_T_PLAN_ESTRATEGIA_COMERCIAL]
GO
ALTER TABLE [dbo].[T_PLAN_MANTENIMIENTO]  WITH CHECK ADD  CONSTRAINT [FK__T_PLAN_MA__idTec__5EBF139D] FOREIGN KEY([idTecnicoMant])
REFERENCES [dbo].[T_TECNICO_MANTENIMIENTO] ([idTecnicoMant])
GO
ALTER TABLE [dbo].[T_PLAN_MANTENIMIENTO] CHECK CONSTRAINT [FK__T_PLAN_MA__idTec__5EBF139D]
GO
ALTER TABLE [dbo].[T_PLAN_PACIENTE]  WITH CHECK ADD  CONSTRAINT [FK_T_PLAN_PACIENTE_T_PACIENTE] FOREIGN KEY([id_paciente])
REFERENCES [dbo].[T_PACIENTE] ([id_paciente])
GO
ALTER TABLE [dbo].[T_PLAN_PACIENTE] CHECK CONSTRAINT [FK_T_PLAN_PACIENTE_T_PACIENTE]
GO
ALTER TABLE [dbo].[T_PLAN_PACIENTE]  WITH CHECK ADD  CONSTRAINT [FK_T_PLAN_PACIENTE_T_PLAN_DE_SALUD] FOREIGN KEY([id_plan_salud])
REFERENCES [dbo].[T_PLAN_DE_SALUD] ([id_plan_salud])
GO
ALTER TABLE [dbo].[T_PLAN_PACIENTE] CHECK CONSTRAINT [FK_T_PLAN_PACIENTE_T_PLAN_DE_SALUD]
GO
ALTER TABLE [dbo].[T_PLAN_SERVICIO]  WITH CHECK ADD  CONSTRAINT [FK_T_PLAN_SERVICIOT_ESPECIALIDAD_SERVICIO] FOREIGN KEY([id_servicio], [idEspecialidad])
REFERENCES [dbo].[T_ESPECIALIDAD_SERVICIO] ([id_servicio], [idEspecialidad])
GO
ALTER TABLE [dbo].[T_PLAN_SERVICIO] CHECK CONSTRAINT [FK_T_PLAN_SERVICIOT_ESPECIALIDAD_SERVICIO]
GO
ALTER TABLE [dbo].[T_PLAN_SERVICIO]  WITH CHECK ADD  CONSTRAINT [FK_T_PLAN_SERVICIOT_PLAN_DE_SALUD] FOREIGN KEY([id_plan_salud])
REFERENCES [dbo].[T_PLAN_DE_SALUD] ([id_plan_salud])
GO
ALTER TABLE [dbo].[T_PLAN_SERVICIO] CHECK CONSTRAINT [FK_T_PLAN_SERVICIOT_PLAN_DE_SALUD]
GO
ALTER TABLE [dbo].[T_PROGRAMACION_MEDICA]  WITH CHECK ADD  CONSTRAINT [FK__T_PROGRAM__codIn__6754599E] FOREIGN KEY([codInmueble])
REFERENCES [dbo].[T_INMUEBLE] ([codInmueble])
GO
ALTER TABLE [dbo].[T_PROGRAMACION_MEDICA] CHECK CONSTRAINT [FK__T_PROGRAM__codIn__6754599E]
GO
ALTER TABLE [dbo].[T_PROGRAMACION_MEDICA]  WITH CHECK ADD  CONSTRAINT [FK_T_PROGRAMACION_MEDICA_T_EMPLEADO] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[T_EMPLEADO] ([idEmpleado])
GO
ALTER TABLE [dbo].[T_PROGRAMACION_MEDICA] CHECK CONSTRAINT [FK_T_PROGRAMACION_MEDICA_T_EMPLEADO]
GO
ALTER TABLE [dbo].[T_PROGRAMACION_MEDICA]  WITH CHECK ADD  CONSTRAINT [FK_T_PROGRAMACION_MEDICAT_ESPECIALIDAD_SERVICIO] FOREIGN KEY([id_servicio], [idEspecialidad])
REFERENCES [dbo].[T_ESPECIALIDAD_SERVICIO] ([id_servicio], [idEspecialidad])
GO
ALTER TABLE [dbo].[T_PROGRAMACION_MEDICA] CHECK CONSTRAINT [FK_T_PROGRAMACION_MEDICAT_ESPECIALIDAD_SERVICIO]
GO
ALTER TABLE [dbo].[T_PROGRAMACION_MEDICA]  WITH CHECK ADD  CONSTRAINT [FK_T_PROGRAMACION_MEDICAT_PERSONA] FOREIGN KEY([codPersona])
REFERENCES [dbo].[T_PERSONA] ([codPersona])
GO
ALTER TABLE [dbo].[T_PROGRAMACION_MEDICA] CHECK CONSTRAINT [FK_T_PROGRAMACION_MEDICAT_PERSONA]
GO
ALTER TABLE [dbo].[T_PROYECTO_PLANSALUD]  WITH CHECK ADD  CONSTRAINT [FK__T_PROYECT__id_in__656C112C] FOREIGN KEY([id_investigacion_comercial])
REFERENCES [dbo].[T_INVESTIGACION_COMERCIAL] ([id_investigacion_comercial])
GO
ALTER TABLE [dbo].[T_PROYECTO_PLANSALUD] CHECK CONSTRAINT [FK__T_PROYECT__id_in__656C112C]
GO
ALTER TABLE [dbo].[T_RESERVA_SERVICIO_SALUD]  WITH CHECK ADD  CONSTRAINT [FK__T_RESERVA__id_pa__5DCAEF64] FOREIGN KEY([id_paciente])
REFERENCES [dbo].[T_PACIENTE] ([id_paciente])
GO
ALTER TABLE [dbo].[T_RESERVA_SERVICIO_SALUD] CHECK CONSTRAINT [FK__T_RESERVA__id_pa__5DCAEF64]
GO
ALTER TABLE [dbo].[T_RESERVA_SERVICIO_SALUD]  WITH CHECK ADD  CONSTRAINT [FK__T_RESERVA__id_se__5EBF139D] FOREIGN KEY([id_servicio])
REFERENCES [dbo].[T_SERVICIO_SALUD] ([id_servicio])
GO
ALTER TABLE [dbo].[T_RESERVA_SERVICIO_SALUD] CHECK CONSTRAINT [FK__T_RESERVA__id_se__5EBF139D]
GO
ALTER TABLE [dbo].[T_SEGUIMIENTO]  WITH CHECK ADD  CONSTRAINT [FK_T_SEGUIMIENTO_BITACORA_INCIDENCIA] FOREIGN KEY([id_bitacora])
REFERENCES [dbo].[T_BITACORA_INCIDENCIA] ([id_bitacora])
GO
ALTER TABLE [dbo].[T_SEGUIMIENTO] CHECK CONSTRAINT [FK_T_SEGUIMIENTO_BITACORA_INCIDENCIA]
GO
ALTER TABLE [dbo].[T_SOLICITUD_MANTENIMIENTO]  WITH CHECK ADD  CONSTRAINT [FK__T_SOLICIT__idEmp__300424B4] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[T_EMPLEADO] ([idEmpleado])
GO
ALTER TABLE [dbo].[T_SOLICITUD_MANTENIMIENTO] CHECK CONSTRAINT [FK__T_SOLICIT__idEmp__300424B4]
GO
ALTER TABLE [dbo].[T_SOLICITUD_MANTENIMIENTO]  WITH CHECK ADD  CONSTRAINT [FK__T_SOLICIT__idEqu__693CA210] FOREIGN KEY([idEquipoMedico])
REFERENCES [dbo].[T_EQUIPO_MEDICO] ([idEquipoMedico])
GO
ALTER TABLE [dbo].[T_SOLICITUD_MANTENIMIENTO] CHECK CONSTRAINT [FK__T_SOLICIT__idEqu__693CA210]
GO
ALTER TABLE [dbo].[T_SOLICITUD_MANTENIMIENTO]  WITH CHECK ADD  CONSTRAINT [FK__T_SOLICIT__idTec__6A30C649] FOREIGN KEY([idTecnicoMant])
REFERENCES [dbo].[T_TECNICO_MANTENIMIENTO] ([idTecnicoMant])
GO
ALTER TABLE [dbo].[T_SOLICITUD_MANTENIMIENTO] CHECK CONSTRAINT [FK__T_SOLICIT__idTec__6A30C649]
GO
ALTER TABLE [dbo].[T_TECNICO_MANTENIMIENTO]  WITH CHECK ADD  CONSTRAINT [FK__T_TECNICO__idEmp__15502E78] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[T_EMPLEADO] ([idEmpleado])
GO
ALTER TABLE [dbo].[T_TECNICO_MANTENIMIENTO] CHECK CONSTRAINT [FK__T_TECNICO__idEmp__15502E78]
GO
USE [master]
GO
ALTER DATABASE [BD_CLINICA_RP] SET  READ_WRITE 
GO

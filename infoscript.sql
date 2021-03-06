USE [master]
GO
/****** Object:  Database [CityInformationDB]    Script Date: 12/1/2018 8:46:04 PM ******/
CREATE DATABASE [CityInformationDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CityInformationDB', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CityInformationDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CityInformationDB_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CityInformationDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CityInformationDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CityInformationDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CityInformationDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CityInformationDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CityInformationDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CityInformationDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CityInformationDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CityInformationDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CityInformationDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CityInformationDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CityInformationDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CityInformationDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CityInformationDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CityInformationDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CityInformationDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CityInformationDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CityInformationDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CityInformationDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CityInformationDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CityInformationDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CityInformationDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CityInformationDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CityInformationDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CityInformationDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CityInformationDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CityInformationDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CityInformationDB] SET  MULTI_USER 
GO
ALTER DATABASE [CityInformationDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CityInformationDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CityInformationDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CityInformationDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CityInformationDB]
GO
/****** Object:  Table [dbo].[CityInfo]    Script Date: 12/1/2018 8:46:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CityInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[City] [varchar](50) NULL,
	[About] [text] NULL,
	[Country] [varchar](50) NULL,
 CONSTRAINT [PK_CityInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CityInfo] ON 

INSERT [dbo].[CityInfo] ([Id], [City], [About], [Country]) VALUES (1, N'Dhaka', N'A populated city', N'Bangladesh')
INSERT [dbo].[CityInfo] ([Id], [City], [About], [Country]) VALUES (2, N'Chittagong', N'Nice one', N'Bangladesh')
INSERT [dbo].[CityInfo] ([Id], [City], [About], [Country]) VALUES (3, N'Moymenshing', N'Small in size', N'Bangladesh')
INSERT [dbo].[CityInfo] ([Id], [City], [About], [Country]) VALUES (4, N'Hong Kong', N'Small city', N'Japan')
INSERT [dbo].[CityInfo] ([Id], [City], [About], [Country]) VALUES (5, N'Tokeyy', N'Nice one', N'Japan')
SET IDENTITY_INSERT [dbo].[CityInfo] OFF
USE [master]
GO
ALTER DATABASE [CityInformationDB] SET  READ_WRITE 
GO

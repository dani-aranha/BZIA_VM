USE [master]
GO
/****** Object:  Database [Test]    Script Date: 12/8/2025 8:34:50 PM ******/
CREATE DATABASE [Test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Test', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Test.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Test_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Test_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Test] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Test] SET ARITHABORT OFF 
GO
ALTER DATABASE [Test] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Test] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Test] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Test] SET  MULTI_USER 
GO
ALTER DATABASE [Test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Test] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Test] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Test] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Test', N'ON'
GO
ALTER DATABASE [Test] SET QUERY_STORE = ON
GO
ALTER DATABASE [Test] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Test]
GO
/****** Object:  Schema [dim]    Script Date: 12/8/2025 8:34:50 PM ******/
CREATE SCHEMA [dim]
GO
/****** Object:  Schema [fact]    Script Date: 12/8/2025 8:34:50 PM ******/
CREATE SCHEMA [fact]
GO
/****** Object:  Table [dim].[Calendar]    Script Date: 12/8/2025 8:34:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[Calendar](
	[DateValue] [date] NOT NULL,
	[Year] [int] NULL,
	[Quarter] [int] NULL,
	[Month] [int] NULL,
	[MonthName] [nvarchar](20) NULL,
	[MonthShort] [char](3) NULL,
	[Week] [int] NULL,
	[Day] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DateValue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dim].[Customer]    Script Date: 12/8/2025 8:34:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[Customer](
	[CustomerID] [tinyint] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dim].[Stores]    Script Date: 12/8/2025 8:34:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dim].[Stores](
	[store_id] [tinyint] IDENTITY(1,1) NOT NULL,
	[store_name] [nvarchar](50) NOT NULL,
	[store_country] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[store_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [fact].[Sales]    Script Date: 12/8/2025 8:34:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fact].[Sales](
	[transaction_date] [date] NOT NULL,
	[store_id] [tinyint] NOT NULL,
	[CustomerID] [tinyint] NOT NULL,
	[TotalSale] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-01' AS Date), 2023, 1, 1, N'January', N'Jan', 1, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-02' AS Date), 2023, 1, 1, N'January', N'Jan', 1, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-03' AS Date), 2023, 1, 1, N'January', N'Jan', 1, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-04' AS Date), 2023, 1, 1, N'January', N'Jan', 1, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-05' AS Date), 2023, 1, 1, N'January', N'Jan', 1, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-06' AS Date), 2023, 1, 1, N'January', N'Jan', 1, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-07' AS Date), 2023, 1, 1, N'January', N'Jan', 1, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-08' AS Date), 2023, 1, 1, N'January', N'Jan', 2, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-09' AS Date), 2023, 1, 1, N'January', N'Jan', 2, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-10' AS Date), 2023, 1, 1, N'January', N'Jan', 2, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-11' AS Date), 2023, 1, 1, N'January', N'Jan', 2, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-12' AS Date), 2023, 1, 1, N'January', N'Jan', 2, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-13' AS Date), 2023, 1, 1, N'January', N'Jan', 2, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-14' AS Date), 2023, 1, 1, N'January', N'Jan', 2, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-15' AS Date), 2023, 1, 1, N'January', N'Jan', 3, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-16' AS Date), 2023, 1, 1, N'January', N'Jan', 3, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-17' AS Date), 2023, 1, 1, N'January', N'Jan', 3, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-18' AS Date), 2023, 1, 1, N'January', N'Jan', 3, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-19' AS Date), 2023, 1, 1, N'January', N'Jan', 3, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-20' AS Date), 2023, 1, 1, N'January', N'Jan', 3, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-21' AS Date), 2023, 1, 1, N'January', N'Jan', 3, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-22' AS Date), 2023, 1, 1, N'January', N'Jan', 4, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-23' AS Date), 2023, 1, 1, N'January', N'Jan', 4, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-24' AS Date), 2023, 1, 1, N'January', N'Jan', 4, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-25' AS Date), 2023, 1, 1, N'January', N'Jan', 4, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-26' AS Date), 2023, 1, 1, N'January', N'Jan', 4, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-27' AS Date), 2023, 1, 1, N'January', N'Jan', 4, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-28' AS Date), 2023, 1, 1, N'January', N'Jan', 4, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-29' AS Date), 2023, 1, 1, N'January', N'Jan', 5, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-30' AS Date), 2023, 1, 1, N'January', N'Jan', 5, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-01-31' AS Date), 2023, 1, 1, N'January', N'Jan', 5, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-01' AS Date), 2023, 1, 2, N'February', N'Feb', 5, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-02' AS Date), 2023, 1, 2, N'February', N'Feb', 5, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-03' AS Date), 2023, 1, 2, N'February', N'Feb', 5, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-04' AS Date), 2023, 1, 2, N'February', N'Feb', 5, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-05' AS Date), 2023, 1, 2, N'February', N'Feb', 6, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-06' AS Date), 2023, 1, 2, N'February', N'Feb', 6, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-07' AS Date), 2023, 1, 2, N'February', N'Feb', 6, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-08' AS Date), 2023, 1, 2, N'February', N'Feb', 6, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-09' AS Date), 2023, 1, 2, N'February', N'Feb', 6, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-10' AS Date), 2023, 1, 2, N'February', N'Feb', 6, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-11' AS Date), 2023, 1, 2, N'February', N'Feb', 6, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-12' AS Date), 2023, 1, 2, N'February', N'Feb', 7, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-13' AS Date), 2023, 1, 2, N'February', N'Feb', 7, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-14' AS Date), 2023, 1, 2, N'February', N'Feb', 7, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-15' AS Date), 2023, 1, 2, N'February', N'Feb', 7, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-16' AS Date), 2023, 1, 2, N'February', N'Feb', 7, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-17' AS Date), 2023, 1, 2, N'February', N'Feb', 7, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-18' AS Date), 2023, 1, 2, N'February', N'Feb', 7, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-19' AS Date), 2023, 1, 2, N'February', N'Feb', 8, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-20' AS Date), 2023, 1, 2, N'February', N'Feb', 8, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-21' AS Date), 2023, 1, 2, N'February', N'Feb', 8, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-22' AS Date), 2023, 1, 2, N'February', N'Feb', 8, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-23' AS Date), 2023, 1, 2, N'February', N'Feb', 8, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-24' AS Date), 2023, 1, 2, N'February', N'Feb', 8, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-25' AS Date), 2023, 1, 2, N'February', N'Feb', 8, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-26' AS Date), 2023, 1, 2, N'February', N'Feb', 9, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-27' AS Date), 2023, 1, 2, N'February', N'Feb', 9, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-02-28' AS Date), 2023, 1, 2, N'February', N'Feb', 9, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-01' AS Date), 2023, 1, 3, N'March', N'Mar', 9, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-02' AS Date), 2023, 1, 3, N'March', N'Mar', 9, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-03' AS Date), 2023, 1, 3, N'March', N'Mar', 9, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-04' AS Date), 2023, 1, 3, N'March', N'Mar', 9, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-05' AS Date), 2023, 1, 3, N'March', N'Mar', 10, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-06' AS Date), 2023, 1, 3, N'March', N'Mar', 10, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-07' AS Date), 2023, 1, 3, N'March', N'Mar', 10, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-08' AS Date), 2023, 1, 3, N'March', N'Mar', 10, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-09' AS Date), 2023, 1, 3, N'March', N'Mar', 10, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-10' AS Date), 2023, 1, 3, N'March', N'Mar', 10, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-11' AS Date), 2023, 1, 3, N'March', N'Mar', 10, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-12' AS Date), 2023, 1, 3, N'March', N'Mar', 11, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-13' AS Date), 2023, 1, 3, N'March', N'Mar', 11, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-14' AS Date), 2023, 1, 3, N'March', N'Mar', 11, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-15' AS Date), 2023, 1, 3, N'March', N'Mar', 11, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-16' AS Date), 2023, 1, 3, N'March', N'Mar', 11, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-17' AS Date), 2023, 1, 3, N'March', N'Mar', 11, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-18' AS Date), 2023, 1, 3, N'March', N'Mar', 11, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-19' AS Date), 2023, 1, 3, N'March', N'Mar', 12, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-20' AS Date), 2023, 1, 3, N'March', N'Mar', 12, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-21' AS Date), 2023, 1, 3, N'March', N'Mar', 12, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-22' AS Date), 2023, 1, 3, N'March', N'Mar', 12, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-23' AS Date), 2023, 1, 3, N'March', N'Mar', 12, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-24' AS Date), 2023, 1, 3, N'March', N'Mar', 12, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-25' AS Date), 2023, 1, 3, N'March', N'Mar', 12, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-26' AS Date), 2023, 1, 3, N'March', N'Mar', 13, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-27' AS Date), 2023, 1, 3, N'March', N'Mar', 13, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-28' AS Date), 2023, 1, 3, N'March', N'Mar', 13, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-29' AS Date), 2023, 1, 3, N'March', N'Mar', 13, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-30' AS Date), 2023, 1, 3, N'March', N'Mar', 13, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-03-31' AS Date), 2023, 1, 3, N'March', N'Mar', 13, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-01' AS Date), 2023, 2, 4, N'April', N'Apr', 13, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-02' AS Date), 2023, 2, 4, N'April', N'Apr', 14, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-03' AS Date), 2023, 2, 4, N'April', N'Apr', 14, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-04' AS Date), 2023, 2, 4, N'April', N'Apr', 14, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-05' AS Date), 2023, 2, 4, N'April', N'Apr', 14, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-06' AS Date), 2023, 2, 4, N'April', N'Apr', 14, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-07' AS Date), 2023, 2, 4, N'April', N'Apr', 14, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-08' AS Date), 2023, 2, 4, N'April', N'Apr', 14, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-09' AS Date), 2023, 2, 4, N'April', N'Apr', 15, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-10' AS Date), 2023, 2, 4, N'April', N'Apr', 15, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-11' AS Date), 2023, 2, 4, N'April', N'Apr', 15, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-12' AS Date), 2023, 2, 4, N'April', N'Apr', 15, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-13' AS Date), 2023, 2, 4, N'April', N'Apr', 15, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-14' AS Date), 2023, 2, 4, N'April', N'Apr', 15, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-15' AS Date), 2023, 2, 4, N'April', N'Apr', 15, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-16' AS Date), 2023, 2, 4, N'April', N'Apr', 16, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-17' AS Date), 2023, 2, 4, N'April', N'Apr', 16, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-18' AS Date), 2023, 2, 4, N'April', N'Apr', 16, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-19' AS Date), 2023, 2, 4, N'April', N'Apr', 16, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-20' AS Date), 2023, 2, 4, N'April', N'Apr', 16, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-21' AS Date), 2023, 2, 4, N'April', N'Apr', 16, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-22' AS Date), 2023, 2, 4, N'April', N'Apr', 16, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-23' AS Date), 2023, 2, 4, N'April', N'Apr', 17, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-24' AS Date), 2023, 2, 4, N'April', N'Apr', 17, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-25' AS Date), 2023, 2, 4, N'April', N'Apr', 17, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-26' AS Date), 2023, 2, 4, N'April', N'Apr', 17, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-27' AS Date), 2023, 2, 4, N'April', N'Apr', 17, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-28' AS Date), 2023, 2, 4, N'April', N'Apr', 17, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-29' AS Date), 2023, 2, 4, N'April', N'Apr', 17, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-04-30' AS Date), 2023, 2, 4, N'April', N'Apr', 18, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-01' AS Date), 2023, 2, 5, N'May', N'May', 18, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-02' AS Date), 2023, 2, 5, N'May', N'May', 18, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-03' AS Date), 2023, 2, 5, N'May', N'May', 18, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-04' AS Date), 2023, 2, 5, N'May', N'May', 18, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-05' AS Date), 2023, 2, 5, N'May', N'May', 18, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-06' AS Date), 2023, 2, 5, N'May', N'May', 18, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-07' AS Date), 2023, 2, 5, N'May', N'May', 19, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-08' AS Date), 2023, 2, 5, N'May', N'May', 19, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-09' AS Date), 2023, 2, 5, N'May', N'May', 19, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-10' AS Date), 2023, 2, 5, N'May', N'May', 19, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-11' AS Date), 2023, 2, 5, N'May', N'May', 19, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-12' AS Date), 2023, 2, 5, N'May', N'May', 19, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-13' AS Date), 2023, 2, 5, N'May', N'May', 19, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-14' AS Date), 2023, 2, 5, N'May', N'May', 20, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-15' AS Date), 2023, 2, 5, N'May', N'May', 20, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-16' AS Date), 2023, 2, 5, N'May', N'May', 20, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-17' AS Date), 2023, 2, 5, N'May', N'May', 20, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-18' AS Date), 2023, 2, 5, N'May', N'May', 20, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-19' AS Date), 2023, 2, 5, N'May', N'May', 20, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-20' AS Date), 2023, 2, 5, N'May', N'May', 20, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-21' AS Date), 2023, 2, 5, N'May', N'May', 21, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-22' AS Date), 2023, 2, 5, N'May', N'May', 21, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-23' AS Date), 2023, 2, 5, N'May', N'May', 21, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-24' AS Date), 2023, 2, 5, N'May', N'May', 21, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-25' AS Date), 2023, 2, 5, N'May', N'May', 21, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-26' AS Date), 2023, 2, 5, N'May', N'May', 21, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-27' AS Date), 2023, 2, 5, N'May', N'May', 21, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-28' AS Date), 2023, 2, 5, N'May', N'May', 22, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-29' AS Date), 2023, 2, 5, N'May', N'May', 22, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-30' AS Date), 2023, 2, 5, N'May', N'May', 22, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-05-31' AS Date), 2023, 2, 5, N'May', N'May', 22, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-01' AS Date), 2023, 2, 6, N'June', N'Jun', 22, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-02' AS Date), 2023, 2, 6, N'June', N'Jun', 22, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-03' AS Date), 2023, 2, 6, N'June', N'Jun', 22, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-04' AS Date), 2023, 2, 6, N'June', N'Jun', 23, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-05' AS Date), 2023, 2, 6, N'June', N'Jun', 23, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-06' AS Date), 2023, 2, 6, N'June', N'Jun', 23, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-07' AS Date), 2023, 2, 6, N'June', N'Jun', 23, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-08' AS Date), 2023, 2, 6, N'June', N'Jun', 23, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-09' AS Date), 2023, 2, 6, N'June', N'Jun', 23, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-10' AS Date), 2023, 2, 6, N'June', N'Jun', 23, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-11' AS Date), 2023, 2, 6, N'June', N'Jun', 24, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-12' AS Date), 2023, 2, 6, N'June', N'Jun', 24, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-13' AS Date), 2023, 2, 6, N'June', N'Jun', 24, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-14' AS Date), 2023, 2, 6, N'June', N'Jun', 24, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-15' AS Date), 2023, 2, 6, N'June', N'Jun', 24, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-16' AS Date), 2023, 2, 6, N'June', N'Jun', 24, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-17' AS Date), 2023, 2, 6, N'June', N'Jun', 24, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-18' AS Date), 2023, 2, 6, N'June', N'Jun', 25, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-19' AS Date), 2023, 2, 6, N'June', N'Jun', 25, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-20' AS Date), 2023, 2, 6, N'June', N'Jun', 25, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-21' AS Date), 2023, 2, 6, N'June', N'Jun', 25, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-22' AS Date), 2023, 2, 6, N'June', N'Jun', 25, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-23' AS Date), 2023, 2, 6, N'June', N'Jun', 25, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-24' AS Date), 2023, 2, 6, N'June', N'Jun', 25, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-25' AS Date), 2023, 2, 6, N'June', N'Jun', 26, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-26' AS Date), 2023, 2, 6, N'June', N'Jun', 26, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-27' AS Date), 2023, 2, 6, N'June', N'Jun', 26, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-28' AS Date), 2023, 2, 6, N'June', N'Jun', 26, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-29' AS Date), 2023, 2, 6, N'June', N'Jun', 26, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-06-30' AS Date), 2023, 2, 6, N'June', N'Jun', 26, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-01' AS Date), 2023, 3, 7, N'July', N'Jul', 26, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-02' AS Date), 2023, 3, 7, N'July', N'Jul', 27, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-03' AS Date), 2023, 3, 7, N'July', N'Jul', 27, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-04' AS Date), 2023, 3, 7, N'July', N'Jul', 27, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-05' AS Date), 2023, 3, 7, N'July', N'Jul', 27, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-06' AS Date), 2023, 3, 7, N'July', N'Jul', 27, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-07' AS Date), 2023, 3, 7, N'July', N'Jul', 27, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-08' AS Date), 2023, 3, 7, N'July', N'Jul', 27, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-09' AS Date), 2023, 3, 7, N'July', N'Jul', 28, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-10' AS Date), 2023, 3, 7, N'July', N'Jul', 28, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-11' AS Date), 2023, 3, 7, N'July', N'Jul', 28, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-12' AS Date), 2023, 3, 7, N'July', N'Jul', 28, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-13' AS Date), 2023, 3, 7, N'July', N'Jul', 28, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-14' AS Date), 2023, 3, 7, N'July', N'Jul', 28, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-15' AS Date), 2023, 3, 7, N'July', N'Jul', 28, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-16' AS Date), 2023, 3, 7, N'July', N'Jul', 29, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-17' AS Date), 2023, 3, 7, N'July', N'Jul', 29, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-18' AS Date), 2023, 3, 7, N'July', N'Jul', 29, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-19' AS Date), 2023, 3, 7, N'July', N'Jul', 29, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-20' AS Date), 2023, 3, 7, N'July', N'Jul', 29, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-21' AS Date), 2023, 3, 7, N'July', N'Jul', 29, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-22' AS Date), 2023, 3, 7, N'July', N'Jul', 29, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-23' AS Date), 2023, 3, 7, N'July', N'Jul', 30, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-24' AS Date), 2023, 3, 7, N'July', N'Jul', 30, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-25' AS Date), 2023, 3, 7, N'July', N'Jul', 30, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-26' AS Date), 2023, 3, 7, N'July', N'Jul', 30, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-27' AS Date), 2023, 3, 7, N'July', N'Jul', 30, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-28' AS Date), 2023, 3, 7, N'July', N'Jul', 30, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-29' AS Date), 2023, 3, 7, N'July', N'Jul', 30, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-30' AS Date), 2023, 3, 7, N'July', N'Jul', 31, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-07-31' AS Date), 2023, 3, 7, N'July', N'Jul', 31, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-01' AS Date), 2023, 3, 8, N'August', N'Aug', 31, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-02' AS Date), 2023, 3, 8, N'August', N'Aug', 31, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-03' AS Date), 2023, 3, 8, N'August', N'Aug', 31, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-04' AS Date), 2023, 3, 8, N'August', N'Aug', 31, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-05' AS Date), 2023, 3, 8, N'August', N'Aug', 31, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-06' AS Date), 2023, 3, 8, N'August', N'Aug', 32, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-07' AS Date), 2023, 3, 8, N'August', N'Aug', 32, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-08' AS Date), 2023, 3, 8, N'August', N'Aug', 32, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-09' AS Date), 2023, 3, 8, N'August', N'Aug', 32, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-10' AS Date), 2023, 3, 8, N'August', N'Aug', 32, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-11' AS Date), 2023, 3, 8, N'August', N'Aug', 32, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-12' AS Date), 2023, 3, 8, N'August', N'Aug', 32, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-13' AS Date), 2023, 3, 8, N'August', N'Aug', 33, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-14' AS Date), 2023, 3, 8, N'August', N'Aug', 33, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-15' AS Date), 2023, 3, 8, N'August', N'Aug', 33, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-16' AS Date), 2023, 3, 8, N'August', N'Aug', 33, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-17' AS Date), 2023, 3, 8, N'August', N'Aug', 33, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-18' AS Date), 2023, 3, 8, N'August', N'Aug', 33, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-19' AS Date), 2023, 3, 8, N'August', N'Aug', 33, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-20' AS Date), 2023, 3, 8, N'August', N'Aug', 34, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-21' AS Date), 2023, 3, 8, N'August', N'Aug', 34, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-22' AS Date), 2023, 3, 8, N'August', N'Aug', 34, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-23' AS Date), 2023, 3, 8, N'August', N'Aug', 34, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-24' AS Date), 2023, 3, 8, N'August', N'Aug', 34, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-25' AS Date), 2023, 3, 8, N'August', N'Aug', 34, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-26' AS Date), 2023, 3, 8, N'August', N'Aug', 34, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-27' AS Date), 2023, 3, 8, N'August', N'Aug', 35, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-28' AS Date), 2023, 3, 8, N'August', N'Aug', 35, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-29' AS Date), 2023, 3, 8, N'August', N'Aug', 35, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-30' AS Date), 2023, 3, 8, N'August', N'Aug', 35, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-08-31' AS Date), 2023, 3, 8, N'August', N'Aug', 35, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-01' AS Date), 2023, 3, 9, N'September', N'Sep', 35, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-02' AS Date), 2023, 3, 9, N'September', N'Sep', 35, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-03' AS Date), 2023, 3, 9, N'September', N'Sep', 36, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-04' AS Date), 2023, 3, 9, N'September', N'Sep', 36, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-05' AS Date), 2023, 3, 9, N'September', N'Sep', 36, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-06' AS Date), 2023, 3, 9, N'September', N'Sep', 36, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-07' AS Date), 2023, 3, 9, N'September', N'Sep', 36, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-08' AS Date), 2023, 3, 9, N'September', N'Sep', 36, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-09' AS Date), 2023, 3, 9, N'September', N'Sep', 36, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-10' AS Date), 2023, 3, 9, N'September', N'Sep', 37, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-11' AS Date), 2023, 3, 9, N'September', N'Sep', 37, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-12' AS Date), 2023, 3, 9, N'September', N'Sep', 37, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-13' AS Date), 2023, 3, 9, N'September', N'Sep', 37, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-14' AS Date), 2023, 3, 9, N'September', N'Sep', 37, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-15' AS Date), 2023, 3, 9, N'September', N'Sep', 37, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-16' AS Date), 2023, 3, 9, N'September', N'Sep', 37, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-17' AS Date), 2023, 3, 9, N'September', N'Sep', 38, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-18' AS Date), 2023, 3, 9, N'September', N'Sep', 38, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-19' AS Date), 2023, 3, 9, N'September', N'Sep', 38, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-20' AS Date), 2023, 3, 9, N'September', N'Sep', 38, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-21' AS Date), 2023, 3, 9, N'September', N'Sep', 38, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-22' AS Date), 2023, 3, 9, N'September', N'Sep', 38, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-23' AS Date), 2023, 3, 9, N'September', N'Sep', 38, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-24' AS Date), 2023, 3, 9, N'September', N'Sep', 39, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-25' AS Date), 2023, 3, 9, N'September', N'Sep', 39, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-26' AS Date), 2023, 3, 9, N'September', N'Sep', 39, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-27' AS Date), 2023, 3, 9, N'September', N'Sep', 39, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-28' AS Date), 2023, 3, 9, N'September', N'Sep', 39, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-29' AS Date), 2023, 3, 9, N'September', N'Sep', 39, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-09-30' AS Date), 2023, 3, 9, N'September', N'Sep', 39, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-01' AS Date), 2023, 4, 10, N'October', N'Oct', 40, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-02' AS Date), 2023, 4, 10, N'October', N'Oct', 40, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-03' AS Date), 2023, 4, 10, N'October', N'Oct', 40, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-04' AS Date), 2023, 4, 10, N'October', N'Oct', 40, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-05' AS Date), 2023, 4, 10, N'October', N'Oct', 40, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-06' AS Date), 2023, 4, 10, N'October', N'Oct', 40, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-07' AS Date), 2023, 4, 10, N'October', N'Oct', 40, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-08' AS Date), 2023, 4, 10, N'October', N'Oct', 41, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-09' AS Date), 2023, 4, 10, N'October', N'Oct', 41, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-10' AS Date), 2023, 4, 10, N'October', N'Oct', 41, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-11' AS Date), 2023, 4, 10, N'October', N'Oct', 41, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-12' AS Date), 2023, 4, 10, N'October', N'Oct', 41, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-13' AS Date), 2023, 4, 10, N'October', N'Oct', 41, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-14' AS Date), 2023, 4, 10, N'October', N'Oct', 41, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-15' AS Date), 2023, 4, 10, N'October', N'Oct', 42, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-16' AS Date), 2023, 4, 10, N'October', N'Oct', 42, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-17' AS Date), 2023, 4, 10, N'October', N'Oct', 42, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-18' AS Date), 2023, 4, 10, N'October', N'Oct', 42, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-19' AS Date), 2023, 4, 10, N'October', N'Oct', 42, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-20' AS Date), 2023, 4, 10, N'October', N'Oct', 42, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-21' AS Date), 2023, 4, 10, N'October', N'Oct', 42, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-22' AS Date), 2023, 4, 10, N'October', N'Oct', 43, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-23' AS Date), 2023, 4, 10, N'October', N'Oct', 43, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-24' AS Date), 2023, 4, 10, N'October', N'Oct', 43, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-25' AS Date), 2023, 4, 10, N'October', N'Oct', 43, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-26' AS Date), 2023, 4, 10, N'October', N'Oct', 43, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-27' AS Date), 2023, 4, 10, N'October', N'Oct', 43, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-28' AS Date), 2023, 4, 10, N'October', N'Oct', 43, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-29' AS Date), 2023, 4, 10, N'October', N'Oct', 44, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-30' AS Date), 2023, 4, 10, N'October', N'Oct', 44, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-10-31' AS Date), 2023, 4, 10, N'October', N'Oct', 44, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-01' AS Date), 2023, 4, 11, N'November', N'Nov', 44, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-02' AS Date), 2023, 4, 11, N'November', N'Nov', 44, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-03' AS Date), 2023, 4, 11, N'November', N'Nov', 44, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-04' AS Date), 2023, 4, 11, N'November', N'Nov', 44, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-05' AS Date), 2023, 4, 11, N'November', N'Nov', 45, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-06' AS Date), 2023, 4, 11, N'November', N'Nov', 45, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-07' AS Date), 2023, 4, 11, N'November', N'Nov', 45, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-08' AS Date), 2023, 4, 11, N'November', N'Nov', 45, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-09' AS Date), 2023, 4, 11, N'November', N'Nov', 45, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-10' AS Date), 2023, 4, 11, N'November', N'Nov', 45, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-11' AS Date), 2023, 4, 11, N'November', N'Nov', 45, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-12' AS Date), 2023, 4, 11, N'November', N'Nov', 46, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-13' AS Date), 2023, 4, 11, N'November', N'Nov', 46, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-14' AS Date), 2023, 4, 11, N'November', N'Nov', 46, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-15' AS Date), 2023, 4, 11, N'November', N'Nov', 46, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-16' AS Date), 2023, 4, 11, N'November', N'Nov', 46, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-17' AS Date), 2023, 4, 11, N'November', N'Nov', 46, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-18' AS Date), 2023, 4, 11, N'November', N'Nov', 46, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-19' AS Date), 2023, 4, 11, N'November', N'Nov', 47, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-20' AS Date), 2023, 4, 11, N'November', N'Nov', 47, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-21' AS Date), 2023, 4, 11, N'November', N'Nov', 47, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-22' AS Date), 2023, 4, 11, N'November', N'Nov', 47, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-23' AS Date), 2023, 4, 11, N'November', N'Nov', 47, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-24' AS Date), 2023, 4, 11, N'November', N'Nov', 47, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-25' AS Date), 2023, 4, 11, N'November', N'Nov', 47, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-26' AS Date), 2023, 4, 11, N'November', N'Nov', 48, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-27' AS Date), 2023, 4, 11, N'November', N'Nov', 48, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-28' AS Date), 2023, 4, 11, N'November', N'Nov', 48, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-29' AS Date), 2023, 4, 11, N'November', N'Nov', 48, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-11-30' AS Date), 2023, 4, 11, N'November', N'Nov', 48, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-01' AS Date), 2023, 4, 12, N'December', N'Dec', 48, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-02' AS Date), 2023, 4, 12, N'December', N'Dec', 48, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-03' AS Date), 2023, 4, 12, N'December', N'Dec', 49, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-04' AS Date), 2023, 4, 12, N'December', N'Dec', 49, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-05' AS Date), 2023, 4, 12, N'December', N'Dec', 49, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-06' AS Date), 2023, 4, 12, N'December', N'Dec', 49, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-07' AS Date), 2023, 4, 12, N'December', N'Dec', 49, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-08' AS Date), 2023, 4, 12, N'December', N'Dec', 49, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-09' AS Date), 2023, 4, 12, N'December', N'Dec', 49, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-10' AS Date), 2023, 4, 12, N'December', N'Dec', 50, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-11' AS Date), 2023, 4, 12, N'December', N'Dec', 50, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-12' AS Date), 2023, 4, 12, N'December', N'Dec', 50, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-13' AS Date), 2023, 4, 12, N'December', N'Dec', 50, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-14' AS Date), 2023, 4, 12, N'December', N'Dec', 50, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-15' AS Date), 2023, 4, 12, N'December', N'Dec', 50, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-16' AS Date), 2023, 4, 12, N'December', N'Dec', 50, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-17' AS Date), 2023, 4, 12, N'December', N'Dec', 51, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-18' AS Date), 2023, 4, 12, N'December', N'Dec', 51, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-19' AS Date), 2023, 4, 12, N'December', N'Dec', 51, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-20' AS Date), 2023, 4, 12, N'December', N'Dec', 51, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-21' AS Date), 2023, 4, 12, N'December', N'Dec', 51, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-22' AS Date), 2023, 4, 12, N'December', N'Dec', 51, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-23' AS Date), 2023, 4, 12, N'December', N'Dec', 51, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-24' AS Date), 2023, 4, 12, N'December', N'Dec', 52, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-25' AS Date), 2023, 4, 12, N'December', N'Dec', 52, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-26' AS Date), 2023, 4, 12, N'December', N'Dec', 52, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-27' AS Date), 2023, 4, 12, N'December', N'Dec', 52, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-28' AS Date), 2023, 4, 12, N'December', N'Dec', 52, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-29' AS Date), 2023, 4, 12, N'December', N'Dec', 52, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-30' AS Date), 2023, 4, 12, N'December', N'Dec', 52, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2023-12-31' AS Date), 2023, 4, 12, N'December', N'Dec', 53, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-01' AS Date), 2024, 1, 1, N'January', N'Jan', 1, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-02' AS Date), 2024, 1, 1, N'January', N'Jan', 1, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-03' AS Date), 2024, 1, 1, N'January', N'Jan', 1, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-04' AS Date), 2024, 1, 1, N'January', N'Jan', 1, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-05' AS Date), 2024, 1, 1, N'January', N'Jan', 1, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-06' AS Date), 2024, 1, 1, N'January', N'Jan', 1, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-07' AS Date), 2024, 1, 1, N'January', N'Jan', 2, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-08' AS Date), 2024, 1, 1, N'January', N'Jan', 2, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-09' AS Date), 2024, 1, 1, N'January', N'Jan', 2, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-10' AS Date), 2024, 1, 1, N'January', N'Jan', 2, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-11' AS Date), 2024, 1, 1, N'January', N'Jan', 2, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-12' AS Date), 2024, 1, 1, N'January', N'Jan', 2, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-13' AS Date), 2024, 1, 1, N'January', N'Jan', 2, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-14' AS Date), 2024, 1, 1, N'January', N'Jan', 3, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-15' AS Date), 2024, 1, 1, N'January', N'Jan', 3, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-16' AS Date), 2024, 1, 1, N'January', N'Jan', 3, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-17' AS Date), 2024, 1, 1, N'January', N'Jan', 3, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-18' AS Date), 2024, 1, 1, N'January', N'Jan', 3, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-19' AS Date), 2024, 1, 1, N'January', N'Jan', 3, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-20' AS Date), 2024, 1, 1, N'January', N'Jan', 3, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-21' AS Date), 2024, 1, 1, N'January', N'Jan', 4, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-22' AS Date), 2024, 1, 1, N'January', N'Jan', 4, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-23' AS Date), 2024, 1, 1, N'January', N'Jan', 4, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-24' AS Date), 2024, 1, 1, N'January', N'Jan', 4, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-25' AS Date), 2024, 1, 1, N'January', N'Jan', 4, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-26' AS Date), 2024, 1, 1, N'January', N'Jan', 4, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-27' AS Date), 2024, 1, 1, N'January', N'Jan', 4, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-28' AS Date), 2024, 1, 1, N'January', N'Jan', 5, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-29' AS Date), 2024, 1, 1, N'January', N'Jan', 5, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-30' AS Date), 2024, 1, 1, N'January', N'Jan', 5, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-01-31' AS Date), 2024, 1, 1, N'January', N'Jan', 5, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-01' AS Date), 2024, 1, 2, N'February', N'Feb', 5, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-02' AS Date), 2024, 1, 2, N'February', N'Feb', 5, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-03' AS Date), 2024, 1, 2, N'February', N'Feb', 5, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-04' AS Date), 2024, 1, 2, N'February', N'Feb', 6, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-05' AS Date), 2024, 1, 2, N'February', N'Feb', 6, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-06' AS Date), 2024, 1, 2, N'February', N'Feb', 6, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-07' AS Date), 2024, 1, 2, N'February', N'Feb', 6, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-08' AS Date), 2024, 1, 2, N'February', N'Feb', 6, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-09' AS Date), 2024, 1, 2, N'February', N'Feb', 6, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-10' AS Date), 2024, 1, 2, N'February', N'Feb', 6, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-11' AS Date), 2024, 1, 2, N'February', N'Feb', 7, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-12' AS Date), 2024, 1, 2, N'February', N'Feb', 7, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-13' AS Date), 2024, 1, 2, N'February', N'Feb', 7, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-14' AS Date), 2024, 1, 2, N'February', N'Feb', 7, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-15' AS Date), 2024, 1, 2, N'February', N'Feb', 7, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-16' AS Date), 2024, 1, 2, N'February', N'Feb', 7, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-17' AS Date), 2024, 1, 2, N'February', N'Feb', 7, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-18' AS Date), 2024, 1, 2, N'February', N'Feb', 8, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-19' AS Date), 2024, 1, 2, N'February', N'Feb', 8, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-20' AS Date), 2024, 1, 2, N'February', N'Feb', 8, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-21' AS Date), 2024, 1, 2, N'February', N'Feb', 8, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-22' AS Date), 2024, 1, 2, N'February', N'Feb', 8, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-23' AS Date), 2024, 1, 2, N'February', N'Feb', 8, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-24' AS Date), 2024, 1, 2, N'February', N'Feb', 8, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-25' AS Date), 2024, 1, 2, N'February', N'Feb', 9, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-26' AS Date), 2024, 1, 2, N'February', N'Feb', 9, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-27' AS Date), 2024, 1, 2, N'February', N'Feb', 9, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-28' AS Date), 2024, 1, 2, N'February', N'Feb', 9, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-02-29' AS Date), 2024, 1, 2, N'February', N'Feb', 9, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-01' AS Date), 2024, 1, 3, N'March', N'Mar', 9, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-02' AS Date), 2024, 1, 3, N'March', N'Mar', 9, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-03' AS Date), 2024, 1, 3, N'March', N'Mar', 10, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-04' AS Date), 2024, 1, 3, N'March', N'Mar', 10, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-05' AS Date), 2024, 1, 3, N'March', N'Mar', 10, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-06' AS Date), 2024, 1, 3, N'March', N'Mar', 10, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-07' AS Date), 2024, 1, 3, N'March', N'Mar', 10, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-08' AS Date), 2024, 1, 3, N'March', N'Mar', 10, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-09' AS Date), 2024, 1, 3, N'March', N'Mar', 10, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-10' AS Date), 2024, 1, 3, N'March', N'Mar', 11, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-11' AS Date), 2024, 1, 3, N'March', N'Mar', 11, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-12' AS Date), 2024, 1, 3, N'March', N'Mar', 11, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-13' AS Date), 2024, 1, 3, N'March', N'Mar', 11, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-14' AS Date), 2024, 1, 3, N'March', N'Mar', 11, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-15' AS Date), 2024, 1, 3, N'March', N'Mar', 11, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-16' AS Date), 2024, 1, 3, N'March', N'Mar', 11, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-17' AS Date), 2024, 1, 3, N'March', N'Mar', 12, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-18' AS Date), 2024, 1, 3, N'March', N'Mar', 12, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-19' AS Date), 2024, 1, 3, N'March', N'Mar', 12, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-20' AS Date), 2024, 1, 3, N'March', N'Mar', 12, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-21' AS Date), 2024, 1, 3, N'March', N'Mar', 12, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-22' AS Date), 2024, 1, 3, N'March', N'Mar', 12, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-23' AS Date), 2024, 1, 3, N'March', N'Mar', 12, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-24' AS Date), 2024, 1, 3, N'March', N'Mar', 13, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-25' AS Date), 2024, 1, 3, N'March', N'Mar', 13, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-26' AS Date), 2024, 1, 3, N'March', N'Mar', 13, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-27' AS Date), 2024, 1, 3, N'March', N'Mar', 13, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-28' AS Date), 2024, 1, 3, N'March', N'Mar', 13, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-29' AS Date), 2024, 1, 3, N'March', N'Mar', 13, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-30' AS Date), 2024, 1, 3, N'March', N'Mar', 13, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-03-31' AS Date), 2024, 1, 3, N'March', N'Mar', 14, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-01' AS Date), 2024, 2, 4, N'April', N'Apr', 14, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-02' AS Date), 2024, 2, 4, N'April', N'Apr', 14, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-03' AS Date), 2024, 2, 4, N'April', N'Apr', 14, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-04' AS Date), 2024, 2, 4, N'April', N'Apr', 14, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-05' AS Date), 2024, 2, 4, N'April', N'Apr', 14, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-06' AS Date), 2024, 2, 4, N'April', N'Apr', 14, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-07' AS Date), 2024, 2, 4, N'April', N'Apr', 15, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-08' AS Date), 2024, 2, 4, N'April', N'Apr', 15, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-09' AS Date), 2024, 2, 4, N'April', N'Apr', 15, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-10' AS Date), 2024, 2, 4, N'April', N'Apr', 15, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-11' AS Date), 2024, 2, 4, N'April', N'Apr', 15, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-12' AS Date), 2024, 2, 4, N'April', N'Apr', 15, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-13' AS Date), 2024, 2, 4, N'April', N'Apr', 15, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-14' AS Date), 2024, 2, 4, N'April', N'Apr', 16, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-15' AS Date), 2024, 2, 4, N'April', N'Apr', 16, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-16' AS Date), 2024, 2, 4, N'April', N'Apr', 16, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-17' AS Date), 2024, 2, 4, N'April', N'Apr', 16, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-18' AS Date), 2024, 2, 4, N'April', N'Apr', 16, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-19' AS Date), 2024, 2, 4, N'April', N'Apr', 16, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-20' AS Date), 2024, 2, 4, N'April', N'Apr', 16, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-21' AS Date), 2024, 2, 4, N'April', N'Apr', 17, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-22' AS Date), 2024, 2, 4, N'April', N'Apr', 17, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-23' AS Date), 2024, 2, 4, N'April', N'Apr', 17, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-24' AS Date), 2024, 2, 4, N'April', N'Apr', 17, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-25' AS Date), 2024, 2, 4, N'April', N'Apr', 17, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-26' AS Date), 2024, 2, 4, N'April', N'Apr', 17, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-27' AS Date), 2024, 2, 4, N'April', N'Apr', 17, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-28' AS Date), 2024, 2, 4, N'April', N'Apr', 18, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-29' AS Date), 2024, 2, 4, N'April', N'Apr', 18, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-04-30' AS Date), 2024, 2, 4, N'April', N'Apr', 18, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-01' AS Date), 2024, 2, 5, N'May', N'May', 18, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-02' AS Date), 2024, 2, 5, N'May', N'May', 18, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-03' AS Date), 2024, 2, 5, N'May', N'May', 18, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-04' AS Date), 2024, 2, 5, N'May', N'May', 18, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-05' AS Date), 2024, 2, 5, N'May', N'May', 19, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-06' AS Date), 2024, 2, 5, N'May', N'May', 19, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-07' AS Date), 2024, 2, 5, N'May', N'May', 19, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-08' AS Date), 2024, 2, 5, N'May', N'May', 19, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-09' AS Date), 2024, 2, 5, N'May', N'May', 19, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-10' AS Date), 2024, 2, 5, N'May', N'May', 19, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-11' AS Date), 2024, 2, 5, N'May', N'May', 19, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-12' AS Date), 2024, 2, 5, N'May', N'May', 20, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-13' AS Date), 2024, 2, 5, N'May', N'May', 20, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-14' AS Date), 2024, 2, 5, N'May', N'May', 20, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-15' AS Date), 2024, 2, 5, N'May', N'May', 20, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-16' AS Date), 2024, 2, 5, N'May', N'May', 20, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-17' AS Date), 2024, 2, 5, N'May', N'May', 20, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-18' AS Date), 2024, 2, 5, N'May', N'May', 20, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-19' AS Date), 2024, 2, 5, N'May', N'May', 21, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-20' AS Date), 2024, 2, 5, N'May', N'May', 21, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-21' AS Date), 2024, 2, 5, N'May', N'May', 21, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-22' AS Date), 2024, 2, 5, N'May', N'May', 21, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-23' AS Date), 2024, 2, 5, N'May', N'May', 21, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-24' AS Date), 2024, 2, 5, N'May', N'May', 21, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-25' AS Date), 2024, 2, 5, N'May', N'May', 21, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-26' AS Date), 2024, 2, 5, N'May', N'May', 22, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-27' AS Date), 2024, 2, 5, N'May', N'May', 22, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-28' AS Date), 2024, 2, 5, N'May', N'May', 22, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-29' AS Date), 2024, 2, 5, N'May', N'May', 22, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-30' AS Date), 2024, 2, 5, N'May', N'May', 22, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-05-31' AS Date), 2024, 2, 5, N'May', N'May', 22, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-01' AS Date), 2024, 2, 6, N'June', N'Jun', 22, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-02' AS Date), 2024, 2, 6, N'June', N'Jun', 23, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-03' AS Date), 2024, 2, 6, N'June', N'Jun', 23, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-04' AS Date), 2024, 2, 6, N'June', N'Jun', 23, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-05' AS Date), 2024, 2, 6, N'June', N'Jun', 23, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-06' AS Date), 2024, 2, 6, N'June', N'Jun', 23, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-07' AS Date), 2024, 2, 6, N'June', N'Jun', 23, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-08' AS Date), 2024, 2, 6, N'June', N'Jun', 23, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-09' AS Date), 2024, 2, 6, N'June', N'Jun', 24, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-10' AS Date), 2024, 2, 6, N'June', N'Jun', 24, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-11' AS Date), 2024, 2, 6, N'June', N'Jun', 24, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-12' AS Date), 2024, 2, 6, N'June', N'Jun', 24, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-13' AS Date), 2024, 2, 6, N'June', N'Jun', 24, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-14' AS Date), 2024, 2, 6, N'June', N'Jun', 24, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-15' AS Date), 2024, 2, 6, N'June', N'Jun', 24, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-16' AS Date), 2024, 2, 6, N'June', N'Jun', 25, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-17' AS Date), 2024, 2, 6, N'June', N'Jun', 25, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-18' AS Date), 2024, 2, 6, N'June', N'Jun', 25, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-19' AS Date), 2024, 2, 6, N'June', N'Jun', 25, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-20' AS Date), 2024, 2, 6, N'June', N'Jun', 25, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-21' AS Date), 2024, 2, 6, N'June', N'Jun', 25, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-22' AS Date), 2024, 2, 6, N'June', N'Jun', 25, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-23' AS Date), 2024, 2, 6, N'June', N'Jun', 26, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-24' AS Date), 2024, 2, 6, N'June', N'Jun', 26, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-25' AS Date), 2024, 2, 6, N'June', N'Jun', 26, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-26' AS Date), 2024, 2, 6, N'June', N'Jun', 26, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-27' AS Date), 2024, 2, 6, N'June', N'Jun', 26, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-28' AS Date), 2024, 2, 6, N'June', N'Jun', 26, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-29' AS Date), 2024, 2, 6, N'June', N'Jun', 26, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-06-30' AS Date), 2024, 2, 6, N'June', N'Jun', 27, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-01' AS Date), 2024, 3, 7, N'July', N'Jul', 27, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-02' AS Date), 2024, 3, 7, N'July', N'Jul', 27, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-03' AS Date), 2024, 3, 7, N'July', N'Jul', 27, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-04' AS Date), 2024, 3, 7, N'July', N'Jul', 27, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-05' AS Date), 2024, 3, 7, N'July', N'Jul', 27, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-06' AS Date), 2024, 3, 7, N'July', N'Jul', 27, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-07' AS Date), 2024, 3, 7, N'July', N'Jul', 28, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-08' AS Date), 2024, 3, 7, N'July', N'Jul', 28, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-09' AS Date), 2024, 3, 7, N'July', N'Jul', 28, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-10' AS Date), 2024, 3, 7, N'July', N'Jul', 28, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-11' AS Date), 2024, 3, 7, N'July', N'Jul', 28, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-12' AS Date), 2024, 3, 7, N'July', N'Jul', 28, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-13' AS Date), 2024, 3, 7, N'July', N'Jul', 28, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-14' AS Date), 2024, 3, 7, N'July', N'Jul', 29, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-15' AS Date), 2024, 3, 7, N'July', N'Jul', 29, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-16' AS Date), 2024, 3, 7, N'July', N'Jul', 29, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-17' AS Date), 2024, 3, 7, N'July', N'Jul', 29, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-18' AS Date), 2024, 3, 7, N'July', N'Jul', 29, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-19' AS Date), 2024, 3, 7, N'July', N'Jul', 29, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-20' AS Date), 2024, 3, 7, N'July', N'Jul', 29, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-21' AS Date), 2024, 3, 7, N'July', N'Jul', 30, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-22' AS Date), 2024, 3, 7, N'July', N'Jul', 30, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-23' AS Date), 2024, 3, 7, N'July', N'Jul', 30, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-24' AS Date), 2024, 3, 7, N'July', N'Jul', 30, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-25' AS Date), 2024, 3, 7, N'July', N'Jul', 30, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-26' AS Date), 2024, 3, 7, N'July', N'Jul', 30, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-27' AS Date), 2024, 3, 7, N'July', N'Jul', 30, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-28' AS Date), 2024, 3, 7, N'July', N'Jul', 31, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-29' AS Date), 2024, 3, 7, N'July', N'Jul', 31, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-30' AS Date), 2024, 3, 7, N'July', N'Jul', 31, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-07-31' AS Date), 2024, 3, 7, N'July', N'Jul', 31, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-01' AS Date), 2024, 3, 8, N'August', N'Aug', 31, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-02' AS Date), 2024, 3, 8, N'August', N'Aug', 31, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-03' AS Date), 2024, 3, 8, N'August', N'Aug', 31, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-04' AS Date), 2024, 3, 8, N'August', N'Aug', 32, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-05' AS Date), 2024, 3, 8, N'August', N'Aug', 32, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-06' AS Date), 2024, 3, 8, N'August', N'Aug', 32, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-07' AS Date), 2024, 3, 8, N'August', N'Aug', 32, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-08' AS Date), 2024, 3, 8, N'August', N'Aug', 32, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-09' AS Date), 2024, 3, 8, N'August', N'Aug', 32, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-10' AS Date), 2024, 3, 8, N'August', N'Aug', 32, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-11' AS Date), 2024, 3, 8, N'August', N'Aug', 33, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-12' AS Date), 2024, 3, 8, N'August', N'Aug', 33, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-13' AS Date), 2024, 3, 8, N'August', N'Aug', 33, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-14' AS Date), 2024, 3, 8, N'August', N'Aug', 33, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-15' AS Date), 2024, 3, 8, N'August', N'Aug', 33, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-16' AS Date), 2024, 3, 8, N'August', N'Aug', 33, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-17' AS Date), 2024, 3, 8, N'August', N'Aug', 33, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-18' AS Date), 2024, 3, 8, N'August', N'Aug', 34, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-19' AS Date), 2024, 3, 8, N'August', N'Aug', 34, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-20' AS Date), 2024, 3, 8, N'August', N'Aug', 34, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-21' AS Date), 2024, 3, 8, N'August', N'Aug', 34, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-22' AS Date), 2024, 3, 8, N'August', N'Aug', 34, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-23' AS Date), 2024, 3, 8, N'August', N'Aug', 34, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-24' AS Date), 2024, 3, 8, N'August', N'Aug', 34, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-25' AS Date), 2024, 3, 8, N'August', N'Aug', 35, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-26' AS Date), 2024, 3, 8, N'August', N'Aug', 35, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-27' AS Date), 2024, 3, 8, N'August', N'Aug', 35, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-28' AS Date), 2024, 3, 8, N'August', N'Aug', 35, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-29' AS Date), 2024, 3, 8, N'August', N'Aug', 35, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-30' AS Date), 2024, 3, 8, N'August', N'Aug', 35, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-08-31' AS Date), 2024, 3, 8, N'August', N'Aug', 35, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-01' AS Date), 2024, 3, 9, N'September', N'Sep', 36, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-02' AS Date), 2024, 3, 9, N'September', N'Sep', 36, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-03' AS Date), 2024, 3, 9, N'September', N'Sep', 36, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-04' AS Date), 2024, 3, 9, N'September', N'Sep', 36, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-05' AS Date), 2024, 3, 9, N'September', N'Sep', 36, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-06' AS Date), 2024, 3, 9, N'September', N'Sep', 36, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-07' AS Date), 2024, 3, 9, N'September', N'Sep', 36, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-08' AS Date), 2024, 3, 9, N'September', N'Sep', 37, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-09' AS Date), 2024, 3, 9, N'September', N'Sep', 37, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-10' AS Date), 2024, 3, 9, N'September', N'Sep', 37, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-11' AS Date), 2024, 3, 9, N'September', N'Sep', 37, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-12' AS Date), 2024, 3, 9, N'September', N'Sep', 37, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-13' AS Date), 2024, 3, 9, N'September', N'Sep', 37, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-14' AS Date), 2024, 3, 9, N'September', N'Sep', 37, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-15' AS Date), 2024, 3, 9, N'September', N'Sep', 38, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-16' AS Date), 2024, 3, 9, N'September', N'Sep', 38, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-17' AS Date), 2024, 3, 9, N'September', N'Sep', 38, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-18' AS Date), 2024, 3, 9, N'September', N'Sep', 38, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-19' AS Date), 2024, 3, 9, N'September', N'Sep', 38, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-20' AS Date), 2024, 3, 9, N'September', N'Sep', 38, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-21' AS Date), 2024, 3, 9, N'September', N'Sep', 38, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-22' AS Date), 2024, 3, 9, N'September', N'Sep', 39, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-23' AS Date), 2024, 3, 9, N'September', N'Sep', 39, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-24' AS Date), 2024, 3, 9, N'September', N'Sep', 39, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-25' AS Date), 2024, 3, 9, N'September', N'Sep', 39, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-26' AS Date), 2024, 3, 9, N'September', N'Sep', 39, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-27' AS Date), 2024, 3, 9, N'September', N'Sep', 39, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-28' AS Date), 2024, 3, 9, N'September', N'Sep', 39, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-29' AS Date), 2024, 3, 9, N'September', N'Sep', 40, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-09-30' AS Date), 2024, 3, 9, N'September', N'Sep', 40, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-01' AS Date), 2024, 4, 10, N'October', N'Oct', 40, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-02' AS Date), 2024, 4, 10, N'October', N'Oct', 40, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-03' AS Date), 2024, 4, 10, N'October', N'Oct', 40, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-04' AS Date), 2024, 4, 10, N'October', N'Oct', 40, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-05' AS Date), 2024, 4, 10, N'October', N'Oct', 40, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-06' AS Date), 2024, 4, 10, N'October', N'Oct', 41, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-07' AS Date), 2024, 4, 10, N'October', N'Oct', 41, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-08' AS Date), 2024, 4, 10, N'October', N'Oct', 41, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-09' AS Date), 2024, 4, 10, N'October', N'Oct', 41, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-10' AS Date), 2024, 4, 10, N'October', N'Oct', 41, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-11' AS Date), 2024, 4, 10, N'October', N'Oct', 41, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-12' AS Date), 2024, 4, 10, N'October', N'Oct', 41, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-13' AS Date), 2024, 4, 10, N'October', N'Oct', 42, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-14' AS Date), 2024, 4, 10, N'October', N'Oct', 42, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-15' AS Date), 2024, 4, 10, N'October', N'Oct', 42, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-16' AS Date), 2024, 4, 10, N'October', N'Oct', 42, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-17' AS Date), 2024, 4, 10, N'October', N'Oct', 42, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-18' AS Date), 2024, 4, 10, N'October', N'Oct', 42, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-19' AS Date), 2024, 4, 10, N'October', N'Oct', 42, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-20' AS Date), 2024, 4, 10, N'October', N'Oct', 43, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-21' AS Date), 2024, 4, 10, N'October', N'Oct', 43, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-22' AS Date), 2024, 4, 10, N'October', N'Oct', 43, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-23' AS Date), 2024, 4, 10, N'October', N'Oct', 43, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-24' AS Date), 2024, 4, 10, N'October', N'Oct', 43, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-25' AS Date), 2024, 4, 10, N'October', N'Oct', 43, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-26' AS Date), 2024, 4, 10, N'October', N'Oct', 43, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-27' AS Date), 2024, 4, 10, N'October', N'Oct', 44, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-28' AS Date), 2024, 4, 10, N'October', N'Oct', 44, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-29' AS Date), 2024, 4, 10, N'October', N'Oct', 44, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-30' AS Date), 2024, 4, 10, N'October', N'Oct', 44, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-10-31' AS Date), 2024, 4, 10, N'October', N'Oct', 44, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-01' AS Date), 2024, 4, 11, N'November', N'Nov', 44, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-02' AS Date), 2024, 4, 11, N'November', N'Nov', 44, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-03' AS Date), 2024, 4, 11, N'November', N'Nov', 45, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-04' AS Date), 2024, 4, 11, N'November', N'Nov', 45, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-05' AS Date), 2024, 4, 11, N'November', N'Nov', 45, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-06' AS Date), 2024, 4, 11, N'November', N'Nov', 45, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-07' AS Date), 2024, 4, 11, N'November', N'Nov', 45, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-08' AS Date), 2024, 4, 11, N'November', N'Nov', 45, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-09' AS Date), 2024, 4, 11, N'November', N'Nov', 45, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-10' AS Date), 2024, 4, 11, N'November', N'Nov', 46, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-11' AS Date), 2024, 4, 11, N'November', N'Nov', 46, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-12' AS Date), 2024, 4, 11, N'November', N'Nov', 46, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-13' AS Date), 2024, 4, 11, N'November', N'Nov', 46, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-14' AS Date), 2024, 4, 11, N'November', N'Nov', 46, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-15' AS Date), 2024, 4, 11, N'November', N'Nov', 46, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-16' AS Date), 2024, 4, 11, N'November', N'Nov', 46, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-17' AS Date), 2024, 4, 11, N'November', N'Nov', 47, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-18' AS Date), 2024, 4, 11, N'November', N'Nov', 47, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-19' AS Date), 2024, 4, 11, N'November', N'Nov', 47, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-20' AS Date), 2024, 4, 11, N'November', N'Nov', 47, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-21' AS Date), 2024, 4, 11, N'November', N'Nov', 47, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-22' AS Date), 2024, 4, 11, N'November', N'Nov', 47, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-23' AS Date), 2024, 4, 11, N'November', N'Nov', 47, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-24' AS Date), 2024, 4, 11, N'November', N'Nov', 48, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-25' AS Date), 2024, 4, 11, N'November', N'Nov', 48, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-26' AS Date), 2024, 4, 11, N'November', N'Nov', 48, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-27' AS Date), 2024, 4, 11, N'November', N'Nov', 48, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-28' AS Date), 2024, 4, 11, N'November', N'Nov', 48, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-29' AS Date), 2024, 4, 11, N'November', N'Nov', 48, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-11-30' AS Date), 2024, 4, 11, N'November', N'Nov', 48, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-01' AS Date), 2024, 4, 12, N'December', N'Dec', 49, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-02' AS Date), 2024, 4, 12, N'December', N'Dec', 49, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-03' AS Date), 2024, 4, 12, N'December', N'Dec', 49, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-04' AS Date), 2024, 4, 12, N'December', N'Dec', 49, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-05' AS Date), 2024, 4, 12, N'December', N'Dec', 49, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-06' AS Date), 2024, 4, 12, N'December', N'Dec', 49, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-07' AS Date), 2024, 4, 12, N'December', N'Dec', 49, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-08' AS Date), 2024, 4, 12, N'December', N'Dec', 50, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-09' AS Date), 2024, 4, 12, N'December', N'Dec', 50, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-10' AS Date), 2024, 4, 12, N'December', N'Dec', 50, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-11' AS Date), 2024, 4, 12, N'December', N'Dec', 50, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-12' AS Date), 2024, 4, 12, N'December', N'Dec', 50, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-13' AS Date), 2024, 4, 12, N'December', N'Dec', 50, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-14' AS Date), 2024, 4, 12, N'December', N'Dec', 50, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-15' AS Date), 2024, 4, 12, N'December', N'Dec', 51, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-16' AS Date), 2024, 4, 12, N'December', N'Dec', 51, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-17' AS Date), 2024, 4, 12, N'December', N'Dec', 51, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-18' AS Date), 2024, 4, 12, N'December', N'Dec', 51, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-19' AS Date), 2024, 4, 12, N'December', N'Dec', 51, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-20' AS Date), 2024, 4, 12, N'December', N'Dec', 51, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-21' AS Date), 2024, 4, 12, N'December', N'Dec', 51, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-22' AS Date), 2024, 4, 12, N'December', N'Dec', 52, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-23' AS Date), 2024, 4, 12, N'December', N'Dec', 52, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-24' AS Date), 2024, 4, 12, N'December', N'Dec', 52, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-25' AS Date), 2024, 4, 12, N'December', N'Dec', 52, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-26' AS Date), 2024, 4, 12, N'December', N'Dec', 52, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-27' AS Date), 2024, 4, 12, N'December', N'Dec', 52, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-28' AS Date), 2024, 4, 12, N'December', N'Dec', 52, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-29' AS Date), 2024, 4, 12, N'December', N'Dec', 53, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-30' AS Date), 2024, 4, 12, N'December', N'Dec', 53, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2024-12-31' AS Date), 2024, 4, 12, N'December', N'Dec', 53, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-01' AS Date), 2025, 1, 1, N'January', N'Jan', 1, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-02' AS Date), 2025, 1, 1, N'January', N'Jan', 1, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-03' AS Date), 2025, 1, 1, N'January', N'Jan', 1, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-04' AS Date), 2025, 1, 1, N'January', N'Jan', 1, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-05' AS Date), 2025, 1, 1, N'January', N'Jan', 2, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-06' AS Date), 2025, 1, 1, N'January', N'Jan', 2, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-07' AS Date), 2025, 1, 1, N'January', N'Jan', 2, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-08' AS Date), 2025, 1, 1, N'January', N'Jan', 2, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-09' AS Date), 2025, 1, 1, N'January', N'Jan', 2, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-10' AS Date), 2025, 1, 1, N'January', N'Jan', 2, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-11' AS Date), 2025, 1, 1, N'January', N'Jan', 2, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-12' AS Date), 2025, 1, 1, N'January', N'Jan', 3, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-13' AS Date), 2025, 1, 1, N'January', N'Jan', 3, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-14' AS Date), 2025, 1, 1, N'January', N'Jan', 3, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-15' AS Date), 2025, 1, 1, N'January', N'Jan', 3, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-16' AS Date), 2025, 1, 1, N'January', N'Jan', 3, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-17' AS Date), 2025, 1, 1, N'January', N'Jan', 3, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-18' AS Date), 2025, 1, 1, N'January', N'Jan', 3, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-19' AS Date), 2025, 1, 1, N'January', N'Jan', 4, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-20' AS Date), 2025, 1, 1, N'January', N'Jan', 4, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-21' AS Date), 2025, 1, 1, N'January', N'Jan', 4, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-22' AS Date), 2025, 1, 1, N'January', N'Jan', 4, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-23' AS Date), 2025, 1, 1, N'January', N'Jan', 4, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-24' AS Date), 2025, 1, 1, N'January', N'Jan', 4, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-25' AS Date), 2025, 1, 1, N'January', N'Jan', 4, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-26' AS Date), 2025, 1, 1, N'January', N'Jan', 5, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-27' AS Date), 2025, 1, 1, N'January', N'Jan', 5, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-28' AS Date), 2025, 1, 1, N'January', N'Jan', 5, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-29' AS Date), 2025, 1, 1, N'January', N'Jan', 5, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-30' AS Date), 2025, 1, 1, N'January', N'Jan', 5, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-01-31' AS Date), 2025, 1, 1, N'January', N'Jan', 5, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-01' AS Date), 2025, 1, 2, N'February', N'Feb', 5, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-02' AS Date), 2025, 1, 2, N'February', N'Feb', 6, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-03' AS Date), 2025, 1, 2, N'February', N'Feb', 6, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-04' AS Date), 2025, 1, 2, N'February', N'Feb', 6, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-05' AS Date), 2025, 1, 2, N'February', N'Feb', 6, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-06' AS Date), 2025, 1, 2, N'February', N'Feb', 6, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-07' AS Date), 2025, 1, 2, N'February', N'Feb', 6, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-08' AS Date), 2025, 1, 2, N'February', N'Feb', 6, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-09' AS Date), 2025, 1, 2, N'February', N'Feb', 7, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-10' AS Date), 2025, 1, 2, N'February', N'Feb', 7, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-11' AS Date), 2025, 1, 2, N'February', N'Feb', 7, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-12' AS Date), 2025, 1, 2, N'February', N'Feb', 7, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-13' AS Date), 2025, 1, 2, N'February', N'Feb', 7, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-14' AS Date), 2025, 1, 2, N'February', N'Feb', 7, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-15' AS Date), 2025, 1, 2, N'February', N'Feb', 7, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-16' AS Date), 2025, 1, 2, N'February', N'Feb', 8, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-17' AS Date), 2025, 1, 2, N'February', N'Feb', 8, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-18' AS Date), 2025, 1, 2, N'February', N'Feb', 8, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-19' AS Date), 2025, 1, 2, N'February', N'Feb', 8, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-20' AS Date), 2025, 1, 2, N'February', N'Feb', 8, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-21' AS Date), 2025, 1, 2, N'February', N'Feb', 8, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-22' AS Date), 2025, 1, 2, N'February', N'Feb', 8, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-23' AS Date), 2025, 1, 2, N'February', N'Feb', 9, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-24' AS Date), 2025, 1, 2, N'February', N'Feb', 9, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-25' AS Date), 2025, 1, 2, N'February', N'Feb', 9, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-26' AS Date), 2025, 1, 2, N'February', N'Feb', 9, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-27' AS Date), 2025, 1, 2, N'February', N'Feb', 9, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-02-28' AS Date), 2025, 1, 2, N'February', N'Feb', 9, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-01' AS Date), 2025, 1, 3, N'March', N'Mar', 9, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-02' AS Date), 2025, 1, 3, N'March', N'Mar', 10, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-03' AS Date), 2025, 1, 3, N'March', N'Mar', 10, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-04' AS Date), 2025, 1, 3, N'March', N'Mar', 10, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-05' AS Date), 2025, 1, 3, N'March', N'Mar', 10, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-06' AS Date), 2025, 1, 3, N'March', N'Mar', 10, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-07' AS Date), 2025, 1, 3, N'March', N'Mar', 10, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-08' AS Date), 2025, 1, 3, N'March', N'Mar', 10, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-09' AS Date), 2025, 1, 3, N'March', N'Mar', 11, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-10' AS Date), 2025, 1, 3, N'March', N'Mar', 11, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-11' AS Date), 2025, 1, 3, N'March', N'Mar', 11, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-12' AS Date), 2025, 1, 3, N'March', N'Mar', 11, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-13' AS Date), 2025, 1, 3, N'March', N'Mar', 11, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-14' AS Date), 2025, 1, 3, N'March', N'Mar', 11, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-15' AS Date), 2025, 1, 3, N'March', N'Mar', 11, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-16' AS Date), 2025, 1, 3, N'March', N'Mar', 12, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-17' AS Date), 2025, 1, 3, N'March', N'Mar', 12, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-18' AS Date), 2025, 1, 3, N'March', N'Mar', 12, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-19' AS Date), 2025, 1, 3, N'March', N'Mar', 12, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-20' AS Date), 2025, 1, 3, N'March', N'Mar', 12, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-21' AS Date), 2025, 1, 3, N'March', N'Mar', 12, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-22' AS Date), 2025, 1, 3, N'March', N'Mar', 12, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-23' AS Date), 2025, 1, 3, N'March', N'Mar', 13, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-24' AS Date), 2025, 1, 3, N'March', N'Mar', 13, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-25' AS Date), 2025, 1, 3, N'March', N'Mar', 13, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-26' AS Date), 2025, 1, 3, N'March', N'Mar', 13, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-27' AS Date), 2025, 1, 3, N'March', N'Mar', 13, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-28' AS Date), 2025, 1, 3, N'March', N'Mar', 13, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-29' AS Date), 2025, 1, 3, N'March', N'Mar', 13, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-30' AS Date), 2025, 1, 3, N'March', N'Mar', 14, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-03-31' AS Date), 2025, 1, 3, N'March', N'Mar', 14, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-01' AS Date), 2025, 2, 4, N'April', N'Apr', 14, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-02' AS Date), 2025, 2, 4, N'April', N'Apr', 14, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-03' AS Date), 2025, 2, 4, N'April', N'Apr', 14, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-04' AS Date), 2025, 2, 4, N'April', N'Apr', 14, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-05' AS Date), 2025, 2, 4, N'April', N'Apr', 14, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-06' AS Date), 2025, 2, 4, N'April', N'Apr', 15, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-07' AS Date), 2025, 2, 4, N'April', N'Apr', 15, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-08' AS Date), 2025, 2, 4, N'April', N'Apr', 15, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-09' AS Date), 2025, 2, 4, N'April', N'Apr', 15, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-10' AS Date), 2025, 2, 4, N'April', N'Apr', 15, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-11' AS Date), 2025, 2, 4, N'April', N'Apr', 15, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-12' AS Date), 2025, 2, 4, N'April', N'Apr', 15, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-13' AS Date), 2025, 2, 4, N'April', N'Apr', 16, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-14' AS Date), 2025, 2, 4, N'April', N'Apr', 16, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-15' AS Date), 2025, 2, 4, N'April', N'Apr', 16, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-16' AS Date), 2025, 2, 4, N'April', N'Apr', 16, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-17' AS Date), 2025, 2, 4, N'April', N'Apr', 16, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-18' AS Date), 2025, 2, 4, N'April', N'Apr', 16, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-19' AS Date), 2025, 2, 4, N'April', N'Apr', 16, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-20' AS Date), 2025, 2, 4, N'April', N'Apr', 17, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-21' AS Date), 2025, 2, 4, N'April', N'Apr', 17, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-22' AS Date), 2025, 2, 4, N'April', N'Apr', 17, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-23' AS Date), 2025, 2, 4, N'April', N'Apr', 17, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-24' AS Date), 2025, 2, 4, N'April', N'Apr', 17, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-25' AS Date), 2025, 2, 4, N'April', N'Apr', 17, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-26' AS Date), 2025, 2, 4, N'April', N'Apr', 17, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-27' AS Date), 2025, 2, 4, N'April', N'Apr', 18, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-28' AS Date), 2025, 2, 4, N'April', N'Apr', 18, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-29' AS Date), 2025, 2, 4, N'April', N'Apr', 18, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-04-30' AS Date), 2025, 2, 4, N'April', N'Apr', 18, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-01' AS Date), 2025, 2, 5, N'May', N'May', 18, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-02' AS Date), 2025, 2, 5, N'May', N'May', 18, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-03' AS Date), 2025, 2, 5, N'May', N'May', 18, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-04' AS Date), 2025, 2, 5, N'May', N'May', 19, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-05' AS Date), 2025, 2, 5, N'May', N'May', 19, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-06' AS Date), 2025, 2, 5, N'May', N'May', 19, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-07' AS Date), 2025, 2, 5, N'May', N'May', 19, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-08' AS Date), 2025, 2, 5, N'May', N'May', 19, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-09' AS Date), 2025, 2, 5, N'May', N'May', 19, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-10' AS Date), 2025, 2, 5, N'May', N'May', 19, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-11' AS Date), 2025, 2, 5, N'May', N'May', 20, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-12' AS Date), 2025, 2, 5, N'May', N'May', 20, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-13' AS Date), 2025, 2, 5, N'May', N'May', 20, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-14' AS Date), 2025, 2, 5, N'May', N'May', 20, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-15' AS Date), 2025, 2, 5, N'May', N'May', 20, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-16' AS Date), 2025, 2, 5, N'May', N'May', 20, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-17' AS Date), 2025, 2, 5, N'May', N'May', 20, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-18' AS Date), 2025, 2, 5, N'May', N'May', 21, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-19' AS Date), 2025, 2, 5, N'May', N'May', 21, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-20' AS Date), 2025, 2, 5, N'May', N'May', 21, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-21' AS Date), 2025, 2, 5, N'May', N'May', 21, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-22' AS Date), 2025, 2, 5, N'May', N'May', 21, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-23' AS Date), 2025, 2, 5, N'May', N'May', 21, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-24' AS Date), 2025, 2, 5, N'May', N'May', 21, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-25' AS Date), 2025, 2, 5, N'May', N'May', 22, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-26' AS Date), 2025, 2, 5, N'May', N'May', 22, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-27' AS Date), 2025, 2, 5, N'May', N'May', 22, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-28' AS Date), 2025, 2, 5, N'May', N'May', 22, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-29' AS Date), 2025, 2, 5, N'May', N'May', 22, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-30' AS Date), 2025, 2, 5, N'May', N'May', 22, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-05-31' AS Date), 2025, 2, 5, N'May', N'May', 22, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-01' AS Date), 2025, 2, 6, N'June', N'Jun', 23, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-02' AS Date), 2025, 2, 6, N'June', N'Jun', 23, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-03' AS Date), 2025, 2, 6, N'June', N'Jun', 23, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-04' AS Date), 2025, 2, 6, N'June', N'Jun', 23, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-05' AS Date), 2025, 2, 6, N'June', N'Jun', 23, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-06' AS Date), 2025, 2, 6, N'June', N'Jun', 23, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-07' AS Date), 2025, 2, 6, N'June', N'Jun', 23, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-08' AS Date), 2025, 2, 6, N'June', N'Jun', 24, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-09' AS Date), 2025, 2, 6, N'June', N'Jun', 24, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-10' AS Date), 2025, 2, 6, N'June', N'Jun', 24, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-11' AS Date), 2025, 2, 6, N'June', N'Jun', 24, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-12' AS Date), 2025, 2, 6, N'June', N'Jun', 24, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-13' AS Date), 2025, 2, 6, N'June', N'Jun', 24, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-14' AS Date), 2025, 2, 6, N'June', N'Jun', 24, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-15' AS Date), 2025, 2, 6, N'June', N'Jun', 25, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-16' AS Date), 2025, 2, 6, N'June', N'Jun', 25, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-17' AS Date), 2025, 2, 6, N'June', N'Jun', 25, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-18' AS Date), 2025, 2, 6, N'June', N'Jun', 25, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-19' AS Date), 2025, 2, 6, N'June', N'Jun', 25, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-20' AS Date), 2025, 2, 6, N'June', N'Jun', 25, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-21' AS Date), 2025, 2, 6, N'June', N'Jun', 25, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-22' AS Date), 2025, 2, 6, N'June', N'Jun', 26, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-23' AS Date), 2025, 2, 6, N'June', N'Jun', 26, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-24' AS Date), 2025, 2, 6, N'June', N'Jun', 26, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-25' AS Date), 2025, 2, 6, N'June', N'Jun', 26, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-26' AS Date), 2025, 2, 6, N'June', N'Jun', 26, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-27' AS Date), 2025, 2, 6, N'June', N'Jun', 26, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-28' AS Date), 2025, 2, 6, N'June', N'Jun', 26, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-29' AS Date), 2025, 2, 6, N'June', N'Jun', 27, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-06-30' AS Date), 2025, 2, 6, N'June', N'Jun', 27, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-01' AS Date), 2025, 3, 7, N'July', N'Jul', 27, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-02' AS Date), 2025, 3, 7, N'July', N'Jul', 27, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-03' AS Date), 2025, 3, 7, N'July', N'Jul', 27, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-04' AS Date), 2025, 3, 7, N'July', N'Jul', 27, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-05' AS Date), 2025, 3, 7, N'July', N'Jul', 27, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-06' AS Date), 2025, 3, 7, N'July', N'Jul', 28, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-07' AS Date), 2025, 3, 7, N'July', N'Jul', 28, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-08' AS Date), 2025, 3, 7, N'July', N'Jul', 28, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-09' AS Date), 2025, 3, 7, N'July', N'Jul', 28, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-10' AS Date), 2025, 3, 7, N'July', N'Jul', 28, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-11' AS Date), 2025, 3, 7, N'July', N'Jul', 28, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-12' AS Date), 2025, 3, 7, N'July', N'Jul', 28, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-13' AS Date), 2025, 3, 7, N'July', N'Jul', 29, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-14' AS Date), 2025, 3, 7, N'July', N'Jul', 29, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-15' AS Date), 2025, 3, 7, N'July', N'Jul', 29, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-16' AS Date), 2025, 3, 7, N'July', N'Jul', 29, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-17' AS Date), 2025, 3, 7, N'July', N'Jul', 29, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-18' AS Date), 2025, 3, 7, N'July', N'Jul', 29, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-19' AS Date), 2025, 3, 7, N'July', N'Jul', 29, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-20' AS Date), 2025, 3, 7, N'July', N'Jul', 30, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-21' AS Date), 2025, 3, 7, N'July', N'Jul', 30, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-22' AS Date), 2025, 3, 7, N'July', N'Jul', 30, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-23' AS Date), 2025, 3, 7, N'July', N'Jul', 30, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-24' AS Date), 2025, 3, 7, N'July', N'Jul', 30, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-25' AS Date), 2025, 3, 7, N'July', N'Jul', 30, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-26' AS Date), 2025, 3, 7, N'July', N'Jul', 30, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-27' AS Date), 2025, 3, 7, N'July', N'Jul', 31, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-28' AS Date), 2025, 3, 7, N'July', N'Jul', 31, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-29' AS Date), 2025, 3, 7, N'July', N'Jul', 31, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-30' AS Date), 2025, 3, 7, N'July', N'Jul', 31, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-07-31' AS Date), 2025, 3, 7, N'July', N'Jul', 31, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-01' AS Date), 2025, 3, 8, N'August', N'Aug', 31, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-02' AS Date), 2025, 3, 8, N'August', N'Aug', 31, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-03' AS Date), 2025, 3, 8, N'August', N'Aug', 32, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-04' AS Date), 2025, 3, 8, N'August', N'Aug', 32, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-05' AS Date), 2025, 3, 8, N'August', N'Aug', 32, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-06' AS Date), 2025, 3, 8, N'August', N'Aug', 32, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-07' AS Date), 2025, 3, 8, N'August', N'Aug', 32, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-08' AS Date), 2025, 3, 8, N'August', N'Aug', 32, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-09' AS Date), 2025, 3, 8, N'August', N'Aug', 32, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-10' AS Date), 2025, 3, 8, N'August', N'Aug', 33, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-11' AS Date), 2025, 3, 8, N'August', N'Aug', 33, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-12' AS Date), 2025, 3, 8, N'August', N'Aug', 33, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-13' AS Date), 2025, 3, 8, N'August', N'Aug', 33, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-14' AS Date), 2025, 3, 8, N'August', N'Aug', 33, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-15' AS Date), 2025, 3, 8, N'August', N'Aug', 33, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-16' AS Date), 2025, 3, 8, N'August', N'Aug', 33, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-17' AS Date), 2025, 3, 8, N'August', N'Aug', 34, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-18' AS Date), 2025, 3, 8, N'August', N'Aug', 34, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-19' AS Date), 2025, 3, 8, N'August', N'Aug', 34, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-20' AS Date), 2025, 3, 8, N'August', N'Aug', 34, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-21' AS Date), 2025, 3, 8, N'August', N'Aug', 34, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-22' AS Date), 2025, 3, 8, N'August', N'Aug', 34, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-23' AS Date), 2025, 3, 8, N'August', N'Aug', 34, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-24' AS Date), 2025, 3, 8, N'August', N'Aug', 35, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-25' AS Date), 2025, 3, 8, N'August', N'Aug', 35, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-26' AS Date), 2025, 3, 8, N'August', N'Aug', 35, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-27' AS Date), 2025, 3, 8, N'August', N'Aug', 35, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-28' AS Date), 2025, 3, 8, N'August', N'Aug', 35, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-29' AS Date), 2025, 3, 8, N'August', N'Aug', 35, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-30' AS Date), 2025, 3, 8, N'August', N'Aug', 35, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-08-31' AS Date), 2025, 3, 8, N'August', N'Aug', 36, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-01' AS Date), 2025, 3, 9, N'September', N'Sep', 36, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-02' AS Date), 2025, 3, 9, N'September', N'Sep', 36, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-03' AS Date), 2025, 3, 9, N'September', N'Sep', 36, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-04' AS Date), 2025, 3, 9, N'September', N'Sep', 36, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-05' AS Date), 2025, 3, 9, N'September', N'Sep', 36, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-06' AS Date), 2025, 3, 9, N'September', N'Sep', 36, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-07' AS Date), 2025, 3, 9, N'September', N'Sep', 37, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-08' AS Date), 2025, 3, 9, N'September', N'Sep', 37, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-09' AS Date), 2025, 3, 9, N'September', N'Sep', 37, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-10' AS Date), 2025, 3, 9, N'September', N'Sep', 37, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-11' AS Date), 2025, 3, 9, N'September', N'Sep', 37, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-12' AS Date), 2025, 3, 9, N'September', N'Sep', 37, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-13' AS Date), 2025, 3, 9, N'September', N'Sep', 37, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-14' AS Date), 2025, 3, 9, N'September', N'Sep', 38, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-15' AS Date), 2025, 3, 9, N'September', N'Sep', 38, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-16' AS Date), 2025, 3, 9, N'September', N'Sep', 38, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-17' AS Date), 2025, 3, 9, N'September', N'Sep', 38, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-18' AS Date), 2025, 3, 9, N'September', N'Sep', 38, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-19' AS Date), 2025, 3, 9, N'September', N'Sep', 38, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-20' AS Date), 2025, 3, 9, N'September', N'Sep', 38, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-21' AS Date), 2025, 3, 9, N'September', N'Sep', 39, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-22' AS Date), 2025, 3, 9, N'September', N'Sep', 39, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-23' AS Date), 2025, 3, 9, N'September', N'Sep', 39, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-24' AS Date), 2025, 3, 9, N'September', N'Sep', 39, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-25' AS Date), 2025, 3, 9, N'September', N'Sep', 39, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-26' AS Date), 2025, 3, 9, N'September', N'Sep', 39, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-27' AS Date), 2025, 3, 9, N'September', N'Sep', 39, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-28' AS Date), 2025, 3, 9, N'September', N'Sep', 40, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-29' AS Date), 2025, 3, 9, N'September', N'Sep', 40, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-09-30' AS Date), 2025, 3, 9, N'September', N'Sep', 40, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-01' AS Date), 2025, 4, 10, N'October', N'Oct', 40, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-02' AS Date), 2025, 4, 10, N'October', N'Oct', 40, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-03' AS Date), 2025, 4, 10, N'October', N'Oct', 40, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-04' AS Date), 2025, 4, 10, N'October', N'Oct', 40, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-05' AS Date), 2025, 4, 10, N'October', N'Oct', 41, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-06' AS Date), 2025, 4, 10, N'October', N'Oct', 41, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-07' AS Date), 2025, 4, 10, N'October', N'Oct', 41, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-08' AS Date), 2025, 4, 10, N'October', N'Oct', 41, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-09' AS Date), 2025, 4, 10, N'October', N'Oct', 41, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-10' AS Date), 2025, 4, 10, N'October', N'Oct', 41, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-11' AS Date), 2025, 4, 10, N'October', N'Oct', 41, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-12' AS Date), 2025, 4, 10, N'October', N'Oct', 42, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-13' AS Date), 2025, 4, 10, N'October', N'Oct', 42, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-14' AS Date), 2025, 4, 10, N'October', N'Oct', 42, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-15' AS Date), 2025, 4, 10, N'October', N'Oct', 42, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-16' AS Date), 2025, 4, 10, N'October', N'Oct', 42, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-17' AS Date), 2025, 4, 10, N'October', N'Oct', 42, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-18' AS Date), 2025, 4, 10, N'October', N'Oct', 42, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-19' AS Date), 2025, 4, 10, N'October', N'Oct', 43, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-20' AS Date), 2025, 4, 10, N'October', N'Oct', 43, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-21' AS Date), 2025, 4, 10, N'October', N'Oct', 43, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-22' AS Date), 2025, 4, 10, N'October', N'Oct', 43, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-23' AS Date), 2025, 4, 10, N'October', N'Oct', 43, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-24' AS Date), 2025, 4, 10, N'October', N'Oct', 43, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-25' AS Date), 2025, 4, 10, N'October', N'Oct', 43, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-26' AS Date), 2025, 4, 10, N'October', N'Oct', 44, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-27' AS Date), 2025, 4, 10, N'October', N'Oct', 44, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-28' AS Date), 2025, 4, 10, N'October', N'Oct', 44, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-29' AS Date), 2025, 4, 10, N'October', N'Oct', 44, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-30' AS Date), 2025, 4, 10, N'October', N'Oct', 44, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-10-31' AS Date), 2025, 4, 10, N'October', N'Oct', 44, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-01' AS Date), 2025, 4, 11, N'November', N'Nov', 44, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-02' AS Date), 2025, 4, 11, N'November', N'Nov', 45, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-03' AS Date), 2025, 4, 11, N'November', N'Nov', 45, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-04' AS Date), 2025, 4, 11, N'November', N'Nov', 45, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-05' AS Date), 2025, 4, 11, N'November', N'Nov', 45, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-06' AS Date), 2025, 4, 11, N'November', N'Nov', 45, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-07' AS Date), 2025, 4, 11, N'November', N'Nov', 45, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-08' AS Date), 2025, 4, 11, N'November', N'Nov', 45, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-09' AS Date), 2025, 4, 11, N'November', N'Nov', 46, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-10' AS Date), 2025, 4, 11, N'November', N'Nov', 46, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-11' AS Date), 2025, 4, 11, N'November', N'Nov', 46, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-12' AS Date), 2025, 4, 11, N'November', N'Nov', 46, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-13' AS Date), 2025, 4, 11, N'November', N'Nov', 46, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-14' AS Date), 2025, 4, 11, N'November', N'Nov', 46, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-15' AS Date), 2025, 4, 11, N'November', N'Nov', 46, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-16' AS Date), 2025, 4, 11, N'November', N'Nov', 47, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-17' AS Date), 2025, 4, 11, N'November', N'Nov', 47, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-18' AS Date), 2025, 4, 11, N'November', N'Nov', 47, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-19' AS Date), 2025, 4, 11, N'November', N'Nov', 47, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-20' AS Date), 2025, 4, 11, N'November', N'Nov', 47, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-21' AS Date), 2025, 4, 11, N'November', N'Nov', 47, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-22' AS Date), 2025, 4, 11, N'November', N'Nov', 47, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-23' AS Date), 2025, 4, 11, N'November', N'Nov', 48, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-24' AS Date), 2025, 4, 11, N'November', N'Nov', 48, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-25' AS Date), 2025, 4, 11, N'November', N'Nov', 48, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-26' AS Date), 2025, 4, 11, N'November', N'Nov', 48, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-27' AS Date), 2025, 4, 11, N'November', N'Nov', 48, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-28' AS Date), 2025, 4, 11, N'November', N'Nov', 48, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-29' AS Date), 2025, 4, 11, N'November', N'Nov', 48, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-11-30' AS Date), 2025, 4, 11, N'November', N'Nov', 49, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-01' AS Date), 2025, 4, 12, N'December', N'Dec', 49, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-02' AS Date), 2025, 4, 12, N'December', N'Dec', 49, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-03' AS Date), 2025, 4, 12, N'December', N'Dec', 49, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-04' AS Date), 2025, 4, 12, N'December', N'Dec', 49, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-05' AS Date), 2025, 4, 12, N'December', N'Dec', 49, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-06' AS Date), 2025, 4, 12, N'December', N'Dec', 49, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-07' AS Date), 2025, 4, 12, N'December', N'Dec', 50, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-08' AS Date), 2025, 4, 12, N'December', N'Dec', 50, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-09' AS Date), 2025, 4, 12, N'December', N'Dec', 50, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-10' AS Date), 2025, 4, 12, N'December', N'Dec', 50, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-11' AS Date), 2025, 4, 12, N'December', N'Dec', 50, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-12' AS Date), 2025, 4, 12, N'December', N'Dec', 50, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-13' AS Date), 2025, 4, 12, N'December', N'Dec', 50, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-14' AS Date), 2025, 4, 12, N'December', N'Dec', 51, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-15' AS Date), 2025, 4, 12, N'December', N'Dec', 51, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-16' AS Date), 2025, 4, 12, N'December', N'Dec', 51, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-17' AS Date), 2025, 4, 12, N'December', N'Dec', 51, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-18' AS Date), 2025, 4, 12, N'December', N'Dec', 51, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-19' AS Date), 2025, 4, 12, N'December', N'Dec', 51, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-20' AS Date), 2025, 4, 12, N'December', N'Dec', 51, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-21' AS Date), 2025, 4, 12, N'December', N'Dec', 52, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-22' AS Date), 2025, 4, 12, N'December', N'Dec', 52, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-23' AS Date), 2025, 4, 12, N'December', N'Dec', 52, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-24' AS Date), 2025, 4, 12, N'December', N'Dec', 52, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-25' AS Date), 2025, 4, 12, N'December', N'Dec', 52, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-26' AS Date), 2025, 4, 12, N'December', N'Dec', 52, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-27' AS Date), 2025, 4, 12, N'December', N'Dec', 52, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-28' AS Date), 2025, 4, 12, N'December', N'Dec', 53, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-29' AS Date), 2025, 4, 12, N'December', N'Dec', 53, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-30' AS Date), 2025, 4, 12, N'December', N'Dec', 53, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2025-12-31' AS Date), 2025, 4, 12, N'December', N'Dec', 53, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-01' AS Date), 2026, 1, 1, N'January', N'Jan', 1, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-02' AS Date), 2026, 1, 1, N'January', N'Jan', 1, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-03' AS Date), 2026, 1, 1, N'January', N'Jan', 1, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-04' AS Date), 2026, 1, 1, N'January', N'Jan', 2, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-05' AS Date), 2026, 1, 1, N'January', N'Jan', 2, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-06' AS Date), 2026, 1, 1, N'January', N'Jan', 2, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-07' AS Date), 2026, 1, 1, N'January', N'Jan', 2, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-08' AS Date), 2026, 1, 1, N'January', N'Jan', 2, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-09' AS Date), 2026, 1, 1, N'January', N'Jan', 2, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-10' AS Date), 2026, 1, 1, N'January', N'Jan', 2, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-11' AS Date), 2026, 1, 1, N'January', N'Jan', 3, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-12' AS Date), 2026, 1, 1, N'January', N'Jan', 3, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-13' AS Date), 2026, 1, 1, N'January', N'Jan', 3, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-14' AS Date), 2026, 1, 1, N'January', N'Jan', 3, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-15' AS Date), 2026, 1, 1, N'January', N'Jan', 3, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-16' AS Date), 2026, 1, 1, N'January', N'Jan', 3, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-17' AS Date), 2026, 1, 1, N'January', N'Jan', 3, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-18' AS Date), 2026, 1, 1, N'January', N'Jan', 4, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-19' AS Date), 2026, 1, 1, N'January', N'Jan', 4, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-20' AS Date), 2026, 1, 1, N'January', N'Jan', 4, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-21' AS Date), 2026, 1, 1, N'January', N'Jan', 4, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-22' AS Date), 2026, 1, 1, N'January', N'Jan', 4, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-23' AS Date), 2026, 1, 1, N'January', N'Jan', 4, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-24' AS Date), 2026, 1, 1, N'January', N'Jan', 4, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-25' AS Date), 2026, 1, 1, N'January', N'Jan', 5, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-26' AS Date), 2026, 1, 1, N'January', N'Jan', 5, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-27' AS Date), 2026, 1, 1, N'January', N'Jan', 5, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-28' AS Date), 2026, 1, 1, N'January', N'Jan', 5, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-29' AS Date), 2026, 1, 1, N'January', N'Jan', 5, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-30' AS Date), 2026, 1, 1, N'January', N'Jan', 5, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-01-31' AS Date), 2026, 1, 1, N'January', N'Jan', 5, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-01' AS Date), 2026, 1, 2, N'February', N'Feb', 6, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-02' AS Date), 2026, 1, 2, N'February', N'Feb', 6, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-03' AS Date), 2026, 1, 2, N'February', N'Feb', 6, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-04' AS Date), 2026, 1, 2, N'February', N'Feb', 6, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-05' AS Date), 2026, 1, 2, N'February', N'Feb', 6, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-06' AS Date), 2026, 1, 2, N'February', N'Feb', 6, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-07' AS Date), 2026, 1, 2, N'February', N'Feb', 6, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-08' AS Date), 2026, 1, 2, N'February', N'Feb', 7, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-09' AS Date), 2026, 1, 2, N'February', N'Feb', 7, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-10' AS Date), 2026, 1, 2, N'February', N'Feb', 7, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-11' AS Date), 2026, 1, 2, N'February', N'Feb', 7, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-12' AS Date), 2026, 1, 2, N'February', N'Feb', 7, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-13' AS Date), 2026, 1, 2, N'February', N'Feb', 7, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-14' AS Date), 2026, 1, 2, N'February', N'Feb', 7, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-15' AS Date), 2026, 1, 2, N'February', N'Feb', 8, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-16' AS Date), 2026, 1, 2, N'February', N'Feb', 8, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-17' AS Date), 2026, 1, 2, N'February', N'Feb', 8, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-18' AS Date), 2026, 1, 2, N'February', N'Feb', 8, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-19' AS Date), 2026, 1, 2, N'February', N'Feb', 8, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-20' AS Date), 2026, 1, 2, N'February', N'Feb', 8, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-21' AS Date), 2026, 1, 2, N'February', N'Feb', 8, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-22' AS Date), 2026, 1, 2, N'February', N'Feb', 9, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-23' AS Date), 2026, 1, 2, N'February', N'Feb', 9, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-24' AS Date), 2026, 1, 2, N'February', N'Feb', 9, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-25' AS Date), 2026, 1, 2, N'February', N'Feb', 9, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-26' AS Date), 2026, 1, 2, N'February', N'Feb', 9, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-27' AS Date), 2026, 1, 2, N'February', N'Feb', 9, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-02-28' AS Date), 2026, 1, 2, N'February', N'Feb', 9, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-01' AS Date), 2026, 1, 3, N'March', N'Mar', 10, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-02' AS Date), 2026, 1, 3, N'March', N'Mar', 10, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-03' AS Date), 2026, 1, 3, N'March', N'Mar', 10, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-04' AS Date), 2026, 1, 3, N'March', N'Mar', 10, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-05' AS Date), 2026, 1, 3, N'March', N'Mar', 10, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-06' AS Date), 2026, 1, 3, N'March', N'Mar', 10, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-07' AS Date), 2026, 1, 3, N'March', N'Mar', 10, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-08' AS Date), 2026, 1, 3, N'March', N'Mar', 11, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-09' AS Date), 2026, 1, 3, N'March', N'Mar', 11, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-10' AS Date), 2026, 1, 3, N'March', N'Mar', 11, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-11' AS Date), 2026, 1, 3, N'March', N'Mar', 11, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-12' AS Date), 2026, 1, 3, N'March', N'Mar', 11, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-13' AS Date), 2026, 1, 3, N'March', N'Mar', 11, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-14' AS Date), 2026, 1, 3, N'March', N'Mar', 11, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-15' AS Date), 2026, 1, 3, N'March', N'Mar', 12, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-16' AS Date), 2026, 1, 3, N'March', N'Mar', 12, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-17' AS Date), 2026, 1, 3, N'March', N'Mar', 12, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-18' AS Date), 2026, 1, 3, N'March', N'Mar', 12, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-19' AS Date), 2026, 1, 3, N'March', N'Mar', 12, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-20' AS Date), 2026, 1, 3, N'March', N'Mar', 12, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-21' AS Date), 2026, 1, 3, N'March', N'Mar', 12, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-22' AS Date), 2026, 1, 3, N'March', N'Mar', 13, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-23' AS Date), 2026, 1, 3, N'March', N'Mar', 13, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-24' AS Date), 2026, 1, 3, N'March', N'Mar', 13, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-25' AS Date), 2026, 1, 3, N'March', N'Mar', 13, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-26' AS Date), 2026, 1, 3, N'March', N'Mar', 13, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-27' AS Date), 2026, 1, 3, N'March', N'Mar', 13, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-28' AS Date), 2026, 1, 3, N'March', N'Mar', 13, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-29' AS Date), 2026, 1, 3, N'March', N'Mar', 14, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-30' AS Date), 2026, 1, 3, N'March', N'Mar', 14, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-03-31' AS Date), 2026, 1, 3, N'March', N'Mar', 14, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-01' AS Date), 2026, 2, 4, N'April', N'Apr', 14, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-02' AS Date), 2026, 2, 4, N'April', N'Apr', 14, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-03' AS Date), 2026, 2, 4, N'April', N'Apr', 14, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-04' AS Date), 2026, 2, 4, N'April', N'Apr', 14, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-05' AS Date), 2026, 2, 4, N'April', N'Apr', 15, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-06' AS Date), 2026, 2, 4, N'April', N'Apr', 15, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-07' AS Date), 2026, 2, 4, N'April', N'Apr', 15, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-08' AS Date), 2026, 2, 4, N'April', N'Apr', 15, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-09' AS Date), 2026, 2, 4, N'April', N'Apr', 15, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-10' AS Date), 2026, 2, 4, N'April', N'Apr', 15, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-11' AS Date), 2026, 2, 4, N'April', N'Apr', 15, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-12' AS Date), 2026, 2, 4, N'April', N'Apr', 16, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-13' AS Date), 2026, 2, 4, N'April', N'Apr', 16, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-14' AS Date), 2026, 2, 4, N'April', N'Apr', 16, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-15' AS Date), 2026, 2, 4, N'April', N'Apr', 16, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-16' AS Date), 2026, 2, 4, N'April', N'Apr', 16, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-17' AS Date), 2026, 2, 4, N'April', N'Apr', 16, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-18' AS Date), 2026, 2, 4, N'April', N'Apr', 16, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-19' AS Date), 2026, 2, 4, N'April', N'Apr', 17, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-20' AS Date), 2026, 2, 4, N'April', N'Apr', 17, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-21' AS Date), 2026, 2, 4, N'April', N'Apr', 17, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-22' AS Date), 2026, 2, 4, N'April', N'Apr', 17, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-23' AS Date), 2026, 2, 4, N'April', N'Apr', 17, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-24' AS Date), 2026, 2, 4, N'April', N'Apr', 17, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-25' AS Date), 2026, 2, 4, N'April', N'Apr', 17, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-26' AS Date), 2026, 2, 4, N'April', N'Apr', 18, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-27' AS Date), 2026, 2, 4, N'April', N'Apr', 18, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-28' AS Date), 2026, 2, 4, N'April', N'Apr', 18, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-29' AS Date), 2026, 2, 4, N'April', N'Apr', 18, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-04-30' AS Date), 2026, 2, 4, N'April', N'Apr', 18, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-01' AS Date), 2026, 2, 5, N'May', N'May', 18, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-02' AS Date), 2026, 2, 5, N'May', N'May', 18, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-03' AS Date), 2026, 2, 5, N'May', N'May', 19, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-04' AS Date), 2026, 2, 5, N'May', N'May', 19, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-05' AS Date), 2026, 2, 5, N'May', N'May', 19, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-06' AS Date), 2026, 2, 5, N'May', N'May', 19, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-07' AS Date), 2026, 2, 5, N'May', N'May', 19, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-08' AS Date), 2026, 2, 5, N'May', N'May', 19, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-09' AS Date), 2026, 2, 5, N'May', N'May', 19, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-10' AS Date), 2026, 2, 5, N'May', N'May', 20, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-11' AS Date), 2026, 2, 5, N'May', N'May', 20, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-12' AS Date), 2026, 2, 5, N'May', N'May', 20, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-13' AS Date), 2026, 2, 5, N'May', N'May', 20, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-14' AS Date), 2026, 2, 5, N'May', N'May', 20, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-15' AS Date), 2026, 2, 5, N'May', N'May', 20, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-16' AS Date), 2026, 2, 5, N'May', N'May', 20, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-17' AS Date), 2026, 2, 5, N'May', N'May', 21, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-18' AS Date), 2026, 2, 5, N'May', N'May', 21, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-19' AS Date), 2026, 2, 5, N'May', N'May', 21, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-20' AS Date), 2026, 2, 5, N'May', N'May', 21, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-21' AS Date), 2026, 2, 5, N'May', N'May', 21, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-22' AS Date), 2026, 2, 5, N'May', N'May', 21, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-23' AS Date), 2026, 2, 5, N'May', N'May', 21, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-24' AS Date), 2026, 2, 5, N'May', N'May', 22, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-25' AS Date), 2026, 2, 5, N'May', N'May', 22, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-26' AS Date), 2026, 2, 5, N'May', N'May', 22, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-27' AS Date), 2026, 2, 5, N'May', N'May', 22, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-28' AS Date), 2026, 2, 5, N'May', N'May', 22, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-29' AS Date), 2026, 2, 5, N'May', N'May', 22, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-30' AS Date), 2026, 2, 5, N'May', N'May', 22, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-05-31' AS Date), 2026, 2, 5, N'May', N'May', 23, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-01' AS Date), 2026, 2, 6, N'June', N'Jun', 23, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-02' AS Date), 2026, 2, 6, N'June', N'Jun', 23, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-03' AS Date), 2026, 2, 6, N'June', N'Jun', 23, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-04' AS Date), 2026, 2, 6, N'June', N'Jun', 23, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-05' AS Date), 2026, 2, 6, N'June', N'Jun', 23, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-06' AS Date), 2026, 2, 6, N'June', N'Jun', 23, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-07' AS Date), 2026, 2, 6, N'June', N'Jun', 24, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-08' AS Date), 2026, 2, 6, N'June', N'Jun', 24, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-09' AS Date), 2026, 2, 6, N'June', N'Jun', 24, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-10' AS Date), 2026, 2, 6, N'June', N'Jun', 24, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-11' AS Date), 2026, 2, 6, N'June', N'Jun', 24, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-12' AS Date), 2026, 2, 6, N'June', N'Jun', 24, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-13' AS Date), 2026, 2, 6, N'June', N'Jun', 24, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-14' AS Date), 2026, 2, 6, N'June', N'Jun', 25, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-15' AS Date), 2026, 2, 6, N'June', N'Jun', 25, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-16' AS Date), 2026, 2, 6, N'June', N'Jun', 25, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-17' AS Date), 2026, 2, 6, N'June', N'Jun', 25, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-18' AS Date), 2026, 2, 6, N'June', N'Jun', 25, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-19' AS Date), 2026, 2, 6, N'June', N'Jun', 25, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-20' AS Date), 2026, 2, 6, N'June', N'Jun', 25, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-21' AS Date), 2026, 2, 6, N'June', N'Jun', 26, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-22' AS Date), 2026, 2, 6, N'June', N'Jun', 26, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-23' AS Date), 2026, 2, 6, N'June', N'Jun', 26, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-24' AS Date), 2026, 2, 6, N'June', N'Jun', 26, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-25' AS Date), 2026, 2, 6, N'June', N'Jun', 26, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-26' AS Date), 2026, 2, 6, N'June', N'Jun', 26, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-27' AS Date), 2026, 2, 6, N'June', N'Jun', 26, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-28' AS Date), 2026, 2, 6, N'June', N'Jun', 27, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-29' AS Date), 2026, 2, 6, N'June', N'Jun', 27, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-06-30' AS Date), 2026, 2, 6, N'June', N'Jun', 27, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-01' AS Date), 2026, 3, 7, N'July', N'Jul', 27, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-02' AS Date), 2026, 3, 7, N'July', N'Jul', 27, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-03' AS Date), 2026, 3, 7, N'July', N'Jul', 27, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-04' AS Date), 2026, 3, 7, N'July', N'Jul', 27, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-05' AS Date), 2026, 3, 7, N'July', N'Jul', 28, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-06' AS Date), 2026, 3, 7, N'July', N'Jul', 28, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-07' AS Date), 2026, 3, 7, N'July', N'Jul', 28, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-08' AS Date), 2026, 3, 7, N'July', N'Jul', 28, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-09' AS Date), 2026, 3, 7, N'July', N'Jul', 28, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-10' AS Date), 2026, 3, 7, N'July', N'Jul', 28, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-11' AS Date), 2026, 3, 7, N'July', N'Jul', 28, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-12' AS Date), 2026, 3, 7, N'July', N'Jul', 29, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-13' AS Date), 2026, 3, 7, N'July', N'Jul', 29, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-14' AS Date), 2026, 3, 7, N'July', N'Jul', 29, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-15' AS Date), 2026, 3, 7, N'July', N'Jul', 29, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-16' AS Date), 2026, 3, 7, N'July', N'Jul', 29, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-17' AS Date), 2026, 3, 7, N'July', N'Jul', 29, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-18' AS Date), 2026, 3, 7, N'July', N'Jul', 29, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-19' AS Date), 2026, 3, 7, N'July', N'Jul', 30, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-20' AS Date), 2026, 3, 7, N'July', N'Jul', 30, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-21' AS Date), 2026, 3, 7, N'July', N'Jul', 30, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-22' AS Date), 2026, 3, 7, N'July', N'Jul', 30, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-23' AS Date), 2026, 3, 7, N'July', N'Jul', 30, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-24' AS Date), 2026, 3, 7, N'July', N'Jul', 30, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-25' AS Date), 2026, 3, 7, N'July', N'Jul', 30, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-26' AS Date), 2026, 3, 7, N'July', N'Jul', 31, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-27' AS Date), 2026, 3, 7, N'July', N'Jul', 31, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-28' AS Date), 2026, 3, 7, N'July', N'Jul', 31, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-29' AS Date), 2026, 3, 7, N'July', N'Jul', 31, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-30' AS Date), 2026, 3, 7, N'July', N'Jul', 31, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-07-31' AS Date), 2026, 3, 7, N'July', N'Jul', 31, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-01' AS Date), 2026, 3, 8, N'August', N'Aug', 31, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-02' AS Date), 2026, 3, 8, N'August', N'Aug', 32, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-03' AS Date), 2026, 3, 8, N'August', N'Aug', 32, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-04' AS Date), 2026, 3, 8, N'August', N'Aug', 32, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-05' AS Date), 2026, 3, 8, N'August', N'Aug', 32, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-06' AS Date), 2026, 3, 8, N'August', N'Aug', 32, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-07' AS Date), 2026, 3, 8, N'August', N'Aug', 32, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-08' AS Date), 2026, 3, 8, N'August', N'Aug', 32, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-09' AS Date), 2026, 3, 8, N'August', N'Aug', 33, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-10' AS Date), 2026, 3, 8, N'August', N'Aug', 33, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-11' AS Date), 2026, 3, 8, N'August', N'Aug', 33, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-12' AS Date), 2026, 3, 8, N'August', N'Aug', 33, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-13' AS Date), 2026, 3, 8, N'August', N'Aug', 33, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-14' AS Date), 2026, 3, 8, N'August', N'Aug', 33, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-15' AS Date), 2026, 3, 8, N'August', N'Aug', 33, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-16' AS Date), 2026, 3, 8, N'August', N'Aug', 34, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-17' AS Date), 2026, 3, 8, N'August', N'Aug', 34, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-18' AS Date), 2026, 3, 8, N'August', N'Aug', 34, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-19' AS Date), 2026, 3, 8, N'August', N'Aug', 34, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-20' AS Date), 2026, 3, 8, N'August', N'Aug', 34, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-21' AS Date), 2026, 3, 8, N'August', N'Aug', 34, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-22' AS Date), 2026, 3, 8, N'August', N'Aug', 34, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-23' AS Date), 2026, 3, 8, N'August', N'Aug', 35, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-24' AS Date), 2026, 3, 8, N'August', N'Aug', 35, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-25' AS Date), 2026, 3, 8, N'August', N'Aug', 35, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-26' AS Date), 2026, 3, 8, N'August', N'Aug', 35, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-27' AS Date), 2026, 3, 8, N'August', N'Aug', 35, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-28' AS Date), 2026, 3, 8, N'August', N'Aug', 35, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-29' AS Date), 2026, 3, 8, N'August', N'Aug', 35, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-30' AS Date), 2026, 3, 8, N'August', N'Aug', 36, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-08-31' AS Date), 2026, 3, 8, N'August', N'Aug', 36, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-01' AS Date), 2026, 3, 9, N'September', N'Sep', 36, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-02' AS Date), 2026, 3, 9, N'September', N'Sep', 36, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-03' AS Date), 2026, 3, 9, N'September', N'Sep', 36, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-04' AS Date), 2026, 3, 9, N'September', N'Sep', 36, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-05' AS Date), 2026, 3, 9, N'September', N'Sep', 36, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-06' AS Date), 2026, 3, 9, N'September', N'Sep', 37, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-07' AS Date), 2026, 3, 9, N'September', N'Sep', 37, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-08' AS Date), 2026, 3, 9, N'September', N'Sep', 37, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-09' AS Date), 2026, 3, 9, N'September', N'Sep', 37, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-10' AS Date), 2026, 3, 9, N'September', N'Sep', 37, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-11' AS Date), 2026, 3, 9, N'September', N'Sep', 37, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-12' AS Date), 2026, 3, 9, N'September', N'Sep', 37, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-13' AS Date), 2026, 3, 9, N'September', N'Sep', 38, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-14' AS Date), 2026, 3, 9, N'September', N'Sep', 38, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-15' AS Date), 2026, 3, 9, N'September', N'Sep', 38, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-16' AS Date), 2026, 3, 9, N'September', N'Sep', 38, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-17' AS Date), 2026, 3, 9, N'September', N'Sep', 38, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-18' AS Date), 2026, 3, 9, N'September', N'Sep', 38, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-19' AS Date), 2026, 3, 9, N'September', N'Sep', 38, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-20' AS Date), 2026, 3, 9, N'September', N'Sep', 39, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-21' AS Date), 2026, 3, 9, N'September', N'Sep', 39, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-22' AS Date), 2026, 3, 9, N'September', N'Sep', 39, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-23' AS Date), 2026, 3, 9, N'September', N'Sep', 39, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-24' AS Date), 2026, 3, 9, N'September', N'Sep', 39, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-25' AS Date), 2026, 3, 9, N'September', N'Sep', 39, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-26' AS Date), 2026, 3, 9, N'September', N'Sep', 39, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-27' AS Date), 2026, 3, 9, N'September', N'Sep', 40, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-28' AS Date), 2026, 3, 9, N'September', N'Sep', 40, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-29' AS Date), 2026, 3, 9, N'September', N'Sep', 40, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-09-30' AS Date), 2026, 3, 9, N'September', N'Sep', 40, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-01' AS Date), 2026, 4, 10, N'October', N'Oct', 40, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-02' AS Date), 2026, 4, 10, N'October', N'Oct', 40, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-03' AS Date), 2026, 4, 10, N'October', N'Oct', 40, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-04' AS Date), 2026, 4, 10, N'October', N'Oct', 41, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-05' AS Date), 2026, 4, 10, N'October', N'Oct', 41, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-06' AS Date), 2026, 4, 10, N'October', N'Oct', 41, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-07' AS Date), 2026, 4, 10, N'October', N'Oct', 41, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-08' AS Date), 2026, 4, 10, N'October', N'Oct', 41, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-09' AS Date), 2026, 4, 10, N'October', N'Oct', 41, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-10' AS Date), 2026, 4, 10, N'October', N'Oct', 41, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-11' AS Date), 2026, 4, 10, N'October', N'Oct', 42, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-12' AS Date), 2026, 4, 10, N'October', N'Oct', 42, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-13' AS Date), 2026, 4, 10, N'October', N'Oct', 42, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-14' AS Date), 2026, 4, 10, N'October', N'Oct', 42, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-15' AS Date), 2026, 4, 10, N'October', N'Oct', 42, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-16' AS Date), 2026, 4, 10, N'October', N'Oct', 42, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-17' AS Date), 2026, 4, 10, N'October', N'Oct', 42, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-18' AS Date), 2026, 4, 10, N'October', N'Oct', 43, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-19' AS Date), 2026, 4, 10, N'October', N'Oct', 43, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-20' AS Date), 2026, 4, 10, N'October', N'Oct', 43, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-21' AS Date), 2026, 4, 10, N'October', N'Oct', 43, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-22' AS Date), 2026, 4, 10, N'October', N'Oct', 43, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-23' AS Date), 2026, 4, 10, N'October', N'Oct', 43, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-24' AS Date), 2026, 4, 10, N'October', N'Oct', 43, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-25' AS Date), 2026, 4, 10, N'October', N'Oct', 44, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-26' AS Date), 2026, 4, 10, N'October', N'Oct', 44, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-27' AS Date), 2026, 4, 10, N'October', N'Oct', 44, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-28' AS Date), 2026, 4, 10, N'October', N'Oct', 44, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-29' AS Date), 2026, 4, 10, N'October', N'Oct', 44, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-30' AS Date), 2026, 4, 10, N'October', N'Oct', 44, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-10-31' AS Date), 2026, 4, 10, N'October', N'Oct', 44, 31)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-01' AS Date), 2026, 4, 11, N'November', N'Nov', 45, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-02' AS Date), 2026, 4, 11, N'November', N'Nov', 45, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-03' AS Date), 2026, 4, 11, N'November', N'Nov', 45, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-04' AS Date), 2026, 4, 11, N'November', N'Nov', 45, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-05' AS Date), 2026, 4, 11, N'November', N'Nov', 45, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-06' AS Date), 2026, 4, 11, N'November', N'Nov', 45, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-07' AS Date), 2026, 4, 11, N'November', N'Nov', 45, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-08' AS Date), 2026, 4, 11, N'November', N'Nov', 46, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-09' AS Date), 2026, 4, 11, N'November', N'Nov', 46, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-10' AS Date), 2026, 4, 11, N'November', N'Nov', 46, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-11' AS Date), 2026, 4, 11, N'November', N'Nov', 46, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-12' AS Date), 2026, 4, 11, N'November', N'Nov', 46, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-13' AS Date), 2026, 4, 11, N'November', N'Nov', 46, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-14' AS Date), 2026, 4, 11, N'November', N'Nov', 46, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-15' AS Date), 2026, 4, 11, N'November', N'Nov', 47, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-16' AS Date), 2026, 4, 11, N'November', N'Nov', 47, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-17' AS Date), 2026, 4, 11, N'November', N'Nov', 47, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-18' AS Date), 2026, 4, 11, N'November', N'Nov', 47, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-19' AS Date), 2026, 4, 11, N'November', N'Nov', 47, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-20' AS Date), 2026, 4, 11, N'November', N'Nov', 47, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-21' AS Date), 2026, 4, 11, N'November', N'Nov', 47, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-22' AS Date), 2026, 4, 11, N'November', N'Nov', 48, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-23' AS Date), 2026, 4, 11, N'November', N'Nov', 48, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-24' AS Date), 2026, 4, 11, N'November', N'Nov', 48, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-25' AS Date), 2026, 4, 11, N'November', N'Nov', 48, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-26' AS Date), 2026, 4, 11, N'November', N'Nov', 48, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-27' AS Date), 2026, 4, 11, N'November', N'Nov', 48, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-28' AS Date), 2026, 4, 11, N'November', N'Nov', 48, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-29' AS Date), 2026, 4, 11, N'November', N'Nov', 49, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-11-30' AS Date), 2026, 4, 11, N'November', N'Nov', 49, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-01' AS Date), 2026, 4, 12, N'December', N'Dec', 49, 1)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-02' AS Date), 2026, 4, 12, N'December', N'Dec', 49, 2)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-03' AS Date), 2026, 4, 12, N'December', N'Dec', 49, 3)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-04' AS Date), 2026, 4, 12, N'December', N'Dec', 49, 4)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-05' AS Date), 2026, 4, 12, N'December', N'Dec', 49, 5)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-06' AS Date), 2026, 4, 12, N'December', N'Dec', 50, 6)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-07' AS Date), 2026, 4, 12, N'December', N'Dec', 50, 7)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-08' AS Date), 2026, 4, 12, N'December', N'Dec', 50, 8)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-09' AS Date), 2026, 4, 12, N'December', N'Dec', 50, 9)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-10' AS Date), 2026, 4, 12, N'December', N'Dec', 50, 10)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-11' AS Date), 2026, 4, 12, N'December', N'Dec', 50, 11)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-12' AS Date), 2026, 4, 12, N'December', N'Dec', 50, 12)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-13' AS Date), 2026, 4, 12, N'December', N'Dec', 51, 13)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-14' AS Date), 2026, 4, 12, N'December', N'Dec', 51, 14)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-15' AS Date), 2026, 4, 12, N'December', N'Dec', 51, 15)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-16' AS Date), 2026, 4, 12, N'December', N'Dec', 51, 16)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-17' AS Date), 2026, 4, 12, N'December', N'Dec', 51, 17)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-18' AS Date), 2026, 4, 12, N'December', N'Dec', 51, 18)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-19' AS Date), 2026, 4, 12, N'December', N'Dec', 51, 19)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-20' AS Date), 2026, 4, 12, N'December', N'Dec', 52, 20)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-21' AS Date), 2026, 4, 12, N'December', N'Dec', 52, 21)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-22' AS Date), 2026, 4, 12, N'December', N'Dec', 52, 22)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-23' AS Date), 2026, 4, 12, N'December', N'Dec', 52, 23)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-24' AS Date), 2026, 4, 12, N'December', N'Dec', 52, 24)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-25' AS Date), 2026, 4, 12, N'December', N'Dec', 52, 25)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-26' AS Date), 2026, 4, 12, N'December', N'Dec', 52, 26)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-27' AS Date), 2026, 4, 12, N'December', N'Dec', 53, 27)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-28' AS Date), 2026, 4, 12, N'December', N'Dec', 53, 28)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-29' AS Date), 2026, 4, 12, N'December', N'Dec', 53, 29)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-30' AS Date), 2026, 4, 12, N'December', N'Dec', 53, 30)
GO
INSERT [dim].[Calendar] ([DateValue], [Year], [Quarter], [Month], [MonthName], [MonthShort], [Week], [Day]) VALUES (CAST(N'2026-12-31' AS Date), 2026, 4, 12, N'December', N'Dec', 53, 31)
GO
SET IDENTITY_INSERT [dim].[Customer] ON 
GO
INSERT [dim].[Customer] ([CustomerID], [CustomerName], [City], [Country]) VALUES (1, N'John Smith', N'West Pauline', N'Panama')
GO
INSERT [dim].[Customer] ([CustomerID], [CustomerName], [City], [Country]) VALUES (2, N'Mariah Stone', N'West Pauline', N'Panama')
GO
INSERT [dim].[Customer] ([CustomerID], [CustomerName], [City], [Country]) VALUES (3, N'Keyla Miguel', N'Del River', N'Colombia')
GO
INSERT [dim].[Customer] ([CustomerID], [CustomerName], [City], [Country]) VALUES (4, N'Cal Tantum', N'Del River', N'Colombia')
GO
SET IDENTITY_INSERT [dim].[Customer] OFF
GO
SET IDENTITY_INSERT [dim].[Stores] ON 
GO
INSERT [dim].[Stores] ([store_id], [store_name], [store_country]) VALUES (1, N'Nuevo Home', N'Panama')
GO
INSERT [dim].[Stores] ([store_id], [store_name], [store_country]) VALUES (2, N'Puerto Horizonte', N'Colombia')
GO
SET IDENTITY_INSERT [dim].[Stores] OFF
GO
INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES (CAST(N'2023-02-25' AS Date), 1, 1, CAST(205.12 AS Decimal(18, 2)))
GO
INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES (CAST(N'2023-02-27' AS Date), 1, 3, CAST(95.12 AS Decimal(18, 2)))
GO
INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES (CAST(N'2023-03-15' AS Date), 2, 2, CAST(315.12 AS Decimal(18, 2)))
GO
INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES (CAST(N'2023-03-22' AS Date), 1, 4, CAST(20.35 AS Decimal(18, 2)))
GO
INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES (CAST(N'2023-04-12' AS Date), 2, 2, CAST(225.92 AS Decimal(18, 2)))
GO
INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES (CAST(N'2023-04-25' AS Date), 2, 2, CAST(265.56 AS Decimal(18, 2)))
GO
INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES (CAST(N'2023-05-11' AS Date), 1, 3, CAST(95.23 AS Decimal(18, 2)))
GO
INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES (CAST(N'2023-05-20' AS Date), 2, 3, CAST(85.51 AS Decimal(18, 2)))
GO
INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES (CAST(N'2023-06-02' AS Date), 1, 4, CAST(165.17 AS Decimal(18, 2)))
GO
INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES (CAST(N'2023-06-19' AS Date), 2, 1, CAST(159.47 AS Decimal(18, 2)))
GO
ALTER TABLE [fact].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dim].[Customer] ([CustomerID])
GO
ALTER TABLE [fact].[Sales] CHECK CONSTRAINT [FK_CustomerID]
GO
ALTER TABLE [fact].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Calendar] FOREIGN KEY([transaction_date])
REFERENCES [dim].[Calendar] ([DateValue])
GO
ALTER TABLE [fact].[Sales] CHECK CONSTRAINT [FK_Sales_Calendar]
GO
ALTER TABLE [fact].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Sales_CalendarDate] FOREIGN KEY([transaction_date])
REFERENCES [dim].[Calendar] ([DateValue])
GO
ALTER TABLE [fact].[Sales] CHECK CONSTRAINT [FK_Sales_CalendarDate]
GO
ALTER TABLE [fact].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_Store_ID] FOREIGN KEY([store_id])
REFERENCES [dim].[Stores] ([store_id])
GO
ALTER TABLE [fact].[Sales] CHECK CONSTRAINT [FK_Store_ID]
GO
USE [master]
GO
ALTER DATABASE [Test] SET  READ_WRITE 
GO

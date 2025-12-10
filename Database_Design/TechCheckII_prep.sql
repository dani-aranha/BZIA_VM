USE [master]
GO
/****** Object:  Database [TechCheckDW]    Script Date: 12/8/2025 6:05:29 PM ******/
CREATE DATABASE [TechCheckDW]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TechCheckDW', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TechCheckDW.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TechCheckDW_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\TechCheckDW_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TechCheckDW] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TechCheckDW].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TechCheckDW] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TechCheckDW] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TechCheckDW] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TechCheckDW] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TechCheckDW] SET ARITHABORT OFF 
GO
ALTER DATABASE [TechCheckDW] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TechCheckDW] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TechCheckDW] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TechCheckDW] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TechCheckDW] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TechCheckDW] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TechCheckDW] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TechCheckDW] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TechCheckDW] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TechCheckDW] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TechCheckDW] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TechCheckDW] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TechCheckDW] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TechCheckDW] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TechCheckDW] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TechCheckDW] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TechCheckDW] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TechCheckDW] SET RECOVERY FULL 
GO
ALTER DATABASE [TechCheckDW] SET  MULTI_USER 
GO
ALTER DATABASE [TechCheckDW] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TechCheckDW] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TechCheckDW] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TechCheckDW] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TechCheckDW] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TechCheckDW] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TechCheckDW', N'ON'
GO
ALTER DATABASE [TechCheckDW] SET QUERY_STORE = ON
GO
ALTER DATABASE [TechCheckDW] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TechCheckDW]
GO
/****** Object:  Schema [dim]    Script Date: 12/8/2025 6:05:29 PM ******/
CREATE SCHEMA [dim]
GO
/****** Object:  Schema [fact]    Script Date: 12/8/2025 6:05:29 PM ******/
CREATE SCHEMA [fact]
GO
/****** Object:  Schema [stg]    Script Date: 12/8/2025 6:05:29 PM ******/
CREATE SCHEMA [stg]
GO

CREATE SCHEMA [src]
GO
/****** Object:  Table [src].[Customers]    Script Date: 12/8/2025 6:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [src].[Customers](
	[customer_id] [int] NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](100) NULL,
	[phone] [nvarchar](30) NULL,
	[region_code] [nvarchar](10) NOT NULL,
	[status_code] [nvarchar](10) NOT NULL,
	[created_date] [date] NOT NULL,
 CONSTRAINT [PK_stg_Customers] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [src].[Regions]    Script Date: 12/8/2025 6:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [src].[Regions](
	[region_code] [nvarchar](10) NOT NULL,
	[region_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_stg_Regions] PRIMARY KEY CLUSTERED 
(
	[region_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [src].[Sales]    Script Date: 12/8/2025 6:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [src].[Sales](
	[sale_id] [int] IDENTITY(1,1) NOT NULL,
	[transaction_date] [date] NOT NULL,
	[customer_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[unit_price] [decimal](10, 2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [src].[Statuses]    Script Date: 12/8/2025 6:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [src].[Statuses](
	[status_code] [nvarchar](10) NOT NULL,
	[status_name] [nvarchar](50) NOT NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_stg_Statuses] PRIMARY KEY CLUSTERED 
(
	[status_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [src].[Customers] ([customer_id], [first_name], [last_name], [email], [phone], [region_code], [status_code], [created_date]) VALUES (1001, N'Ava', N'Campbell', N'ava.campbell@example.com', N'902-555-1001', N'NS', N'ACT', CAST(N'2024-01-15' AS Date))
GO
INSERT [src].[Customers] ([customer_id], [first_name], [last_name], [email], [phone], [region_code], [status_code], [created_date]) VALUES (1002, N'Liam', N'Bennett', N'liam.bennett@example.com', N'506-555-1002', N'NB', N'NEW', CAST(N'2024-02-10' AS Date))
GO
INSERT [src].[Customers] ([customer_id], [first_name], [last_name], [email], [phone], [region_code], [status_code], [created_date]) VALUES (1003, N'Noah', N'Walker', N'noah.walker@example.com', N'709-555-1003', N'NL', N'ACT', CAST(N'2024-03-05' AS Date))
GO
INSERT [src].[Customers] ([customer_id], [first_name], [last_name], [email], [phone], [region_code], [status_code], [created_date]) VALUES (1004, N'Olivia', N'Young', N'olivia.young@example.com', N'902-555-1004', N'NS', N'ACT', CAST(N'2024-03-20' AS Date))
GO
INSERT [src].[Customers] ([customer_id], [first_name], [last_name], [email], [phone], [region_code], [status_code], [created_date]) VALUES (1005, N'Emma', N'Johnson', N'emma.johnson@example.com', N'902-555-1005', N'NS', N'INA', CAST(N'2024-04-02' AS Date))
GO
INSERT [src].[Customers] ([customer_id], [first_name], [last_name], [email], [phone], [region_code], [status_code], [created_date]) VALUES (1006, N'James', N'Scott', N'james.scott@example.com', N'506-555-1006', N'NB', N'ACT', CAST(N'2024-04-18' AS Date))
GO
INSERT [src].[Customers] ([customer_id], [first_name], [last_name], [email], [phone], [region_code], [status_code], [created_date]) VALUES (1007, N'Sophia', N'Lewis', N'sophia.lewis@example.com', N'902-555-1007', N'NS', N'NEW', CAST(N'2024-05-01' AS Date))
GO
INSERT [src].[Customers] ([customer_id], [first_name], [last_name], [email], [phone], [region_code], [status_code], [created_date]) VALUES (1008, N'Benjamin', N'White', N'ben.white@example.com', N'902-555-1008', N'NS', N'ACT', CAST(N'2024-05-15' AS Date))
GO
INSERT [src].[Customers] ([customer_id], [first_name], [last_name], [email], [phone], [region_code], [status_code], [created_date]) VALUES (1009, N'Mia', N'Wright', N'mia.wright@example.com', N'902-555-1009', N'NS', N'ACT', CAST(N'2024-06-09' AS Date))
GO
INSERT [src].[Customers] ([customer_id], [first_name], [last_name], [email], [phone], [region_code], [status_code], [created_date]) VALUES (1010, N'Lucas', N'Hughes', N'lucas.hughes@example.com', N'709-555-1010', N'NL', N'INA', CAST(N'2024-06-30' AS Date))
GO
INSERT [src].[Customers] ([customer_id], [first_name], [last_name], [email], [phone], [region_code], [status_code], [created_date]) VALUES (1011, N'Harper', N'Adams', N'harper.adams@example.com', N'902-555-1011', N'NS', N'ACT', CAST(N'2024-07-07' AS Date))
GO
INSERT [src].[Customers] ([customer_id], [first_name], [last_name], [email], [phone], [region_code], [status_code], [created_date]) VALUES (1012, N'Elijah', N'Mitchell', N'elijah.mitchell@example.com', N'902-555-1012', N'PE', N'NEW', CAST(N'2024-07-22' AS Date))
GO
INSERT [src].[Regions] ([region_code], [region_name]) VALUES (N'NB', N'New Brunswick')
GO
INSERT [src].[Regions] ([region_code], [region_name]) VALUES (N'NL', N'Newfoundland and Labrador')
GO
INSERT [src].[Regions] ([region_code], [region_name]) VALUES (N'NS', N'Nova Scotia')
GO
INSERT [src].[Regions] ([region_code], [region_name]) VALUES (N'PE', N'Prince Edward Island')
GO
SET IDENTITY_INSERT [src].[Sales] ON 
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (1, CAST(N'2024-03-06' AS Date), 1003, 2, CAST(49.99 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (2, CAST(N'2024-03-21' AS Date), 1004, 1, CAST(199.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (3, CAST(N'2024-04-03' AS Date), 1006, 3, CAST(24.50 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (4, CAST(N'2024-04-19' AS Date), 1005, 5, CAST(10.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (5, CAST(N'2024-05-02' AS Date), 1007, 4, CAST(15.75 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (6, CAST(N'2024-05-16' AS Date), 1008, 2, CAST(99.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (7, CAST(N'2024-06-10' AS Date), 1009, 1, CAST(299.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (8, CAST(N'2024-06-30' AS Date), 1010, 2, CAST(39.95 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (9, CAST(N'2024-07-08' AS Date), 1011, 6, CAST(9.99 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (10, CAST(N'2024-07-23' AS Date), 1012, 3, CAST(19.99 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (11, CAST(N'2024-08-01' AS Date), 1001, 2, CAST(79.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (12, CAST(N'2024-08-15' AS Date), 1002, 1, CAST(149.50 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (13, CAST(N'2024-09-05' AS Date), 1003, 1, CAST(499.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (14, CAST(N'2024-09-21' AS Date), 1004, 2, CAST(59.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (15, CAST(N'2024-10-04' AS Date), 1006, 4, CAST(22.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (16, CAST(N'2024-10-20' AS Date), 1005, 3, CAST(12.50 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (17, CAST(N'2024-11-03' AS Date), 1007, 2, CAST(45.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (18, CAST(N'2024-11-17' AS Date), 1008, 2, CAST(120.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (19, CAST(N'2024-12-09' AS Date), 1009, 5, CAST(18.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (20, CAST(N'2024-12-22' AS Date), 1010, 1, CAST(249.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (21, CAST(N'2025-01-07' AS Date), 1011, 2, CAST(75.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (22, CAST(N'2025-01-23' AS Date), 1012, 3, CAST(33.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (23, CAST(N'2025-02-04' AS Date), 1001, 4, CAST(14.25 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (24, CAST(N'2025-02-18' AS Date), 1002, 1, CAST(199.99 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (25, CAST(N'2025-03-03' AS Date), 1003, 2, CAST(59.99 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (26, CAST(N'2025-03-19' AS Date), 1004, 1, CAST(349.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (27, CAST(N'2025-04-02' AS Date), 1006, 3, CAST(21.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (28, CAST(N'2025-04-18' AS Date), 1005, 2, CAST(29.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (29, CAST(N'2025-05-05' AS Date), 1007, 1, CAST(159.00 AS Decimal(10, 2)))
GO
INSERT [src].[Sales] ([sale_id], [transaction_date], [customer_id], [quantity], [unit_price]) VALUES (30, CAST(N'2025-05-19' AS Date), 1008, 5, CAST(11.75 AS Decimal(10, 2)))
GO
SET IDENTITY_INSERT [src].[Sales] OFF
GO
INSERT [src].[Statuses] ([status_code], [status_name], [is_active]) VALUES (N'ACT', N'Active', 1)
GO
INSERT [src].[Statuses] ([status_code], [status_name], [is_active]) VALUES (N'INA', N'Inactive', 0)
GO
INSERT [src].[Statuses] ([status_code], [status_name], [is_active]) VALUES (N'NEW', N'New Customer', 1)
GO
USE [master]
GO
ALTER DATABASE [TechCheckDW] SET  READ_WRITE 
GO

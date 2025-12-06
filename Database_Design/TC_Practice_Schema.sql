USE [TC_Practice]
GO
/****** Object:  Schema [dim]    Script Date: 12/4/2025 11:37:40 PM ******/
CREATE SCHEMA [dim]
GO
/****** Object:  Schema [fact]    Script Date: 12/4/2025 11:37:40 PM ******/
CREATE SCHEMA [fact]
GO
/****** Object:  Schema [src]    Script Date: 12/4/2025 11:37:40 PM ******/
CREATE SCHEMA [src]
GO
/****** Object:  Schema [stg]    Script Date: 12/4/2025 11:37:40 PM ******/
CREATE SCHEMA [stg]
GO
/****** Object:  Schema [vw]    Script Date: 12/4/2025 11:37:40 PM ******/
CREATE SCHEMA [vw]
GO
/****** Object:  Table [src].[Regions]    Script Date: 12/4/2025 11:37:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [src].[Regions](
	[region_id] [tinyint] NOT NULL,
	[sales_district] [nvarchar](50) NOT NULL,
	[sales_region] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [src].[Sales23]    Script Date: 12/4/2025 11:37:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [src].[Sales23](
	[transaction_date] [date] NULL,
	[store_id] [tinyint] NOT NULL,
	[TotalSale] [decimal](38, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [src].[Sales24]    Script Date: 12/4/2025 11:37:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [src].[Sales24](
	[transaction_date] [date] NULL,
	[store_id] [tinyint] NOT NULL,
	[TotalSale] [decimal](38, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [src].[Stores]    Script Date: 12/4/2025 11:37:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [src].[Stores](
	[store_id] [tinyint] NOT NULL,
	[region_id] [tinyint] NOT NULL,
	[store_type] [nvarchar](50) NOT NULL,
	[store_name] [nvarchar](101) NOT NULL,
	[store_state_prov] [nvarchar](50) NOT NULL,
	[store_country] [nvarchar](50) NOT NULL,
	[first_opened_date] [date] NULL,
	[last_remodel_date] [date] NULL,
	[total_sqft] [int] NOT NULL,
	[grocery_sqft] [smallint] NOT NULL
) ON [PRIMARY]
GO

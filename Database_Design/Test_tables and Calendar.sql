USE Test
GO
/* 1) Ensure schema exists */

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'fact')
BEGIN
    EXEC(N'CREATE SCHEMA fact');
END;
GO


IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'dim')
BEGIN
    EXEC(N'CREATE SCHEMA dim');
END;
GO

/* 2) Create table if it doesn't exist */
IF NOT EXISTS (
    SELECT 1
    FROM sys.objects
    WHERE object_id = OBJECT_ID(N'dim.Customer')
      AND type = N'U'
)

/****** Object:  Table [dbo].[Customer]     ******/



CREATE TABLE [dim].[Customer](
	[CustomerID] [tinyint] IDENTITY(1,1) PRIMARY KEY,
	[CustomerName] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [dim].[Stores]     ******/


CREATE TABLE [dim].[Stores](
	[store_id] [tinyint] IDENTITY(1,1) PRIMARY KEY,
	[store_name] [nvarchar](50) NOT NULL,
	[store_country] [nvarchar](20) NOT NULL
) ON [PRIMARY];
GO

/****** Object:  Table [dim].[Calendar]     ******/
/* 1) Create schema if needed */

/* 1) Ensure schema exists */
IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'dim')
BEGIN
    EXEC(N'CREATE SCHEMA dim');
END;
GO

/* 2) Create table if it doesn't exist */
IF NOT EXISTS (
    SELECT 1
    FROM sys.objects
    WHERE object_id = OBJECT_ID(N'dim.Calendar')
      AND type = N'U'
)
BEGIN
    CREATE TABLE dim.Calendar (
        DateValue   DATE PRIMARY KEY,
        [Year]      INT  NULL,
        [Quarter]   INT  NULL,
        [Month]     INT  NULL,
        MonthName   NVARCHAR(20) NULL,
        MonthShort  CHAR(3)      NULL,
        [Week]      INT          NULL,   -- US week number
        [Day]       INT          NULL
    );
END;
GO

/* 3) Optional: Clear any existing rows in that range to avoid duplicates */
DELETE FROM dim.Calendar
WHERE DateValue >= CAST('2023-01-01' AS DATE)
  AND DateValue <= CAST('2026-12-31' AS DATE);

/* 4) Generate date rows and insert */
;WITH Dates AS (
    SELECT CAST('2023-01-01' AS DATE) AS DateValue
    UNION ALL
    SELECT DATEADD(DAY, 1, DateValue)
    FROM Dates
    WHERE DateValue < CAST('2026-12-31' AS DATE)
)
INSERT INTO dim.Calendar (
    DateValue,
    [Year],
    [Quarter],
    [Month],
    MonthName,
    MonthShort,
    [Week],
    [Day]
)
SELECT
    d.DateValue,
    DATEPART(YEAR,    d.DateValue)              AS [Year],
    DATEPART(QUARTER, d.DateValue)              AS [Quarter],
    DATEPART(MONTH,   d.DateValue)              AS [Month],
    DATENAME(MONTH,   d.DateValue)              AS MonthName,
    LEFT(DATENAME(MONTH, d.DateValue), 3)       AS MonthShort,
    DATEPART(WEEK,    d.DateValue)              AS [Week],    -- US week number
    DATEPART(DAY,     d.DateValue)              AS [Day]
FROM Dates d
OPTION (MAXRECURSION 0);
GO


/****** Object:  Table [fact].[Sales]    Script Date: 12/4/2025 11:37:41 PM ******/


CREATE TABLE [fact].[Sales](
	[transaction_date] [date] NOT NULL,
	[store_id] [tinyint] NOT NULL,
	[CustomerID] [tinyint] NOT NULL,
	[TotalSale] [decimal](18, 2) NULL
) ON [PRIMARY]
GO


USE TC_Practice;
GO

DROP TABLE IF EXISTS dim.Stores;

CREATE TABLE dim.Stores(
	[store_id] [int] NOT NULL,
	[region_id] [int] NOT NULL,
	[store_type] [nvarchar](50) NOT NULL,
	[store_name] [nvarchar](101) NOT NULL,
	[store_state_prov] [nvarchar](50) NOT NULL,
	[store_country] [nvarchar](50) NOT NULL,
	[first_opened_date] [date] NULL,
	[last_remodel_date] [date] NULL,
	[total_sqft] [int] NOT NULL,
	[grocery_sqft] [smallint] NOT NULL,
	[sales_district] [nvarchar](50) NOT NULL,
	[sales_region] [nvarchar](50) NOT NULL,
	CONSTRAINT PK_Sales PRIMARY KEY (store_id)
)
DROP TABLE IF EXISTS dim.Calendar;

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
WHERE DateValue >= CAST('2022-01-01' AS DATE)
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

/**********FACT TABLE*******************/

DROP TABLE IF EXISTS fact.Sales;

CREATE TABLE fact.Sales(
pkSales bigint primary key,
transaction_date date,
store_id int,
TotalSale decimal(18,3)
)



USE TechCheckDW
GO



CREATE TABLE dim.Customer(
Customer_sk [bigint] IDENTITY(1,1) Primary Key,
Customer_id int NOT NULL,
full_name [nvarchar](50)  NULL,
email [nvarchar](50)  NULL,
phone [nvarchar](30)  NULL,
[region_name] [nvarchar](50) NOT NULL,
[status_name] [nvarchar](10) NOT NULL,
is_active bit NOT NULL 
)

/******************CALENDAR****************************/

IF OBJECT_ID('dim.Calendar', 'U') IS NOT NULL
    DROP TABLE dbo.Calendar;
GO

CREATE TABLE dbo.Calendar (
    DateValue        DATE         NOT NULL,  
    [Year]           INT          NOT NULL,
    MonthNumber      TINYINT      NOT NULL,  
    MonthName        NVARCHAR(20) NOT NULL,  
    DayOfMonth       TINYINT      NOT NULL,  
    DayOfWeekNumber  TINYINT      NOT NULL,  
    DayOfWeekName    NVARCHAR(20) NOT NULL,  
    WeekOfYear       TINYINT      NOT NULL,  
    Quarter          TINYINT      NOT NULL,  
    CONSTRAINT PK_Calendar PRIMARY KEY CLUSTERED (DateValue)
);
GO

DECLARE @StartDate DATE = '2024-01-01';
DECLARE @EndDate   DATE = '2025-12-31';

;WITH Dates AS (
    SELECT @StartDate AS DateValue
    UNION ALL
    SELECT DATEADD(DAY, 1, DateValue)
    FROM Dates
    WHERE DateValue < @EndDate
)
INSERT INTO dbo.Calendar (
    DateValue, [Year], MonthNumber, MonthName, DayOfMonth,
    DayOfWeekNumber, DayOfWeekName, WeekOfYear, Quarter
)
SELECT
    d.DateValue,
    YEAR(d.DateValue),
    MONTH(d.DateValue),
    DATENAME(MONTH, d.DateValue),
    DAY(d.DateValue),
    -- ISO Monday=1..Sunday=7
    (DATEPART(WEEKDAY, d.DateValue) + @@DATEFIRST - 1 + 6) % 7 + 1,
    DATENAME(WEEKDAY, d.DateValue),
    DATEPART(isowk, d.DateValue),
    DATEPART(QUARTER, d.DateValue)
FROM Dates d
OPTION (MAXRECURSION 0);
GO

/*********************FACT*******************************/

CREATE TABLE fact.Sales(
sale_id int NOT NULL,
[transaction_date] DATE NOT NULL,
[customer_id] INT NOT NULL,
[quantity] INT NOT NULL,
[unit_price] DECIMAL(10,2) NOT NULL
)
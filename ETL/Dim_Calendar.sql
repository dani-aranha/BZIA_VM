

CREATE TABLE dim.Calendar (
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

DECLARE @StartDate DATE = '2017-01-01';
DECLARE @EndDate   DATE = '2027-12-31';

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
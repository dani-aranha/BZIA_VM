/***** Set DB Name *****/
USE Lab1;  

GO

-- Declare variables
/***** Start Date *****/
DECLARE @StartDate DATE = '2020-01-01'
/***** Start Year Duration *****/
DECLARE @EndDate DATE = DATEADD(year, 10, @startDate)
DECLARE @Date DATE = @StartDate
DECLARE @DayID INT = CAST(FORMAT(CAST(@StartDate AS DATE), 'yyyyMMdd') AS INT)


-- Populate the Calendar table
WHILE @Date < @EndDate
BEGIN
    /***** Set Schema and Table Name *****/
    INSERT INTO dbo.CalendarDim (DayID, DateValue, Year, Quarter, Month,  MonthName, MonthShort, Week, Day, DayName, DayShort, IsWeekday)
    VALUES (
        @DayID,
        @Date,
        YEAR(@Date),
        DATEPART(QUARTER, @Date),
        MONTH(@Date),
        DATENAME(MONTH, @Date),
		LEFT(DATENAME(MONTH, @Date),3),
        DATEPART(WEEK, @Date),
        DAY(@Date),
		DATENAME(WEEKDAY, @Date),
		LEFT(DATENAME(WEEKDAY, @Date),3),
        CASE WHEN DATEPART(WEEKDAY, @Date) IN (1, 7) THEN 0 ELSE 1 END -- Set IsWeekday to 0 for Saturday (1) and Sunday (7), and 1 for weekdays
    )

    -- Increment the date and day ID
    SET @Date = DATEADD(DAY, 1, @Date)
    SET @DayID = @DayID + 1
END



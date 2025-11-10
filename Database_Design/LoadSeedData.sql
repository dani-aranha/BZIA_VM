USE Lab1
GO

/**** Dim Tables ****/
/****** GENERATED CODE******/
-- CalendarDim
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


/*...............................*/

--CustomerDim
;WITH CustomerDim (CustomerID, CompanyName, ContactName, ContactTitle,[Address]
        ,City, Region, Country)

as
(SELECT CustomerID
      ,CompanyName
      ,ContactName
      ,ContactTitle
      ,[Address]
      ,City
      ,isnull(Region, Country)
--    ,PostalCode
      ,Country
--    ,Phone
--    ,Fax  
  FROM Northwind_TC.sales.Customers
)
INSERT INTO Lab1.dbo.CustomerDim (CustomerID, CompanyName, ContactName, ContactTitle,[Address]
        ,City, Region, Country)
SELECT CustomerID
      ,CompanyName
      ,ContactName
      ,ContactTitle
      ,[Address]
      ,City
      ,isnull(Region, Country)
      ,Country 
FROM CustomerDim


--EmployeeDim
;WITH EmployeeDim (EmployeeID,LastName,FirstName,Title,BirthDate,HireDate,City,Region,Country)

as
(SELECT EmployeeID
      ,LastName
      ,FirstName
      ,Title
      ,BirthDate
      ,HireDate
      ,City
      ,Region
      ,Country
 --   ,ReportsTo
FROM Northwind_TC.emp.Employees
)
INSERT INTO Lab1.dbo.EmployeeDim (EmployeeID,LastName,FirstName,Title,BirthDate,HireDate,City,Region,Country)
SELECT EmployeeID
      ,LastName
      ,FirstName
      ,Title
      ,BirthDate
      ,HireDate
      ,City
      ,isnull(Region,Country)
      ,Country 
FROM EmployeeDim

--ProductDim
USE Northwind_TC

DELETE FROM [Lab1].[dbo].[ProductDim]

GO
 
 
;WITH ProductDim (ProductID, ProductName, ProductCategoryID, ProductCategory 
              ,ProductCategoryDescription, SupplierID, Supplier) as (

SELECT P.ProductID
,p.ProductName
,pc.CategoryID
,pc.CategoryName
,pc.Description
,s.SupplierID
,s.CompanyName
FROM prod.Products as P
    Inner Join prod.Categories as Pc
        ON pc.CategoryID = p.CategoryID
    Inner Join prod.Suppliers as S
        ON p.SupplierID = s.SupplierID

) 

INSERT INTO Lab1.dbo.ProductDim (ProductID, ProductName, ProductCategoryID, ProductCategory 
              ,ProductCategoryDescription, SupplierID, Supplier)
SELECT *
FROM ProductDim




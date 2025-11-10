USE Lab1
GO

WITH CustomerDim (CustomerID,CompanyName,ContactName,ContactTitle,[Address],City,Region,Country)
as (
SELECT CustomerID
      ,CompanyName
      ,ContactName
      ,ContactTitle
      ,[Address]
      ,City
      ,Region
      ,Country
  FROM Northwind_TC.sales.Customers
)
Select * 
From CustomerDim


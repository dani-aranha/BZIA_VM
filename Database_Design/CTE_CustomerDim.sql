WITH CustomerDim (CustomerID,CompanyName,ContactName,ContactTitle,[Address],City,Region,PostalCode,Country,Phone,Fax)
as (
SELECT CustomerID
      ,CompanyName
      ,ContactName
      ,ContactTitle
      ,[Address]
      ,City
      ,Region
      ,PostalCode
      ,Country
      ,Phone
      ,Fax
  FROM Northwind_TC.sales.Customers
)
Select * 
From CustomerDim


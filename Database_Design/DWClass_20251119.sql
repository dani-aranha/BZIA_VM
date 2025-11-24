/*

CREATE TABLE Fact.Sales (
SaleKey bigint PRIMARY KEY
,CityKey int NOT NULL
,CustomerKey int NOT NULL
,BillToCustomerKey int NOT NULL
,StockItemKey int NOT NULL
,InvoiceDateKey date NOT NULL
,DaysToDeliver int NOT NULL
,SalespersonKey int NOT NULL
,WWIInvoiceID int NOT NULL
,Package  varchar(50) NOT NULL
,Quantity int NOT NULL
,UnitPrice decimal(18,2) NOT NULL
,TaxRate decimal(18,3) NOT NULL
,TotalExcludingTax decimal(18,2) NOT NULL
,TaxAmount decimal(18,2) NOT NULL
,Profit decimal(18,2) NOT NULL
,TotalIncludingTax decimal(18,2) NOT NULL
,TotalDryItems int NOT NULL
,TotalChillerItems int NOT NULL
,LineageKey int NOT NULL
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED (
        [SaleKey] ASC,[InvoiceDateKey] ASC
)
 FROM [WideWorldImportersDW].[Fact].[Sale]
*/

/*
CREATE TABLE [Lup.Package] 
(
PackageKey INT PRIMARY KEY,
Package (nvarchar(25), NOT NULL UNIQUE)

CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED (
        [PackageKey] ASC,[Package] ASC


USE WideWorldImportersDW;
GO

SELECT distinct Package
FROM Fact.Sale
*/

SELECT  [Stock Item Key]
       ,count(distinct [Description]) as 'DescCnt'
FROM [Fact].[Sale] 
GROUP BY [Stock Item Key]
HAVING count([Description]) > 1
ORDER BY DescCnt DESC
;
-- 228,265 rows

SELECT  Sale Key, City Key, Customer Key, Bill To Customer Key, Stock Item Key, Invoice Date Key, Delivery Date Key (days to deliver)
, Salesperson Key, WWI Invoice ID, Package
FROM [Fact].[Sale] 
GROUP BY [Stock Item Key]
HAVING count(distinct [Description]) > 1
ORDER BY DescCnt DESC



SELECT TOP (1000) [Sale Key]
      ,[City Key]
      ,[Customer Key]
      ,[Bill To Customer Key]
      ,[Stock Item Key]
      ,[Invoice Date Key]
      ,DATEDIFF(day, [Invoice Date Key], [Delivery Date Key]) as 'DaysToDeliver'
      ,[Salesperson Key]
      ,[WWI Invoice ID]
      ,[Package] --Should it be a lookup?
      ,[Quantity]
      ,[Unit Price]
      ,[Tax Rate]
      ,[Total Excluding Tax]
      ,[Tax Amount]
      ,[Profit]
      ,[Total Including Tax]
      ,[Total Dry Items]
      ,[Total Chiller Items]
      ,[Lineage Key]
  FROM [WideWorldImportersDW].[Fact].[Sale] as fs
    
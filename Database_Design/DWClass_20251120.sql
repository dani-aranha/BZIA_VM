DROP TABLE if exists dbo.[Lup.Package]


CREATE SCHEMA FACT
GO
CREATE SCHEMA DIM
GO
CREATE SCHEMA LUP
GO



USE WWI_Mart;

CREATE TABLE [Lup.Package] (
    PackageKey INT IDENTITY(1000,1) NOT NULL,
    Package NVARCHAR(25) NOT NULL,
    CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED (PackageKey ASC),
    CONSTRAINT UQ_Package UNIQUE (Package)
);

CREATE PROCEDURE usp_InsertNewPackages
As
BEGIN

    SET NOCOUNTON;

    INSERT INTO WWI_Mart.Lup.Package (Package)
    SELECT DISTINCT s.Package
    FROM WideWorldImportersDW.Fact.Sale as s
    WHERE NOT EXISTS (
        SELECT 1
        FROM WWI_Mart.Lup.Package as p
        WHERE p.package = s.Package


/***STORED PROCEDURE****
USE WWI_Mart;
go
EXEC USP_InsertNewPackages

SELECT*
FROM WWI_Mart.lup.package

SELECT * 
FROM WWI_Mart.lup.package
ORDER BY 1 ASC
*/


USE WideWorldImportersDW;
GO

SELECT distinct Package
FROM Fact.Sale

USE WideWorldImportersDW;
GO

SELECT fs.[Sale Key] as SaleKey
	  ,fs.[City Key] as CityKey
	  ,fs.[Customer Key] as CustomerKey
	  ,fs.[Bill To Customer Key] as BillToCustomerKey
	  ,fs.[Stock Item Key] as StockItemKey
	  ,fs.[Invoice Date Key] as InvoiceDateKey
	  ,DATEDIFF(DAY, fs.[Invoice Date Key], fs.[Delivery Date Key]) as 'DaysToDeliver'
	  ,fs.[Salesperson Key] as SalespersonKey
	  ,fs.[WWI Invoice ID] as WWIInvoiceID
	--,fs.[Package]             -- should it be a lookup?
	  ,p.PackageKey  
	  ,fs.[Quantity] 
	  ,fs.[Unit Price] as UnitPrice
	  ,fs.[Tax Rate] as TaxRate
	  ,fs.[Total Excluding Tax] as TotalExcludingTax
	  ,fs.[Tax Amount] as TaxAmount
	  ,fs.[Profit]
	  ,fs.[Total Including Tax] as TotalIncludingTax
	  ,fs.[Total Dry Items] as TotalDryItems
	--,fs.[Total Chiller Items]  as TotalChillerItems -- should it be a flag?
	  ,CASE 
		WHEN [Total Chiller Items] > 0 THEN 1
		ELSE 0
	   END as 'ChillerItem'
	  ,fs.[Lineage Key] as LineageKey
FROM WideWorldImportersDW.Fact.Sale fs
	LEFT OUTER JOIN WWI_Mart.lup.package p
	ON fs.Package = p.Package

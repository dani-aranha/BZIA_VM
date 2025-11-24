/***** Lup staging Loads	*****/
/***** stage.Sales Table Loads *****/
USE WWI_Mart
GO

TRUNCATE TABLE [stg].[Sale]
GO

USE WideWorldImportersDW
GO

INSERT INTO [WWI_Mart].[stg].[Sale] --Federated Query
(
    CityKey,
    CustomerKey,
    BillToCustomerKey,
    StockItemKey,
    InvoiceDateKey,
    DaysToDeliver,
    SalespersonKey,
    WWIInvoiceID,
    Package,
    Quantity,
    UnitPrice,
    TaxRate,
    TotalExcludingTax,
    TaxAmount,
    Profit,
    TotalIncludingTax,
    TotalDryItems,
    TotalChillerItems,
    LineageKey
)
SELECT
	  fs.[City Key] as CityKey
	  ,fs.[Customer Key] as CustomerKey
	  ,fs.[Bill To Customer Key] as BillToCustomerKey
	  ,fs.[Stock Item Key] as StockItemKey
	  ,fs.[Invoice Date Key] as InvoiceDateKey
	  ,DATEDIFF(DAY, fs.[Invoice Date Key], fs.[Delivery Date Key]) as 'DaysToDeliver'
	  ,fs.[Salesperson Key] as SalespersonKey
	  ,fs.[WWI Invoice ID] as WWIInvoiceID
	  ,fs.[Package]
	  ,fs.[Quantity] 
	  ,fs.[Unit Price] as UnitPrice
	  ,fs.[Tax Rate] as TaxRate
	  ,fs.[Total Excluding Tax] as TotalExcludingTax
	  ,fs.[Tax Amount] as TaxAmount
	  ,fs.[Profit]
	  ,fs.[Total Including Tax] as TotalIncludingTax
	  ,fs.[Total Dry Items] as TotalDryItems
	  ,fs.[Total Chiller Items]  as TotalChillerItems 
	  ,fs.[Lineage Key] as LineageKey
FROM Fact.Sale fs

/***** Lup Table Loads	*****/

INSERT INTO WWI_Mart.lup.[Package] ([Package])
SELECT DISTINCT s.[Package]
FROM WideWorldImportersDW.Fact.Sale AS s
WHERE NOT EXISTS (
    SELECT 1
    FROM WWI_Mart.lup.[Package] AS p
    WHERE p.[Package] = s.[Package]
);
/*
Select * 
From WWI_Mart.lup.Package
Order by 1 asc;
*/


/***** Dim Table Loads	*****/







/***** fact.Sales Table Loads	*****/

USE WWI_Mart;
GO

SELECT fs.SaleKey
	  ,fs.CityKey
	  ,fs.CustomerKey
	  ,fs.BillToCustomerKey
	  ,fs.StockItemKey
	  ,fs.InvoiceDateKey
	  ,fs.DaysToDeliver
	  ,fs.SalespersonKey
	  ,fs.WWIInvoiceID
	--,fs.[Package]             -- should it be a lookup?
	  ,p.PackageKey  
	  ,fs.[Quantity] 
	  ,fs.UnitPrice
	  ,fs.TaxRate
	  ,fs.TotalExcludingTax
	  ,fs.TaxAmount
	  ,fs.[Profit]
	  ,fs.TotalIncludingTax
	  ,fs.TotalDryItems
	--,fs.[Total Chiller Items]  as TotalChillerItems -- should it be a flag?
	  ,CASE 
		WHEN [TotalChillerItems] > 0 THEN 1
		ELSE 0
	   END as 'ChillerItem'
	  ,fs.LineageKey
FROM stg.Sale fs
	LEFT OUTER JOIN WWI_Mart.lup.package p
	ON fs.Package = p.Package




/*CLASS NOTES

A stage dimension is a temporary or intermediate dimension table used in the ETL (Extract, Transform, Load) process before loading data into the final dimensional model in a data warehouse.
Here’s what it means in practice:
* Purpose of a Stage Dimension

Staging area: It acts as a holding zone for raw or partially transformed data coming from source systems.
Data cleansing and transformation: You can apply business rules, standardize formats, and handle duplicates before moving data to the final dimension tables.
Validation: Ensures data quality and integrity before it becomes part of the production warehouse.


* Characteristics

Usually mirrors the structure of the final dimension but may include extra columns for audit or processing.
Often stored in a staging schema (e.g., Stage.Customer).
Data is transient — it’s cleared or refreshed regularly.


* Example Workflow

Extract customer data from multiple sources into Stage.Customer.
Transform: Clean names, unify country codes, handle missing values.
Load: Insert validated data into DimCustomer in the warehouse.*/
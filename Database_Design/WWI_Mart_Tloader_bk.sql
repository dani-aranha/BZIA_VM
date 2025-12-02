/********** Staging Loads************/
/***** stage.Sales Table Loads *****/
USE WWI_Mart
GO

TRUNCATE TABLE [stg].[Sale]
GO

USE WideWorldImportersDW
GO
/*A Federated Query is a technique that allows you to run a single query across multiple, 
different data sources as if they were one. 
Instead of moving all data into a single database, the query engine connects to each source, 
retrieves relevant data, and combines the results.*/
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
;
GO

/***** Lup Table Loads	*****/
GO
USE WWI_Mart
GO
INSERT INTO lup.[Package] ([Package])
SELECT DISTINCT s.[Package]
FROM stg.Sale AS s
WHERE NOT EXISTS (
    SELECT 1
    FROM lup.[Package] AS p
    WHERE p.[Package] = s.[Package]
);

------OR---------
/*

INSERT INTO lup.[Package] ([Package])
SELECT DISTINCT s.[Package]
FROM stg.Sale AS s
EXCEPT
SELECT Package FROM lup.Package


Select * 
From lup.Package
Order by 1 asc;
*/


/***** Dim.Customer Table Loads	*****/

USE WWI_Mart;
GO


IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_Sales_Customer')
    ALTER TABLE fact.Sales DROP CONSTRAINT FK_Sales_Customer;
GO

TRUNCATE TABLE.Dim.Customer; --truncate because of the pk
GO

USE WideWorldImportersDW
GO

WITH cte_dim_customer (pkCustomerID, bizCustomerID, Customer, BillToCustomer,
                       Category, BuyingGroup, PrimaryContact, PostalCode,
                       ValidFrom, ValidTo, LineageKey)
AS
(
    SELECT [Customer Key],
           [WWI Customer ID],
           Customer,
           [Bill To Customer],
           Category,
           [Buying Group],
           [Primary Contact],
           [Postal Code],
           CAST([Valid From] AS date),
           CAST([Valid To] AS date),
           [Lineage Key]
    FROM Dimension.Customer
)
INSERT INTO WWI_Mart.[Dim].[Customer]
SELECT distinct *
FROM cte_dim_customer;



/***** Dim.BilltoCustomer Table Loads	*****/

USE WWI_Mart;
GO
--Drop fk for tabe


IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_Sales_BillToCustomer')
    ALTER TABLE fact.Sales DROP CONSTRAINT FK_Sales_BillToCustomer;
GO


TRUNCATE TABLE [Dim].[BillToCustomer]; --truncate because of the pk
GO

INSERT INTO [Dim].[BillToCustomer]
SELECT [pkCustomerID]
      ,[bizCustomerID]
      ,[Customer]
      ,[BillToCustomer]
      ,[Category]
      ,[BuyingGroup]
      ,[PrimaryContact]
      ,[PostalCode]
      ,[ValidFrom]
      ,[ValidTo]
      ,[LineageKey]
 FROM [WWI_Mart].[Dim].[Customer]
 WHERE Customer = BillToCustomer
 OR Customer in ('Unknown')

ALTER TABLE fact.Sales  
ADD  CONSTRAINT FK_Sales_BillToCustomer 
FOREIGN KEY(BillToCustomerKey)
REFERENCES dim.BillToCustomer (pkCustomerID)
 
GO


/************ fact.Sales Table Loads****************/

USE WWI_Mart;
GO



IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_Sales_Customer')
    ALTER TABLE fact.Sales DROP CONSTRAINT FK_Sales_Customer;

IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_Sales_Package')
    ALTER TABLE fact.Sales DROP CONSTRAINT FK_Sales_Package;

IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_Sales_BillToCustomer')
    ALTER TABLE fact.Sales DROP CONSTRAINT FK_Sales_BillToCustomer;
GO


TRUNCATE TABLE Fact.Sales --truncate because of the pk
GO
INSERT INTO [WWI_Mart].[fact].[Sales]
(
    CityKey,
    CustomerKey,
    BillToCustomerKey,
    StockItemKey,
    InvoiceDateKey,
    DaysToDeliver,
    SalespersonKey,
    WWIInvoiceID,
    PackageKey,
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
	  fs.CityKey
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
	--,fs.TotalDryItems --Boolean logic
	  ,CASE 
			WHEN TotalDryItems = 0 THEN 0
			ELSE 1 
	   END as 'DryItems'
	--,fs.[Total Chiller Items]  as TotalChillerItems -- should it be a flag?
	  ,CASE 
			WHEN [TotalChillerItems] > 0 THEN 1
			ELSE 0
	   END as 'ChillerItem'
	  ,fs.LineageKey
FROM stg.Sale fs
	LEFT OUTER JOIN lup.package p
	ON fs.Package = p.Package



ALTER TABLE fact.Sales
WITH CHECK ADD CONSTRAINT FK_Sales_Customer 
FOREIGN KEY (CustomerKey)
REFERENCES Dim.Customer (pkCustomerID);

ALTER TABLE fact.Sales
WITH CHECK ADD CONSTRAINT FK_Sales_BillToCustomer 
FOREIGN KEY (BillToCustomerKey)
REFERENCES Dim.BillToCustomer (pkCustomerID);

ALTER TABLE fact.Sales
WITH CHECK ADD CONSTRAINT FK_Sales_Package 
FOREIGN KEY (PackageKey)
REFERENCES lup.Package (PackageKey);



/*
USE WWI_Mart
SELECT * 
FROM sys.foreign_keys
object_id = 1202103323
*/


/*CLASS NOTES

A stage dimension is a temporary or intermediate dimension table used in the ETL (Extract, Transform, Load) 
process before loading data into the final dimensional model in a data warehouse.
Here’s what it means in practice:
* Purpose of a Stage Dimension

Staging area: It acts as a holding zone for raw or partially transformed data coming from source systems.
Data cleansing and transformation: You can apply business rules, standardize formats, and handle duplicates before moving 
data to the final dimension tables.
Validation: Ensures data quality and integrity before it becomes part of the production warehouse.

* Characteristics

Usually mirrors the structure of the final dimension but may include extra columns for audit or processing.
Often stored in a staging schema (e.g., Stage.Customer).
Data is transient — it’s cleared or refreshed regularly.

* Example Workflow

Extract customer data from multiple sources into Stage.Customer.
Transform: Clean names, unify country codes, handle missing values.
Load: Insert validated data into DimCustomer in the warehouse.
**************************************************************************

*Multicollinearity occurs when two or more independent variables (predictors) 
in a regression model are highly correlated with each other. 
This means they provide overlapping information about the dependent variable.

-Why is it a problem?

It makes it hard to determine the individual effect of each predictor.
Coefficients become unstable and can change drastically with small data changes.
Standard errors increase > p-values become unreliable.
*********************************************************************************

Flags is important in database design because they help you manage state and logic efficiently
without creating unnecessary complexity. 
Here’s why:

-Why flags matter in database design

Control Record States
Flags allow you to mark records as active/inactive, deleted/not deleted, processed/unprocessed, 
etc., without physically removing data.
Example: is_active in a users table.

Simplify Queries
Instead of joining multiple tables or writing complex conditions, you can filter with a simple flag:
SQLSELECT * FROM orders WHERE shipped_flag = 1;Show more lines

Support Business Rules
Flags help enforce workflows (e.g., approved_flag before processing payments).

Performance
Checking a flag column is faster than checking multiple conditions or relationships.

-Best Practices for Flags

Use BOOLEAN or TINYINT (0/1) for clarity.
Name flags descriptively: is_active, is_deleted, processed_flag.
Avoid too many flags in one table (can lead to confusion).
For complex states, consider ENUM or a status table instead of multiple flags.
*/


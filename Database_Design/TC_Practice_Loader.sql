USE TC_Practice
GO
/* 1) Ensure schema exists */

IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'fact')
BEGIN
    EXEC(N'CREATE SCHEMA fact');
END;
GO


IF NOT EXISTS (SELECT 1 FROM sys.schemas WHERE name = N'dim')
BEGIN
    EXEC(N'CREATE SCHEMA dim');
END;
GO

/* 2) Create table if it doesn't exist */
IF NOT EXISTS (
    SELECT 1
    FROM sys.objects
    WHERE object_id = OBJECT_ID(N'dim.Customer')
      AND type = N'U'
)


/* Drop Fk_Sales_Stores only if it exists*/

IF EXISTS(
	SELECT 1 
	FROM sys.foreign_keys fk
	WHERE fk.name = 'FK_Sales_Stores'
		AND fk.PARENT_OBJECT_ID = OBJECT_ID('fact.Sales')
)

BEGIN
	ALTER TABLE [fact].[Sales]
	DROP CONSTRAINT [FK_Sales_Stores]
END

GO

TRUNCATE TABLE dim.stores;
GO

INSERT INTO dim.stores
Select s.*
	,r.Sales_district
	,r.sales_region
FROM src.Stores s
INNER JOIN src.Regions r
ON s.region_id = r.region_id
;

/***************Fact Table Truncate and Load*****************/

GO
TRUNCATE TABLE Fact.Sales;
GO

ALTER TABLE fact.Sales WITH CHECK
ADD CONSTRAINT fk_Sales_Stores FOREIGN KEY(store_id)
REFERENCES dim.stores(store_id)
GO

WITH CTEF AS
(
SELECT * 
FROM src.Sales23
UNION 
SELECT * 
FROM src.Sales24
)
INSERT INTO fact.Sales
SELECT CAST(CONVERT(VARCHAR(10), transaction_date, 112) as BIGINT)
		* 1000 + store_id
		AS pkSales
		,cast(transaction_date as date) as transaction_date
		,cast(store_id as int) as store_id
		,TotalSale
FROM CTEF
ORDER BY 1, 2 ASC


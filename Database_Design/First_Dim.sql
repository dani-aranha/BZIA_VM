USE Northwind_TC

TRUNCATE TABLE [Lab1].[dbo].[ProductDim]

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
 
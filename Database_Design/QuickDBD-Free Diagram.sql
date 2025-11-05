-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/FX7z5t
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

DROP Table if exists dbo.ProductDim
GO

CREATE TABLE [dbo].[ProductDim] (
    [ProductID] int  NOT NULL ,
    [productName] varchar(50)  NOT NULL ,
    [ProductCategoryID] int  NOT NULL ,
    [ProductCategory] varchar(50)  NOT NULL ,
    [ProductCategoryDescription] varchar(MAX)  NOT NULL ,
    [SupplierID] int  NOT NULL ,
    [Supplier] varchar(50)  NOT NULL ,
    CONSTRAINT [PK_ProductDim] PRIMARY KEY CLUSTERED (
        [ProductID] ASC
    )
)

COMMIT TRANSACTION QUICKDBD
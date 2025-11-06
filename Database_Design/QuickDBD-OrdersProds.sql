-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/M404LM
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

USE Lab1
GO

SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

DROP TABLE IF EXISTS [Orders]
GO

DROP TABLE IF EXISTS [ProductDim]
GO

CREATE TABLE [ProductDim] (

    [ProductID] int  NOT NULL ,
    [ProductName] varchar(50)  NOT NULL ,
    [ProductCategoryID] int  NOT NULL ,
    [ProductCategory] varchar(50)  NULL ,
    [ProductCategoryDescription] varchar(max)  NOT NULL ,
    [SupplierID] int  NOT NULL ,
    [Supplier] varchar(50)  NULL ,
    CONSTRAINT [PK_ProductDim] PRIMARY KEY CLUSTERED (
        [ProductID] ASC
    ),
    CONSTRAINT [UK_ProductDim_ProductName] UNIQUE (
        [ProductName]
    )
)

CREATE TABLE [Orders] (
    [OrdersPK] int  NOT NULL ,
    [OrderID] int  NOT NULL ,
    [LineItemNumber] int  NOT NULL ,
    [ProductID] int  NOT NULL ,
    [CustomerID] varchar(5)  NOT NULL ,
    [EmployeeID] int  NOT NULL ,
    [ShipVia] int  NOT NULL ,
    [OrderDate] date  NOT NULL ,
    [DaysUntilRequired] int  NOT NULL ,
    [DaysToShipped] int  NOT NULL ,
    [UnitPrice] float  NOT NULL ,
    [Quantity] int  NOT NULL ,
    [Discount] float  NOT NULL ,
    [LineItemTotal] float  NOT NULL ,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED (
        [OrdersPK] ASC
    )
)

ALTER TABLE [Orders] WITH CHECK ADD CONSTRAINT [FK_Orders_ProductID] FOREIGN KEY([ProductID])
REFERENCES [ProductDim] ([ProductID])

ALTER TABLE [Orders] CHECK CONSTRAINT [FK_Orders_ProductID]

COMMIT TRANSACTION QUICKDBD
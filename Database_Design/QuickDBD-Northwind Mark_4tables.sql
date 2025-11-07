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

DROP TABLE IF EXISTS [EmployeeDim]
GO

DROP TABLE IF EXISTS [CustomerDim]
GO

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
    [CustomerID] char(5)  NOT NULL ,
    [EmployeeID] int  NOT NULL ,
    [ShipVia] int  NOT NULL ,
    [OrderDate] date  NOT NULL ,
    [DaysUntilRequired] int  NOT NULL ,
    [DaysToShipped] int  NULL ,
    [UnitPrice] float  NOT NULL ,
    [Quantity] int  NOT NULL ,
    [Discount] float  NOT NULL ,
    [LineItemTotal] float ([UnitPrice]*[Quantity])*(1 - [Discount]) NOT NULL ,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED (
        [OrdersPK] ASC
    )
)

CREATE TABLE [CustomerDim] (
    [CustomerID] int  NOT NULL ,
    [CompanyName] varchar(500)  NOT NULL ,
    [ContactName] varchar(50)  NOT NULL ,
    [ContactTitle] varchar(10)  NOT NULL ,
    [Address] varchar(max)  NOT NULL ,
    [City] varchar(50)  NOT NULL ,
    [Region] varchar(50)  NOT NULL ,
    [PostalCode] char(9)  NOT NULL ,
    [Country] varchar(50)  NOT NULL ,
    [Phone] char(10)  NOT NULL ,
    [Fax] char(10)  NOT NULL ,
    CONSTRAINT [PK_CustomerDim] PRIMARY KEY CLUSTERED (
        [CustomerID] ASC
    )
)

CREATE TABLE [EmployeeDim] (
    [EmployeeID] int  NOT NULL ,
    [LastName] varchar(50)  NOT NULL ,
    [FirstName] varchar(50)  NOT NULL ,
    [Title] varchar(10)  NOT NULL ,
    [TitleOfCourtesy] varchar(10)  NOT NULL ,
    [BirthDate] date  NOT NULL ,
    [HireDate] date  NOT NULL ,
    [Address] varchar(100)  NOT NULL ,
    [City] varchar(200)  NOT NULL ,
    [Region] varchar(50)  NOT NULL ,
    [PostalCode] char(10)  NOT NULL ,
    [Country] varchar(50)  NOT NULL ,
    [HomePhone] char(10)  NOT NULL ,
    [Extension] char(10)  NOT NULL ,
    [ReportsTo] varchar(200)  NOT NULL ,
    CONSTRAINT [PK_EmployeeDim] PRIMARY KEY CLUSTERED (
        [EmployeeID] ASC
    )
)

ALTER TABLE [Orders] WITH CHECK ADD CONSTRAINT [FK_Orders_ProductID] FOREIGN KEY([ProductID])
REFERENCES [ProductDim] ([ProductID])

ALTER TABLE [Orders] CHECK CONSTRAINT [FK_Orders_ProductID]

ALTER TABLE [Orders] WITH CHECK ADD CONSTRAINT [FK_Orders_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [CustomerDim] ([CustomerID])

ALTER TABLE [Orders] CHECK CONSTRAINT [FK_Orders_CustomerID]

ALTER TABLE [Orders] WITH CHECK ADD CONSTRAINT [FK_Orders_EmployeeID] FOREIGN KEY([EmployeeID])
REFERENCES [EmployeeDim] ([EmployeeID])

ALTER TABLE [Orders] CHECK CONSTRAINT [FK_Orders_EmployeeID]

COMMIT TRANSACTION QUICKDBD
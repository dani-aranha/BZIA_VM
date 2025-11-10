-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/M404LM
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Script to create the [CalendarDim]/[EmployeeDim]/[CustomerDim]/[Orders]/[ProductDim] table at Lab1 database
-- Includes ISNULL logic for Region column
-- Source: Northwind_TC.sales.Customers


USE Lab1
GO

SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

DROP TABLE IF EXISTS [CalendarDim]
GO

DROP TABLE IF EXISTS [EmployeeDim]
GO

DROP TABLE IF EXISTS [CustomerDim]
GO

DROP TABLE IF EXISTS [Orders]
GO

DROP TABLE IF EXISTS [ProductDim]
GO

CREATE TABLE [CalendarDim] (
    -- DayID Used for index / Sorting also unique
    [DayID] int  NOT NULL ,
    -- Actual Date is the PK
    -- Clustered
    [DateValue] date  NOT NULL ,
    [Year] int  NULL ,
    [Quarter] int  NULL ,
    [Month] int  NULL ,
    [MonthName] varchar(10)  NULL ,
    [MonthShort] varchar(3)  NULL ,
    [Week] int  NULL ,
    [Day] int  NULL ,
    [DayName] varchar(10)  NULL ,
    [DayShort] varchar(3)  NULL ,
    [IsWeekday] bit  NULL ,
    CONSTRAINT [PK_CalendarDim] PRIMARY KEY CLUSTERED (
        [DateValue] ASC
    ),
    CONSTRAINT [UK_CalendarDim_DayID] UNIQUE (
        [DayID]
    )
)

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
    [LineItemTotal] float  NOT NULL ,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED (
        [OrdersPK] ASC
    )
)

CREATE TABLE [CustomerDim] (
    [CustomerID] char(5)  NOT NULL ,
    [CompanyName] varchar(100)  NOT NULL ,
    [ContactName] varchar(50)  NOT NULL ,
    [ContactTitle] varchar(50)  NOT NULL ,
    [Address] varchar(max)  NOT NULL ,
    [City] varchar(50)  NOT NULL ,
    [Region] varchar(50)  NOT NULL ,
    [Country] varchar(50)  NOT NULL ,
    CONSTRAINT [PK_CustomerDim] PRIMARY KEY CLUSTERED (
        [CustomerID] ASC
    )
)

CREATE TABLE [EmployeeDim] (
    [EmployeeID] int  NOT NULL ,
    [LastName] varchar(50)  NOT NULL ,
    [FirstName] varchar(50)  NOT NULL ,
    [Title] varchar(50)  NOT NULL ,
    [BirthDate] date  NOT NULL ,
    [HireDate] date  NOT NULL ,
    [City] varchar(50)  NOT NULL ,
    [Region] varchar(50)  NULL ,
    [Country] varchar(50)  NOT NULL ,
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

ALTER TABLE [Orders] WITH CHECK ADD CONSTRAINT [FK_Orders_OrderDate] FOREIGN KEY([OrderDate])
REFERENCES [CalendarDim] ([DateValue])

ALTER TABLE [Orders] CHECK CONSTRAINT [FK_Orders_OrderDate]

COMMIT TRANSACTION QUICKDBD
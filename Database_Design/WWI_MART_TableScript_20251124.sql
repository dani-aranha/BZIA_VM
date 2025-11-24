USE [WWI_Mart]
GO


CREATE TABLE [stg].[Sale](
	[SaleKey] [bigint] IDENTITY(1,1) NOT NULL,
	[CityKey] [int] NOT NULL,
	[CustomerKey] [int] NOT NULL,
	[BillToCustomerKey] [int] NOT NULL,
	[StockItemKey] [int] NOT NULL,
	[InvoiceDateKey] [date] NOT NULL,
	[DaysToDeliver] [int] NULL,
	[SalespersonKey] [int] NOT NULL,
	[WWIInvoiceID] [int] NOT NULL,
	[Package] [nvarchar](20) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[TaxRate] [decimal](18, 3) NOT NULL,
	[TotalExcludingTax] [decimal](18, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[Profit] [decimal](18, 2) NOT NULL,
	[TotalIncludingTax] [decimal](18, 2) NOT NULL,
	[TotalDryItems] [int] NOT NULL,
	[TotalChillerItems] [int] NOT NULL,
	[LineageKey] [int] NOT NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[SaleKey] ASC
))


USE Test
GO

/********************CUSTOMER TABLE***********************/

IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_CustomerID')
    ALTER TABLE fact.Sales DROP CONSTRAINT FK_CustomerID;

GO

TRUNCATE TABLE [dim].[Customer];
GO

INSERT [dim].[Customer] ([CustomerName],[City],[Country])  VALUES ('John Smith', 'West Pauline', 'Panama')
GO

INSERT [dim].[Customer] ([CustomerName],[City],[Country])  VALUES ('Mariah Stone', 'West Pauline', 'Panama')
GO

INSERT [dim].[Customer] ([CustomerName],[City],[Country])  VALUES ('Keyla Miguel', 'Del River', 'Colombia')
GO

INSERT [dim].[Customer] ([CustomerName],[City],[Country])  VALUES ('Cal Tantum', 'Del River', 'Colombia')
GO

/********************STORE TABLE***********************/

IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE name = 'FK_Store_ID')
    ALTER TABLE fact.Sales DROP CONSTRAINT FK_Store_ID;

GO

TRUNCATE TABLE [dim].[Stores];
GO

INSERT [dim].[Stores] ([store_name], [store_country]) VALUES ( 'Nuevo Home', 'Panama')
GO

INSERT [dim].[Stores] ([store_name], [store_country]) VALUES ( 'Puerto Horizonte', 'Colombia')
GO

/********************FACT TABLE***********************/



TRUNCATE TABLE [fact].[Sales];
GO

INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES ('2023-02-25', 1, 1,205.12);
GO

INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES ('2023-02-27', 1, 3,95.12);
GO

INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES ('2023-03-15', 2, 2,315.12);
GO

INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES ('2023-03-22', 1, 4,20.35);
GO

INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES ('2023-04-12', 2, 2,225.92);
GO

INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES ('2023-04-25', 2, 2,265.56);
GO

INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES ('2023-05-11', 1, 3,95.23);
GO

INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES ('2023-05-20', 2, 3, 85.51);
GO

INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES ('2023-06-02', 1, 4,165.17);
GO

INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES ('2023-06-19', 2, 1,159.47);
GO

ALTER TABLE fact.Sales
WITH CHECK ADD CONSTRAINT FK_Store_ID 
FOREIGN KEY ([store_id])
REFERENCES Dim.[Stores] ([store_id]);

ALTER TABLE fact.Sales
WITH CHECK ADD CONSTRAINT FK_CustomerID 
FOREIGN KEY (CustomerID)
REFERENCES Dim.Customer (CustomerID);

ALTER TABLE fact.Sales
ADD CONSTRAINT FK_Sales_Calendar
FOREIGN KEY (transaction_date) REFERENCES dim.Calendar(DateValue);


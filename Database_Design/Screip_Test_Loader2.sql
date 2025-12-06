USE Test
GO

-- =================================================================
-- 1. DROP existing foreign key constraints to ensure a clean start
-- =================================================================

IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'fact.FK_Sales_Calendar', N'F'))
    ALTER TABLE fact.Sales DROP CONSTRAINT FK_Sales_Calendar;
GO

IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'fact.FK_Store_ID', N'F'))
    ALTER TABLE fact.Sales DROP CONSTRAINT FK_Store_ID;
GO

IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'fact.FK_CustomerID', N'F'))
    ALTER TABLE fact.Sales DROP CONSTRAINT FK_CustomerID;
GO


-- =================================================================
-- 2. TRUNCATE tables to remove all old data
-- NOTE: Fact table first, then dimensions.
-- =================================================================

TRUNCATE TABLE [fact].[Sales];
TRUNCATE TABLE [dim].[Customer];
TRUNCATE TABLE [dim].[Stores];
GO


-- =================================================================
-- 3. SEED Dimension Tables
-- =================================================================

-- Seed Customer Table
INSERT [dim].[Customer] ([CustomerName],[City],[Country])  VALUES 
('John Smith', 'West Pauline', 'Panama'),
('Mariah Stone', 'West Pauline', 'Panama'),
('Keyla Miguel', 'Del River', 'Colombia'),
('Cal Tantum', 'Del River', 'Colombia');
GO

-- Seed Stores Table
INSERT [dim].[Stores] ([store_name], [store_country]) VALUES 
('Nuevo Home', 'Panama'),
('Puerto Horizonte', 'Colombia');
GO

-- NOTE: Your dim.Calendar table should already be populated by its
-- separate script. If you are unsure, run that script again now.


-- =================================================================
-- 4. SEED Fact Table
-- =================================================================

INSERT [fact].[Sales] ([transaction_date], [store_id], [CustomerID], [TotalSale]) VALUES 
('2023-02-25', 1, 1, 205.12),
('2023-02-27', 1, 3, 95.12),
('2023-03-15', 2, 2, 315.12),
('2023-03-22', 1, 4, 20.35),
('2023-04-12', 2, 2, 225.92),
('2023-04-25', 2, 2, 265.56),
('2023-05-11', 1, 3, 95.23),
('2023-05-20', 2, 3, 85.51),
('2023-06-02', 1, 4, 165.17),
('2023-06-19', 2, 1, 159.47);
GO


-- =================================================================
-- 5. CREATE all foreign key constraints
-- This will now succeed because the data is guaranteed to be clean.
-- =================================================================

ALTER TABLE fact.Sales
WITH CHECK ADD CONSTRAINT FK_Store_ID 
FOREIGN KEY ([store_id])
REFERENCES dim.[Stores] ([store_id]);
GO

ALTER TABLE fact.Sales
WITH CHECK ADD CONSTRAINT FK_CustomerID 
FOREIGN KEY (CustomerID)
REFERENCES dim.Customer (CustomerID);
GO

-- The key relationship
ALTER TABLE fact.Sales
WITH CHECK ADD CONSTRAINT FK_Sales_Calendar
FOREIGN KEY (transaction_date) 
REFERENCES dim.Calendar(DateValue);
GO

PRINT 'All tables seeded and relationships created successfully.';

USE [TC_Practice]
GO
TRUNCATE TABLE [src].[Regions]
GO
TRUNCATE TABLE [src].[Sales23]
GO
TRUNCATE TABLE [src].[Sales24]
GO
TRUNCATE TABLE [src].[Stores]
GO


INSERT [src].[Regions] ([region_id], [sales_district], [sales_region]) VALUES (2, N'Mexico City', N'Mexico Central')
GO
INSERT [src].[Regions] ([region_id], [sales_district], [sales_region]) VALUES (4, N'Guadalajara', N'Mexico West')
GO
INSERT [src].[Regions] ([region_id], [sales_district], [sales_region]) VALUES (5, N'Vancouver', N'Canada West')
GO
INSERT [src].[Regions] ([region_id], [sales_district], [sales_region]) VALUES (6, N'Victoria', N'Canada West')
GO
INSERT [src].[Regions] ([region_id], [sales_district], [sales_region]) VALUES (24, N'Orizaba', N'Mexico Central')
GO
INSERT [src].[Regions] ([region_id], [sales_district], [sales_region]) VALUES (25, N'Hidalgo', N'Mexico Central')
GO
INSERT [src].[Regions] ([region_id], [sales_district], [sales_region]) VALUES (26, N'Marida', N'Mexico South')
GO
INSERT [src].[Regions] ([region_id], [sales_district], [sales_region]) VALUES (27, N'Camacho', N'Mexico Central')
GO
INSERT [src].[Regions] ([region_id], [sales_district], [sales_region]) VALUES (28, N'Acapulco', N'Mexico West')
GO
INSERT [src].[Regions] ([region_id], [sales_district], [sales_region]) VALUES (106, N'Mexico City', N'Mexico Central')
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-09' AS Date), 12, CAST(30426.82 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-28' AS Date), 9, CAST(6236.57 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-07' AS Date), 1, CAST(12242.98 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-26' AS Date), 18, CAST(3926.20 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-08' AS Date), 20, CAST(7701.96 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-21' AS Date), 5, CAST(7924.72 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-16' AS Date), 9, CAST(5494.34 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-29' AS Date), 12, CAST(29609.67 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-06' AS Date), 9, CAST(6580.93 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-16' AS Date), 20, CAST(6975.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-17' AS Date), 12, CAST(37141.79 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-25' AS Date), 4, CAST(21055.47 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-04' AS Date), 21, CAST(25935.43 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-08' AS Date), 21, CAST(38824.99 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-28' AS Date), 9, CAST(6263.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-02' AS Date), 9, CAST(5452.77 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-01' AS Date), 8, CAST(12383.08 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-20' AS Date), 4, CAST(15930.50 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-14' AS Date), 21, CAST(13406.83 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-12' AS Date), 12, CAST(28331.41 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-11' AS Date), 10, CAST(12328.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-08' AS Date), 20, CAST(4754.43 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-19' AS Date), 1, CAST(19046.08 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-02' AS Date), 4, CAST(15300.57 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-20' AS Date), 18, CAST(5302.73 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-13' AS Date), 9, CAST(5105.75 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-09' AS Date), 1, CAST(13329.79 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-06' AS Date), 5, CAST(2589.71 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-02' AS Date), 12, CAST(30239.36 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-27' AS Date), 19, CAST(22650.79 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-29' AS Date), 5, CAST(1120.39 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-16' AS Date), 19, CAST(23915.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-12' AS Date), 10, CAST(21485.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-26' AS Date), 21, CAST(19142.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-17' AS Date), 20, CAST(8339.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-24' AS Date), 5, CAST(2084.34 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-21' AS Date), 20, CAST(7001.91 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-22' AS Date), 19, CAST(31355.07 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-04' AS Date), 21, CAST(25588.93 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-04' AS Date), 20, CAST(3583.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-09' AS Date), 20, CAST(6418.00 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-12' AS Date), 21, CAST(19793.86 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-03' AS Date), 9, CAST(14215.78 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-01' AS Date), 4, CAST(19312.43 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-03' AS Date), 8, CAST(32477.17 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-08' AS Date), 1, CAST(26843.64 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-02' AS Date), 12, CAST(21707.65 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-10' AS Date), 21, CAST(22674.84 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-10' AS Date), 10, CAST(19999.03 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-18' AS Date), 20, CAST(4735.31 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-28' AS Date), 9, CAST(7721.55 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-30' AS Date), 18, CAST(6516.40 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-14' AS Date), 10, CAST(13825.29 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-11' AS Date), 20, CAST(4640.87 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-19' AS Date), 12, CAST(27583.33 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-25' AS Date), 9, CAST(3072.94 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-01' AS Date), 21, CAST(25270.06 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-07' AS Date), 1, CAST(15449.72 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-08' AS Date), 18, CAST(10445.37 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-30' AS Date), 9, CAST(7620.75 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-13' AS Date), 4, CAST(13919.83 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-05' AS Date), 20, CAST(5987.75 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-03' AS Date), 10, CAST(12252.22 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-01' AS Date), 18, CAST(5437.45 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-15' AS Date), 19, CAST(21524.97 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-24' AS Date), 21, CAST(19463.68 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-14' AS Date), 18, CAST(1564.77 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-27' AS Date), 18, CAST(5866.90 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-04' AS Date), 12, CAST(29636.08 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-26' AS Date), 21, CAST(30154.64 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-06' AS Date), 8, CAST(29454.82 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-11' AS Date), 9, CAST(7070.65 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-04' AS Date), 4, CAST(14442.88 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-15' AS Date), 10, CAST(13859.84 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-23' AS Date), 19, CAST(31690.36 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-16' AS Date), 21, CAST(25463.64 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-29' AS Date), 10, CAST(25823.03 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-23' AS Date), 18, CAST(10193.97 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-19' AS Date), 19, CAST(19232.70 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-25' AS Date), 10, CAST(16372.48 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-26' AS Date), 12, CAST(20905.89 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-13' AS Date), 8, CAST(22759.78 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-05' AS Date), 4, CAST(20603.45 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-27' AS Date), 19, CAST(30112.64 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-12' AS Date), 1, CAST(19210.88 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-23' AS Date), 19, CAST(31519.98 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-09' AS Date), 9, CAST(7229.32 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-12' AS Date), 4, CAST(20154.93 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-13' AS Date), 5, CAST(752.75 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-29' AS Date), 21, CAST(20771.74 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-29' AS Date), 20, CAST(5958.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-06' AS Date), 8, CAST(22095.07 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-22' AS Date), 8, CAST(25369.90 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-07' AS Date), 12, CAST(27937.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-27' AS Date), 9, CAST(3123.98 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-11' AS Date), 12, CAST(35181.24 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-17' AS Date), 4, CAST(14713.17 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-10' AS Date), 10, CAST(17901.94 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-10' AS Date), 18, CAST(4968.94 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-03' AS Date), 5, CAST(3319.65 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-18' AS Date), 8, CAST(26522.31 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-23' AS Date), 9, CAST(11153.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-11' AS Date), 10, CAST(19013.90 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-22' AS Date), 8, CAST(34637.40 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-21' AS Date), 20, CAST(6281.06 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-21' AS Date), 21, CAST(27211.82 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-28' AS Date), 4, CAST(14889.85 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-03' AS Date), 5, CAST(665.83 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-17' AS Date), 4, CAST(21079.96 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-25' AS Date), 5, CAST(2542.60 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-24' AS Date), 18, CAST(8311.41 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-26' AS Date), 10, CAST(16247.83 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-27' AS Date), 4, CAST(18879.47 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-17' AS Date), 20, CAST(6744.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-07' AS Date), 12, CAST(23025.47 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-17' AS Date), 19, CAST(31788.94 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-19' AS Date), 5, CAST(3152.12 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-22' AS Date), 21, CAST(22099.72 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-03' AS Date), 1, CAST(16347.41 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-19' AS Date), 4, CAST(28050.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-24' AS Date), 21, CAST(29616.94 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-28' AS Date), 18, CAST(9067.51 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-29' AS Date), 8, CAST(23261.69 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-25' AS Date), 1, CAST(10541.43 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-20' AS Date), 18, CAST(8348.68 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-22' AS Date), 4, CAST(16688.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-23' AS Date), 5, CAST(823.98 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-19' AS Date), 10, CAST(17277.91 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-05' AS Date), 21, CAST(17649.51 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-06' AS Date), 18, CAST(6045.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-23' AS Date), 12, CAST(38394.62 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-07' AS Date), 19, CAST(18938.53 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-28' AS Date), 18, CAST(9317.92 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-16' AS Date), 8, CAST(20311.65 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-07' AS Date), 12, CAST(17083.91 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-04' AS Date), 9, CAST(6824.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-16' AS Date), 1, CAST(14605.11 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-17' AS Date), 19, CAST(27499.37 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-07' AS Date), 12, CAST(19356.83 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-14' AS Date), 5, CAST(2208.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-03' AS Date), 18, CAST(6224.36 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-15' AS Date), 8, CAST(28471.01 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-30' AS Date), 10, CAST(23303.39 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-29' AS Date), 18, CAST(3302.89 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-18' AS Date), 8, CAST(26062.15 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-24' AS Date), 1, CAST(11824.11 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-03' AS Date), 8, CAST(28277.15 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-13' AS Date), 20, CAST(10702.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-16' AS Date), 18, CAST(5586.98 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-15' AS Date), 1, CAST(23347.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-02' AS Date), 1, CAST(11472.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-29' AS Date), 18, CAST(8265.84 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-17' AS Date), 1, CAST(27399.17 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-14' AS Date), 5, CAST(3802.09 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-12' AS Date), 9, CAST(4780.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-27' AS Date), 19, CAST(20460.71 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-08' AS Date), 19, CAST(33668.90 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-13' AS Date), 8, CAST(26401.01 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-02' AS Date), 9, CAST(7215.17 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-07' AS Date), 10, CAST(15819.25 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-20' AS Date), 1, CAST(27560.89 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-28' AS Date), 20, CAST(7927.22 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-05' AS Date), 19, CAST(33721.71 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-20' AS Date), 19, CAST(20688.06 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-22' AS Date), 18, CAST(4372.48 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-01' AS Date), 20, CAST(2990.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-08' AS Date), 12, CAST(19598.28 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-18' AS Date), 19, CAST(23020.80 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-11' AS Date), 21, CAST(30394.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-27' AS Date), 19, CAST(36915.11 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-24' AS Date), 21, CAST(22730.09 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-19' AS Date), 18, CAST(7119.64 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-19' AS Date), 12, CAST(25652.71 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-12' AS Date), 21, CAST(25078.01 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-26' AS Date), 9, CAST(6203.55 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-22' AS Date), 10, CAST(19054.59 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-07' AS Date), 10, CAST(17977.82 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-29' AS Date), 10, CAST(16256.03 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-17' AS Date), 18, CAST(5117.21 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-03' AS Date), 4, CAST(11139.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-04' AS Date), 12, CAST(25042.26 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-02' AS Date), 1, CAST(16622.05 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-29' AS Date), 19, CAST(25701.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-06' AS Date), 1, CAST(10775.62 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-13' AS Date), 4, CAST(11023.44 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-13' AS Date), 21, CAST(22220.21 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-08' AS Date), 20, CAST(11284.46 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-20' AS Date), 18, CAST(14852.03 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-27' AS Date), 20, CAST(3903.55 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-05' AS Date), 19, CAST(21363.81 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-16' AS Date), 19, CAST(28998.93 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-28' AS Date), 1, CAST(17107.92 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-21' AS Date), 9, CAST(8719.50 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-03' AS Date), 4, CAST(13421.11 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-25' AS Date), 9, CAST(8854.09 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-28' AS Date), 21, CAST(25502.11 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-14' AS Date), 21, CAST(20918.82 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-16' AS Date), 4, CAST(19323.84 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-18' AS Date), 8, CAST(26437.81 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-01' AS Date), 21, CAST(24119.99 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-18' AS Date), 20, CAST(9253.44 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-25' AS Date), 4, CAST(8282.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-30' AS Date), 5, CAST(3958.34 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-27' AS Date), 19, CAST(23435.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-13' AS Date), 18, CAST(5197.57 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-12' AS Date), 12, CAST(31804.69 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-08' AS Date), 18, CAST(9303.68 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-13' AS Date), 5, CAST(4337.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-19' AS Date), 9, CAST(9452.30 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-17' AS Date), 18, CAST(8708.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-17' AS Date), 19, CAST(21558.28 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-06' AS Date), 8, CAST(32265.59 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-10' AS Date), 9, CAST(10676.72 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-15' AS Date), 10, CAST(14292.89 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-25' AS Date), 5, CAST(2498.43 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-12' AS Date), 12, CAST(30514.30 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-11' AS Date), 10, CAST(14014.06 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-05' AS Date), 20, CAST(5779.22 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-10' AS Date), 8, CAST(27399.15 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-26' AS Date), 12, CAST(31961.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-29' AS Date), 21, CAST(26946.01 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-06' AS Date), 19, CAST(33136.16 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-28' AS Date), 1, CAST(20261.49 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-22' AS Date), 9, CAST(6255.34 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-12' AS Date), 21, CAST(39589.20 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-06' AS Date), 9, CAST(11821.63 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-29' AS Date), 5, CAST(3567.41 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-10' AS Date), 8, CAST(21375.75 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-07' AS Date), 12, CAST(35460.31 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-11' AS Date), 18, CAST(7481.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-19' AS Date), 18, CAST(9611.88 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-27' AS Date), 10, CAST(16620.97 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-17' AS Date), 1, CAST(11418.40 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-10' AS Date), 19, CAST(13727.83 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-15' AS Date), 5, CAST(1675.83 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-05' AS Date), 10, CAST(17390.97 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-27' AS Date), 9, CAST(4398.55 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-11' AS Date), 12, CAST(25559.79 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-22' AS Date), 10, CAST(22243.74 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-12' AS Date), 10, CAST(11843.19 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-03' AS Date), 1, CAST(16524.88 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-17' AS Date), 20, CAST(8526.53 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-25' AS Date), 9, CAST(8764.03 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-12' AS Date), 9, CAST(7350.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-26' AS Date), 10, CAST(23471.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-27' AS Date), 12, CAST(26614.34 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-22' AS Date), 10, CAST(18395.47 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-20' AS Date), 1, CAST(19664.97 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-18' AS Date), 10, CAST(18899.93 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-02' AS Date), 20, CAST(5647.29 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-20' AS Date), 20, CAST(4258.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-29' AS Date), 5, CAST(3382.92 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-06' AS Date), 12, CAST(27232.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-26' AS Date), 10, CAST(15543.44 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-02' AS Date), 4, CAST(31778.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-11' AS Date), 10, CAST(21136.61 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-21' AS Date), 12, CAST(22168.70 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-09' AS Date), 18, CAST(8509.29 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-16' AS Date), 18, CAST(7432.50 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-07' AS Date), 19, CAST(25356.03 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-19' AS Date), 1, CAST(22233.09 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-29' AS Date), 18, CAST(4409.75 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-09' AS Date), 21, CAST(22735.47 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-21' AS Date), 1, CAST(23431.88 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-14' AS Date), 1, CAST(15213.07 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-13' AS Date), 12, CAST(28139.96 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-17' AS Date), 12, CAST(28949.25 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-29' AS Date), 20, CAST(6871.37 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-23' AS Date), 9, CAST(4509.11 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-09' AS Date), 9, CAST(10632.97 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-23' AS Date), 10, CAST(22276.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-22' AS Date), 8, CAST(18846.07 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-06' AS Date), 20, CAST(8065.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-12' AS Date), 10, CAST(19261.46 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-08' AS Date), 19, CAST(25527.25 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-20' AS Date), 20, CAST(5108.64 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-03' AS Date), 5, CAST(1197.36 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-02' AS Date), 12, CAST(27649.87 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-22' AS Date), 5, CAST(5020.15 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-23' AS Date), 8, CAST(20152.25 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-07' AS Date), 5, CAST(1593.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-10' AS Date), 19, CAST(18856.63 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-07' AS Date), 18, CAST(8609.25 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-25' AS Date), 12, CAST(33582.86 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-13' AS Date), 8, CAST(18723.44 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-22' AS Date), 21, CAST(25387.04 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-28' AS Date), 10, CAST(16406.06 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-27' AS Date), 8, CAST(22103.92 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-01' AS Date), 9, CAST(6224.74 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-29' AS Date), 4, CAST(17589.96 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-26' AS Date), 20, CAST(5975.03 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-22' AS Date), 5, CAST(2856.56 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-19' AS Date), 9, CAST(10510.56 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-28' AS Date), 5, CAST(4089.76 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-01' AS Date), 5, CAST(591.55 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-28' AS Date), 12, CAST(18790.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-25' AS Date), 20, CAST(7411.41 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-11' AS Date), 21, CAST(25126.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-07' AS Date), 4, CAST(14437.39 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-21' AS Date), 9, CAST(8362.24 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-23' AS Date), 4, CAST(8238.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-24' AS Date), 5, CAST(2139.86 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-23' AS Date), 4, CAST(16049.89 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-21' AS Date), 21, CAST(20917.33 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-10' AS Date), 5, CAST(1897.89 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-03' AS Date), 21, CAST(29646.77 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-27' AS Date), 5, CAST(3222.51 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-09' AS Date), 1, CAST(17315.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-07' AS Date), 21, CAST(23086.12 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-21' AS Date), 18, CAST(6562.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-17' AS Date), 21, CAST(35263.91 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-06' AS Date), 18, CAST(6491.69 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-02' AS Date), 19, CAST(26798.49 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-21' AS Date), 20, CAST(10012.66 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-25' AS Date), 21, CAST(32603.56 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-04' AS Date), 9, CAST(9085.94 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-24' AS Date), 1, CAST(15754.17 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-16' AS Date), 18, CAST(7421.14 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-14' AS Date), 5, CAST(2888.80 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-19' AS Date), 8, CAST(37653.50 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-20' AS Date), 9, CAST(9716.42 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-19' AS Date), 5, CAST(2722.62 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-13' AS Date), 20, CAST(6724.57 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-26' AS Date), 5, CAST(2513.85 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-15' AS Date), 1, CAST(15447.78 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-13' AS Date), 5, CAST(2052.19 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-22' AS Date), 8, CAST(21017.46 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-06' AS Date), 19, CAST(28261.07 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-19' AS Date), 1, CAST(17993.96 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-26' AS Date), 4, CAST(14200.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-17' AS Date), 10, CAST(13579.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-19' AS Date), 19, CAST(31971.33 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-13' AS Date), 10, CAST(15159.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-25' AS Date), 1, CAST(16457.99 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-24' AS Date), 8, CAST(22483.15 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-25' AS Date), 9, CAST(7490.20 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-27' AS Date), 4, CAST(22487.22 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-18' AS Date), 20, CAST(8289.71 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-29' AS Date), 1, CAST(17374.57 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-22' AS Date), 18, CAST(5629.82 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-11' AS Date), 8, CAST(23695.19 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-10' AS Date), 21, CAST(29501.69 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-03' AS Date), 1, CAST(16367.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-17' AS Date), 10, CAST(21563.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-09' AS Date), 18, CAST(8801.15 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-30' AS Date), 10, CAST(15454.03 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-22' AS Date), 10, CAST(15006.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-06' AS Date), 4, CAST(12079.75 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-14' AS Date), 21, CAST(27977.42 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-22' AS Date), 4, CAST(5292.53 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-08' AS Date), 9, CAST(5867.22 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-27' AS Date), 18, CAST(11414.99 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-16' AS Date), 8, CAST(28783.96 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-24' AS Date), 20, CAST(5837.53 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-04' AS Date), 4, CAST(20517.93 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-04' AS Date), 9, CAST(5434.51 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-09' AS Date), 19, CAST(37765.26 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-11' AS Date), 12, CAST(30680.19 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-13' AS Date), 1, CAST(19550.08 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-07' AS Date), 20, CAST(7793.71 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-28' AS Date), 19, CAST(26993.82 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-27' AS Date), 18, CAST(5971.16 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-16' AS Date), 10, CAST(21454.62 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-13' AS Date), 21, CAST(24604.93 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-10' AS Date), 18, CAST(5271.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-25' AS Date), 21, CAST(20630.82 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-02' AS Date), 5, CAST(3858.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-22' AS Date), 9, CAST(7443.87 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-03' AS Date), 9, CAST(4496.32 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-03' AS Date), 8, CAST(41772.92 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-22' AS Date), 5, CAST(3143.20 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-23' AS Date), 10, CAST(15828.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-06' AS Date), 21, CAST(25834.41 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-07' AS Date), 8, CAST(33870.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-04' AS Date), 5, CAST(1939.22 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-03' AS Date), 4, CAST(13610.49 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-11' AS Date), 21, CAST(26224.03 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-05' AS Date), 8, CAST(20493.80 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-10' AS Date), 1, CAST(14205.00 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-09' AS Date), 19, CAST(17268.84 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-18' AS Date), 8, CAST(29476.98 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-11' AS Date), 4, CAST(24340.53 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-23' AS Date), 8, CAST(29551.22 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-16' AS Date), 19, CAST(28914.87 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-23' AS Date), 9, CAST(7550.42 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-18' AS Date), 1, CAST(21451.04 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-27' AS Date), 8, CAST(21835.19 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-22' AS Date), 21, CAST(27841.88 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-08' AS Date), 18, CAST(7283.73 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-07' AS Date), 4, CAST(21302.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-29' AS Date), 20, CAST(7325.66 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-11' AS Date), 5, CAST(2284.08 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-07' AS Date), 8, CAST(23232.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-11' AS Date), 10, CAST(10260.86 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-24' AS Date), 10, CAST(12838.12 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-16' AS Date), 5, CAST(3431.78 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-14' AS Date), 1, CAST(25132.62 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-06' AS Date), 18, CAST(4634.78 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-11' AS Date), 9, CAST(4122.17 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-18' AS Date), 18, CAST(5452.26 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-28' AS Date), 19, CAST(18511.05 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-03' AS Date), 9, CAST(8471.43 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-17' AS Date), 12, CAST(22782.95 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-18' AS Date), 21, CAST(27603.42 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-06' AS Date), 4, CAST(19678.24 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-21' AS Date), 19, CAST(23009.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-22' AS Date), 21, CAST(22201.91 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-13' AS Date), 9, CAST(13130.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-30' AS Date), 1, CAST(19026.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-17' AS Date), 19, CAST(33496.24 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-22' AS Date), 8, CAST(28854.66 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-08' AS Date), 20, CAST(6726.43 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-15' AS Date), 9, CAST(7982.97 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-12' AS Date), 8, CAST(23018.06 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-22' AS Date), 1, CAST(17658.49 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-24' AS Date), 20, CAST(5721.22 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-23' AS Date), 9, CAST(11681.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-23' AS Date), 4, CAST(14263.68 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-23' AS Date), 10, CAST(15784.85 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-06' AS Date), 4, CAST(9299.47 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-09' AS Date), 1, CAST(25468.49 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-13' AS Date), 8, CAST(20480.19 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-26' AS Date), 21, CAST(20340.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-17' AS Date), 8, CAST(26575.60 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-24' AS Date), 18, CAST(4819.97 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-26' AS Date), 20, CAST(4709.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-02' AS Date), 8, CAST(30211.92 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-13' AS Date), 12, CAST(30756.43 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-14' AS Date), 12, CAST(15173.92 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-06' AS Date), 8, CAST(23512.93 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-07' AS Date), 9, CAST(6512.90 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-17' AS Date), 10, CAST(15028.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-15' AS Date), 1, CAST(14839.10 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-18' AS Date), 20, CAST(7072.43 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-26' AS Date), 19, CAST(23949.71 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-08' AS Date), 20, CAST(3327.72 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-12' AS Date), 9, CAST(3501.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-03' AS Date), 18, CAST(6517.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-23' AS Date), 4, CAST(16838.53 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-23' AS Date), 10, CAST(17583.69 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-17' AS Date), 9, CAST(8073.58 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-05' AS Date), 21, CAST(23782.31 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-11' AS Date), 1, CAST(16929.05 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-08' AS Date), 4, CAST(11741.28 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-10' AS Date), 8, CAST(25986.31 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-02' AS Date), 10, CAST(13943.16 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-12' AS Date), 8, CAST(31680.93 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-13' AS Date), 12, CAST(21802.34 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-18' AS Date), 18, CAST(3468.93 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-07' AS Date), 19, CAST(19097.85 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-02' AS Date), 21, CAST(16189.03 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-01' AS Date), 12, CAST(26123.53 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-04' AS Date), 4, CAST(14587.21 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-15' AS Date), 20, CAST(7239.20 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-17' AS Date), 12, CAST(21289.20 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-26' AS Date), 12, CAST(27906.83 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-10' AS Date), 19, CAST(27348.06 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-27' AS Date), 19, CAST(22645.71 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-09' AS Date), 12, CAST(22389.47 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-04' AS Date), 4, CAST(17653.94 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-02' AS Date), 8, CAST(33386.44 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-10' AS Date), 20, CAST(6197.70 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-11' AS Date), 21, CAST(21882.28 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-07' AS Date), 10, CAST(13399.83 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-06' AS Date), 8, CAST(20480.09 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-12' AS Date), 5, CAST(2471.95 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-22' AS Date), 12, CAST(30925.98 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-14' AS Date), 9, CAST(7844.44 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-28' AS Date), 4, CAST(18005.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-11' AS Date), 12, CAST(33337.81 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-02' AS Date), 4, CAST(17469.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-18' AS Date), 1, CAST(22805.28 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-19' AS Date), 18, CAST(11003.50 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-16' AS Date), 20, CAST(8510.36 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-02' AS Date), 10, CAST(19467.29 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-25' AS Date), 18, CAST(4422.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-15' AS Date), 19, CAST(25641.28 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-13' AS Date), 12, CAST(22694.91 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-06' AS Date), 19, CAST(27559.61 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-13' AS Date), 1, CAST(15221.06 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-09' AS Date), 18, CAST(3204.28 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-12' AS Date), 21, CAST(22860.42 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-24' AS Date), 5, CAST(1422.98 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-29' AS Date), 8, CAST(23251.95 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-16' AS Date), 4, CAST(20027.70 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-10' AS Date), 12, CAST(18940.92 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-30' AS Date), 9, CAST(7615.72 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-12' AS Date), 8, CAST(25042.93 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-21' AS Date), 19, CAST(30206.66 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-02' AS Date), 10, CAST(12675.58 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-03' AS Date), 8, CAST(26147.09 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-19' AS Date), 12, CAST(22476.96 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-21' AS Date), 9, CAST(6867.90 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-27' AS Date), 21, CAST(25286.60 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-23' AS Date), 4, CAST(19159.45 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-25' AS Date), 9, CAST(10671.03 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-14' AS Date), 4, CAST(20105.24 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-06' AS Date), 12, CAST(29151.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-03' AS Date), 20, CAST(5347.76 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-07' AS Date), 20, CAST(5103.86 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-05' AS Date), 4, CAST(10940.32 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-08' AS Date), 1, CAST(10154.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-24' AS Date), 19, CAST(23589.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-12' AS Date), 1, CAST(13759.97 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-09' AS Date), 4, CAST(25977.09 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-25' AS Date), 8, CAST(24870.11 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-20' AS Date), 20, CAST(2866.17 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-20' AS Date), 19, CAST(17239.78 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-10' AS Date), 19, CAST(28282.56 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-10' AS Date), 12, CAST(29494.71 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-22' AS Date), 21, CAST(23148.44 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-06' AS Date), 4, CAST(21062.01 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-17' AS Date), 8, CAST(25716.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-17' AS Date), 12, CAST(27225.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-18' AS Date), 18, CAST(10617.42 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-12' AS Date), 21, CAST(27441.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-29' AS Date), 18, CAST(6229.96 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-15' AS Date), 19, CAST(30179.20 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-24' AS Date), 5, CAST(4301.97 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-09' AS Date), 8, CAST(36295.16 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-29' AS Date), 21, CAST(25804.99 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-19' AS Date), 20, CAST(4820.41 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-06' AS Date), 20, CAST(4414.14 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-17' AS Date), 8, CAST(25495.83 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-29' AS Date), 12, CAST(29154.90 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-04' AS Date), 1, CAST(12762.48 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-15' AS Date), 21, CAST(20003.56 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-25' AS Date), 8, CAST(29171.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-30' AS Date), 20, CAST(7833.94 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-08' AS Date), 21, CAST(21223.09 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-12' AS Date), 20, CAST(9203.59 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-12' AS Date), 1, CAST(11922.22 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-10' AS Date), 18, CAST(6029.85 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-22' AS Date), 4, CAST(18799.39 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-20' AS Date), 20, CAST(4988.96 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-11' AS Date), 5, CAST(5129.72 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-13' AS Date), 9, CAST(3122.87 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-07' AS Date), 21, CAST(24092.01 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-19' AS Date), 18, CAST(5287.37 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-09' AS Date), 4, CAST(15693.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-24' AS Date), 9, CAST(7382.30 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-08' AS Date), 20, CAST(5324.50 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-08' AS Date), 19, CAST(25368.57 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-05' AS Date), 5, CAST(4274.74 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-17' AS Date), 1, CAST(13391.45 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-09' AS Date), 5, CAST(1803.19 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-17' AS Date), 12, CAST(27051.50 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-11' AS Date), 18, CAST(7943.95 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-01' AS Date), 10, CAST(26573.46 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-19' AS Date), 1, CAST(16278.05 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-27' AS Date), 10, CAST(21020.50 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-16' AS Date), 4, CAST(11348.50 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-11' AS Date), 8, CAST(22365.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-23' AS Date), 1, CAST(16727.82 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-15' AS Date), 21, CAST(24593.10 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-04' AS Date), 8, CAST(26808.45 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-29' AS Date), 18, CAST(6082.47 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-05' AS Date), 12, CAST(22635.73 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-07' AS Date), 4, CAST(10447.46 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-07' AS Date), 20, CAST(3655.97 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-14' AS Date), 1, CAST(15938.93 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-16' AS Date), 12, CAST(35498.59 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-23' AS Date), 1, CAST(18812.32 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-10' AS Date), 8, CAST(17882.93 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-22' AS Date), 4, CAST(13511.33 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-21' AS Date), 12, CAST(20252.14 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-14' AS Date), 20, CAST(4219.83 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-26' AS Date), 19, CAST(21463.32 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-27' AS Date), 1, CAST(13827.84 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-18' AS Date), 20, CAST(4098.62 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-17' AS Date), 19, CAST(34109.67 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-13' AS Date), 18, CAST(9764.43 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-08' AS Date), 10, CAST(14645.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-03' AS Date), 18, CAST(10267.79 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-09' AS Date), 1, CAST(18573.55 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-10' AS Date), 20, CAST(9129.46 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-03' AS Date), 5, CAST(3266.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-02' AS Date), 5, CAST(1859.97 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-14' AS Date), 12, CAST(36887.04 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-01' AS Date), 19, CAST(19424.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-25' AS Date), 1, CAST(17541.16 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-06' AS Date), 5, CAST(3111.22 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-11' AS Date), 19, CAST(30048.62 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-23' AS Date), 19, CAST(39979.66 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-19' AS Date), 19, CAST(23656.86 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-01' AS Date), 5, CAST(1279.36 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-01' AS Date), 4, CAST(15478.31 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-25' AS Date), 1, CAST(17722.44 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-14' AS Date), 10, CAST(14009.17 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-26' AS Date), 18, CAST(10303.40 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-02' AS Date), 12, CAST(31643.78 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-08' AS Date), 1, CAST(18862.83 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-14' AS Date), 10, CAST(18475.19 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-08' AS Date), 18, CAST(5358.56 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-01' AS Date), 20, CAST(5001.49 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-05' AS Date), 20, CAST(3546.15 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-16' AS Date), 5, CAST(1932.59 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-15' AS Date), 18, CAST(2841.91 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-26' AS Date), 5, CAST(2486.91 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-18' AS Date), 12, CAST(28377.64 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-17' AS Date), 21, CAST(24771.39 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-24' AS Date), 19, CAST(31541.79 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-04' AS Date), 21, CAST(32892.59 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-15' AS Date), 9, CAST(6149.91 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-16' AS Date), 1, CAST(29275.53 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-11' AS Date), 8, CAST(25657.26 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-20' AS Date), 19, CAST(33380.82 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-02' AS Date), 1, CAST(14630.84 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-21' AS Date), 21, CAST(25326.19 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-17' AS Date), 4, CAST(12819.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-17' AS Date), 9, CAST(5205.88 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-29' AS Date), 12, CAST(17829.61 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-05' AS Date), 5, CAST(3243.67 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-19' AS Date), 12, CAST(30864.06 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-26' AS Date), 4, CAST(19590.63 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-09' AS Date), 4, CAST(13744.87 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-09' AS Date), 5, CAST(1297.58 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-22' AS Date), 10, CAST(15481.49 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-23' AS Date), 12, CAST(19849.36 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-02' AS Date), 5, CAST(2317.89 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-04' AS Date), 20, CAST(4253.56 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-03' AS Date), 10, CAST(16105.56 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-24' AS Date), 8, CAST(34099.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-17' AS Date), 5, CAST(1824.37 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-16' AS Date), 18, CAST(6465.60 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-29' AS Date), 10, CAST(34792.67 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-21' AS Date), 5, CAST(776.47 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-10' AS Date), 9, CAST(7022.98 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-09' AS Date), 5, CAST(1352.82 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-26' AS Date), 5, CAST(2540.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-07' AS Date), 10, CAST(18297.47 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-28' AS Date), 5, CAST(2075.48 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-17' AS Date), 5, CAST(5369.07 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-19' AS Date), 8, CAST(27933.58 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-07' AS Date), 4, CAST(22143.59 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-28' AS Date), 19, CAST(26106.51 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-25' AS Date), 10, CAST(24116.87 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-23' AS Date), 5, CAST(4284.97 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-10' AS Date), 8, CAST(25274.72 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-04-11' AS Date), 10, CAST(12755.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-08-09' AS Date), 20, CAST(6238.21 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-16' AS Date), 5, CAST(2229.71 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-23' AS Date), 10, CAST(16607.86 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-19' AS Date), 10, CAST(16359.68 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-18' AS Date), 9, CAST(7833.55 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-11-27' AS Date), 21, CAST(23945.66 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-27' AS Date), 20, CAST(7962.15 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-03' AS Date), 12, CAST(23829.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-15' AS Date), 1, CAST(19651.28 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-09-09' AS Date), 9, CAST(6045.80 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-07-29' AS Date), 4, CAST(23751.56 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-10-27' AS Date), 1, CAST(11462.64 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-23' AS Date), 19, CAST(18434.32 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-03-21' AS Date), 19, CAST(23552.30 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-06-28' AS Date), 4, CAST(11130.34 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-12-23' AS Date), 21, CAST(29969.04 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-02-02' AS Date), 8, CAST(26349.51 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-02' AS Date), 4, CAST(10095.96 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-05-29' AS Date), 5, CAST(5086.49 AS Decimal(38, 2)))
GO
INSERT [src].[Sales23] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2023-01-29' AS Date), 9, CAST(5244.05 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-13' AS Date), 12, CAST(52235.29 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-12' AS Date), 10, CAST(26642.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-26' AS Date), 20, CAST(14942.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-27' AS Date), 12, CAST(59452.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-07' AS Date), 18, CAST(18852.29 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-20' AS Date), 9, CAST(14865.29 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-19' AS Date), 8, CAST(58604.69 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-19' AS Date), 5, CAST(6113.93 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-15' AS Date), 1, CAST(21481.33 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-08' AS Date), 19, CAST(42653.36 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-14' AS Date), 21, CAST(53422.24 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-22' AS Date), 21, CAST(43224.63 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-19' AS Date), 1, CAST(35907.33 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-26' AS Date), 4, CAST(20382.87 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-17' AS Date), 10, CAST(26473.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-16' AS Date), 5, CAST(8683.61 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-07' AS Date), 20, CAST(16405.99 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-17' AS Date), 12, CAST(55506.40 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-16' AS Date), 18, CAST(8583.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-26' AS Date), 5, CAST(2221.07 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-13' AS Date), 5, CAST(6026.73 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-01' AS Date), 10, CAST(49439.73 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-04' AS Date), 12, CAST(47908.33 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-02' AS Date), 1, CAST(37074.34 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-27' AS Date), 10, CAST(33326.72 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-11' AS Date), 10, CAST(41802.17 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-19' AS Date), 1, CAST(38103.75 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-06' AS Date), 1, CAST(28015.17 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-04' AS Date), 8, CAST(61041.32 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-11' AS Date), 5, CAST(8164.07 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-21' AS Date), 12, CAST(51283.31 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-23' AS Date), 8, CAST(54441.00 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-19' AS Date), 9, CAST(16222.87 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-22' AS Date), 21, CAST(49487.64 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-29' AS Date), 18, CAST(11516.00 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-03' AS Date), 5, CAST(5822.94 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-17' AS Date), 12, CAST(66859.69 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-03' AS Date), 4, CAST(25060.29 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-22' AS Date), 8, CAST(39522.85 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-07' AS Date), 21, CAST(57332.72 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-17' AS Date), 21, CAST(72914.84 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-29' AS Date), 4, CAST(39253.65 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-20' AS Date), 20, CAST(10721.97 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-06' AS Date), 19, CAST(73778.60 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-02' AS Date), 12, CAST(54632.58 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-08' AS Date), 10, CAST(44599.11 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-15' AS Date), 21, CAST(50785.79 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-23' AS Date), 5, CAST(4542.26 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-02' AS Date), 19, CAST(52839.55 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-03' AS Date), 21, CAST(52718.48 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-25' AS Date), 12, CAST(75281.36 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-27' AS Date), 8, CAST(56961.16 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-01' AS Date), 9, CAST(20200.58 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-12' AS Date), 12, CAST(57598.42 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-23' AS Date), 10, CAST(41992.58 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-19' AS Date), 9, CAST(16471.41 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-23' AS Date), 9, CAST(11055.80 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-09' AS Date), 9, CAST(23955.63 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-07' AS Date), 5, CAST(6095.81 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-29' AS Date), 19, CAST(48930.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-01' AS Date), 5, CAST(4627.47 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-09' AS Date), 21, CAST(47529.40 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-21' AS Date), 9, CAST(23551.88 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-23' AS Date), 4, CAST(23507.71 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-10' AS Date), 5, CAST(10508.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-21' AS Date), 20, CAST(21501.04 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-25' AS Date), 21, CAST(65467.51 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-27' AS Date), 9, CAST(15139.46 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-14' AS Date), 5, CAST(5743.88 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-11' AS Date), 12, CAST(66507.16 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-29' AS Date), 20, CAST(11516.34 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-06' AS Date), 18, CAST(11319.01 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-23' AS Date), 4, CAST(38232.42 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-05' AS Date), 10, CAST(28353.66 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-05' AS Date), 12, CAST(45548.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-29' AS Date), 12, CAST(45753.48 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-03' AS Date), 10, CAST(28353.94 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-24' AS Date), 1, CAST(39740.80 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-16' AS Date), 19, CAST(55007.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-29' AS Date), 10, CAST(51074.19 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-28' AS Date), 9, CAST(10894.43 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-27' AS Date), 5, CAST(3603.57 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-23' AS Date), 19, CAST(33543.81 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-26' AS Date), 21, CAST(37764.05 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-13' AS Date), 1, CAST(38725.11 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-25' AS Date), 4, CAST(36943.81 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-16' AS Date), 20, CAST(11409.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-04' AS Date), 20, CAST(15358.60 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-04' AS Date), 21, CAST(50880.42 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-12' AS Date), 4, CAST(45046.73 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-26' AS Date), 12, CAST(52072.85 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-24' AS Date), 20, CAST(20522.26 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-21' AS Date), 5, CAST(8782.51 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-29' AS Date), 12, CAST(63117.30 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-06' AS Date), 9, CAST(17332.91 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-01' AS Date), 21, CAST(54969.63 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-28' AS Date), 10, CAST(43826.63 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-14' AS Date), 1, CAST(36090.19 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-02' AS Date), 5, CAST(7926.20 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-01' AS Date), 8, CAST(50063.28 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-20' AS Date), 4, CAST(35775.46 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-11' AS Date), 10, CAST(28704.22 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-02' AS Date), 9, CAST(13946.70 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-17' AS Date), 12, CAST(67011.98 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-30' AS Date), 18, CAST(16411.29 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-28' AS Date), 5, CAST(7752.48 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-11' AS Date), 19, CAST(45359.36 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-05' AS Date), 20, CAST(15644.65 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-18' AS Date), 20, CAST(14438.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-28' AS Date), 9, CAST(16145.11 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-08' AS Date), 18, CAST(17158.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-02' AS Date), 8, CAST(43984.01 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-09' AS Date), 1, CAST(29022.90 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-19' AS Date), 19, CAST(48693.90 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-06' AS Date), 5, CAST(5823.00 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-19' AS Date), 12, CAST(59858.54 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-01' AS Date), 18, CAST(9229.10 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-24' AS Date), 5, CAST(4572.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-15' AS Date), 19, CAST(48892.33 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-14' AS Date), 18, CAST(15535.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-14' AS Date), 10, CAST(34507.00 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-27' AS Date), 19, CAST(56602.67 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-29' AS Date), 5, CAST(5580.84 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-29' AS Date), 9, CAST(13593.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-24' AS Date), 21, CAST(50065.43 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-02' AS Date), 4, CAST(32441.68 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-23' AS Date), 19, CAST(50035.49 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-23' AS Date), 18, CAST(9324.81 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-19' AS Date), 19, CAST(62014.17 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-13' AS Date), 8, CAST(37395.59 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-02' AS Date), 12, CAST(64597.08 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-11' AS Date), 21, CAST(45170.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-15' AS Date), 1, CAST(36997.54 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-13' AS Date), 9, CAST(14631.39 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-08' AS Date), 1, CAST(54816.60 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-03' AS Date), 8, CAST(71610.90 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-29' AS Date), 18, CAST(17372.77 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-08' AS Date), 20, CAST(10799.08 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-04' AS Date), 21, CAST(65263.29 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-24' AS Date), 5, CAST(6003.32 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-07' AS Date), 19, CAST(36212.71 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-01' AS Date), 4, CAST(35018.19 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-28' AS Date), 5, CAST(6786.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-28' AS Date), 12, CAST(43616.33 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-04' AS Date), 4, CAST(35956.68 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-16' AS Date), 21, CAST(59026.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-07' AS Date), 1, CAST(39664.10 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-27' AS Date), 18, CAST(13324.70 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-13' AS Date), 4, CAST(26855.01 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-12' AS Date), 8, CAST(47405.54 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-03' AS Date), 8, CAST(50464.86 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-05' AS Date), 4, CAST(26473.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-21' AS Date), 9, CAST(14541.05 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-10' AS Date), 20, CAST(16546.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-11' AS Date), 21, CAST(44221.25 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-23' AS Date), 4, CAST(50259.25 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-27' AS Date), 19, CAST(60128.91 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-25' AS Date), 9, CAST(22597.37 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-15' AS Date), 20, CAST(13274.15 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-18' AS Date), 18, CAST(8334.98 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-10' AS Date), 12, CAST(58042.39 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-09' AS Date), 12, CAST(55650.95 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-06' AS Date), 21, CAST(43173.08 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-13' AS Date), 8, CAST(42902.08 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-19' AS Date), 1, CAST(37322.76 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-10' AS Date), 21, CAST(67777.63 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-08' AS Date), 1, CAST(31851.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-10' AS Date), 19, CAST(60947.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-26' AS Date), 21, CAST(68070.17 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-17' AS Date), 8, CAST(53837.15 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-16' AS Date), 9, CAST(13959.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-09' AS Date), 4, CAST(40622.71 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-12' AS Date), 1, CAST(36277.88 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-22' AS Date), 18, CAST(10321.28 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-06' AS Date), 12, CAST(57235.96 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-29' AS Date), 8, CAST(54470.47 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-25' AS Date), 1, CAST(32070.25 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-17' AS Date), 10, CAST(33865.39 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-27' AS Date), 4, CAST(52883.93 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-29' AS Date), 1, CAST(21821.69 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-13' AS Date), 12, CAST(55569.48 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-28' AS Date), 9, CAST(22540.05 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-13' AS Date), 10, CAST(32300.93 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-06' AS Date), 8, CAST(55349.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-12' AS Date), 21, CAST(47008.07 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-16' AS Date), 20, CAST(10379.87 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-06' AS Date), 19, CAST(63645.92 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-06' AS Date), 18, CAST(10338.34 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-22' AS Date), 19, CAST(48463.68 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-19' AS Date), 18, CAST(21788.43 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-13' AS Date), 8, CAST(55974.57 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-15' AS Date), 1, CAST(37468.85 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-12' AS Date), 9, CAST(12738.10 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-14' AS Date), 12, CAST(34495.69 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-26' AS Date), 18, CAST(11342.20 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-16' AS Date), 8, CAST(73429.94 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-17' AS Date), 10, CAST(39396.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-04' AS Date), 4, CAST(29867.34 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-17' AS Date), 9, CAST(17727.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-11' AS Date), 1, CAST(35807.30 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-08' AS Date), 4, CAST(35383.25 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-04' AS Date), 9, CAST(15538.16 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-29' AS Date), 20, CAST(12246.84 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-24' AS Date), 8, CAST(46807.36 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-25' AS Date), 9, CAST(20266.28 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-13' AS Date), 8, CAST(49196.16 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-22' AS Date), 21, CAST(39531.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-16' AS Date), 10, CAST(43205.29 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-08' AS Date), 20, CAST(19083.51 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-26' AS Date), 21, CAST(56414.75 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-04' AS Date), 5, CAST(4407.34 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-11' AS Date), 20, CAST(14536.45 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-02' AS Date), 10, CAST(27603.41 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-17' AS Date), 12, CAST(39115.29 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-24' AS Date), 10, CAST(32835.88 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-18' AS Date), 21, CAST(43919.10 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-09' AS Date), 9, CAST(15333.96 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-09' AS Date), 12, CAST(57672.04 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-07' AS Date), 10, CAST(29522.90 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-07' AS Date), 20, CAST(11587.54 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-20' AS Date), 19, CAST(52811.47 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-02' AS Date), 8, CAST(57468.36 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-13' AS Date), 12, CAST(47995.03 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-02' AS Date), 12, CAST(55738.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-03' AS Date), 4, CAST(28594.33 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-06' AS Date), 8, CAST(60231.81 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-22' AS Date), 12, CAST(62105.67 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-27' AS Date), 19, CAST(40676.04 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-10' AS Date), 10, CAST(48727.34 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-10' AS Date), 8, CAST(51326.55 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-03' AS Date), 20, CAST(18296.12 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-24' AS Date), 19, CAST(58219.89 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-26' AS Date), 12, CAST(46475.09 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-02' AS Date), 4, CAST(32827.84 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-18' AS Date), 1, CAST(31921.44 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-05' AS Date), 4, CAST(53348.62 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-26' AS Date), 19, CAST(50284.54 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-23' AS Date), 10, CAST(30473.56 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-12' AS Date), 1, CAST(49246.91 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-28' AS Date), 4, CAST(44531.61 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-23' AS Date), 9, CAST(17677.37 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-11' AS Date), 12, CAST(52852.78 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-12' AS Date), 21, CAST(55593.55 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-16' AS Date), 5, CAST(9816.70 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-08' AS Date), 20, CAST(10990.06 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-14' AS Date), 1, CAST(62827.55 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-07' AS Date), 1, CAST(31453.11 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-27' AS Date), 21, CAST(49349.39 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-05' AS Date), 21, CAST(52938.30 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-21' AS Date), 19, CAST(53862.16 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-24' AS Date), 5, CAST(5405.22 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-14' AS Date), 9, CAST(11628.88 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-07' AS Date), 4, CAST(38168.98 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-11' AS Date), 5, CAST(4190.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-03' AS Date), 18, CAST(15154.98 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-18' AS Date), 20, CAST(12232.68 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-26' AS Date), 10, CAST(47549.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-01' AS Date), 21, CAST(54492.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-08' AS Date), 18, CAST(17912.78 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-18' AS Date), 20, CAST(11113.06 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-03' AS Date), 1, CAST(24879.45 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-22' AS Date), 10, CAST(38167.01 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-25' AS Date), 9, CAST(14918.36 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-12' AS Date), 9, CAST(14446.05 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-21' AS Date), 20, CAST(12589.01 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-17' AS Date), 19, CAST(52017.68 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-14' AS Date), 4, CAST(32892.59 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-17' AS Date), 18, CAST(20444.81 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-27' AS Date), 19, CAST(54882.20 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-28' AS Date), 21, CAST(51549.89 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-20' AS Date), 1, CAST(46167.61 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-13' AS Date), 18, CAST(15564.17 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-17' AS Date), 4, CAST(44350.42 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-25' AS Date), 5, CAST(6958.17 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-26' AS Date), 10, CAST(23321.46 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-19' AS Date), 12, CAST(37340.70 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-06' AS Date), 8, CAST(58558.45 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-22' AS Date), 10, CAST(33035.64 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-20' AS Date), 19, CAST(37705.25 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-06' AS Date), 12, CAST(70198.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-05' AS Date), 20, CAST(10734.41 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-25' AS Date), 8, CAST(48795.33 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-30' AS Date), 9, CAST(24997.00 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-18' AS Date), 8, CAST(67296.53 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-19' AS Date), 18, CAST(16790.10 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-02' AS Date), 8, CAST(74018.37 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-12' AS Date), 21, CAST(70764.55 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-10' AS Date), 19, CAST(51469.46 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-05' AS Date), 21, CAST(43539.08 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-06' AS Date), 19, CAST(65946.97 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-07' AS Date), 9, CAST(15444.99 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-13' AS Date), 4, CAST(20184.91 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-29' AS Date), 21, CAST(54279.82 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-30' AS Date), 5, CAST(3905.48 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-25' AS Date), 4, CAST(20980.48 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-17' AS Date), 1, CAST(28937.25 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-15' AS Date), 19, CAST(59899.45 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-28' AS Date), 1, CAST(35615.01 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-07' AS Date), 12, CAST(51049.51 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-02' AS Date), 21, CAST(45829.46 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-21' AS Date), 9, CAST(21511.48 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-25' AS Date), 9, CAST(12258.25 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-09' AS Date), 18, CAST(14576.21 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-18' AS Date), 8, CAST(60863.28 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-19' AS Date), 12, CAST(47803.68 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-22' AS Date), 10, CAST(41705.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-26' AS Date), 9, CAST(17826.09 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-25' AS Date), 5, CAST(8235.53 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-12' AS Date), 12, CAST(47362.67 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-17' AS Date), 1, CAST(42765.07 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-13' AS Date), 5, CAST(9102.33 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-27' AS Date), 19, CAST(55374.04 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-16' AS Date), 4, CAST(51379.22 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-11' AS Date), 10, CAST(38977.03 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-02' AS Date), 20, CAST(13370.68 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-10' AS Date), 9, CAST(18193.50 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-06' AS Date), 8, CAST(60896.28 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-29' AS Date), 5, CAST(3115.45 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-10' AS Date), 8, CAST(63738.44 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-07' AS Date), 12, CAST(47954.01 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-12' AS Date), 5, CAST(6274.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-26' AS Date), 12, CAST(70309.55 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-20' AS Date), 20, CAST(11554.90 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-15' AS Date), 10, CAST(41599.80 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-24' AS Date), 21, CAST(39512.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-22' AS Date), 9, CAST(18886.95 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-27' AS Date), 10, CAST(41324.22 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-19' AS Date), 18, CAST(13214.25 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-12' AS Date), 21, CAST(49092.43 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-15' AS Date), 5, CAST(6768.07 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-18' AS Date), 10, CAST(44984.71 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-17' AS Date), 1, CAST(26877.01 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-16' AS Date), 19, CAST(68108.26 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-22' AS Date), 4, CAST(40215.51 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-02' AS Date), 10, CAST(40141.01 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-17' AS Date), 20, CAST(17144.19 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-13' AS Date), 1, CAST(32980.94 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-07' AS Date), 12, CAST(60061.84 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-20' AS Date), 18, CAST(21505.84 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-13' AS Date), 21, CAST(47305.68 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-17' AS Date), 4, CAST(30956.48 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-08' AS Date), 20, CAST(12968.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-20' AS Date), 19, CAST(62183.38 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-18' AS Date), 9, CAST(20354.32 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-27' AS Date), 20, CAST(16428.87 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-05' AS Date), 19, CAST(48652.32 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-23' AS Date), 10, CAST(29491.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-02' AS Date), 12, CAST(65885.20 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-15' AS Date), 18, CAST(12456.09 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-04' AS Date), 21, CAST(81107.97 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-14' AS Date), 10, CAST(34734.34 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-09' AS Date), 9, CAST(16366.09 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-27' AS Date), 1, CAST(23860.04 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-21' AS Date), 21, CAST(57095.07 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-29' AS Date), 4, CAST(44793.33 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-09' AS Date), 8, CAST(69566.40 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-16' AS Date), 5, CAST(3125.15 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-24' AS Date), 19, CAST(70689.01 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-02' AS Date), 4, CAST(32083.31 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-07' AS Date), 21, CAST(47137.25 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-06' AS Date), 4, CAST(38393.80 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-03' AS Date), 12, CAST(45060.79 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-10' AS Date), 18, CAST(8283.36 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-09' AS Date), 1, CAST(38108.79 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-01' AS Date), 19, CAST(48380.20 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-29' AS Date), 5, CAST(4147.26 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-19' AS Date), 10, CAST(40871.49 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-28' AS Date), 4, CAST(26501.69 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-20' AS Date), 20, CAST(12435.53 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-08' AS Date), 20, CAST(14153.81 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-14' AS Date), 12, CAST(74508.78 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-06' AS Date), 5, CAST(6206.08 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-19' AS Date), 12, CAST(71553.33 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-16' AS Date), 18, CAST(12696.79 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-24' AS Date), 5, CAST(9672.57 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-04' AS Date), 20, CAST(14989.86 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-08' AS Date), 19, CAST(49576.55 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-02' AS Date), 5, CAST(5000.91 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-01' AS Date), 4, CAST(25106.79 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-25' AS Date), 1, CAST(36481.22 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-09' AS Date), 18, CAST(18377.08 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-17' AS Date), 8, CAST(49949.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-28' AS Date), 1, CAST(45272.11 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-08' AS Date), 1, CAST(36839.67 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-17' AS Date), 21, CAST(53407.77 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-28' AS Date), 19, CAST(55673.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-01' AS Date), 5, CAST(3719.83 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-14' AS Date), 10, CAST(44184.10 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-27' AS Date), 21, CAST(47659.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-27' AS Date), 20, CAST(17693.21 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-09' AS Date), 4, CAST(38059.71 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-16' AS Date), 1, CAST(55779.48 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-11' AS Date), 8, CAST(64805.48 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-15' AS Date), 9, CAST(17082.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-22' AS Date), 10, CAST(39172.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-17' AS Date), 9, CAST(9820.30 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-05' AS Date), 5, CAST(9789.61 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-09' AS Date), 1, CAST(31715.63 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-21' AS Date), 19, CAST(50742.75 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-09' AS Date), 5, CAST(5446.40 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-18' AS Date), 12, CAST(53001.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-06' AS Date), 9, CAST(16418.76 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-26' AS Date), 5, CAST(9768.95 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-23' AS Date), 12, CAST(50162.48 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-20' AS Date), 20, CAST(13242.95 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-10' AS Date), 8, CAST(53511.80 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-23' AS Date), 21, CAST(51669.72 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-25' AS Date), 8, CAST(70982.15 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-17' AS Date), 4, CAST(24294.15 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-07' AS Date), 10, CAST(43467.86 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-21' AS Date), 5, CAST(2432.50 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-13' AS Date), 20, CAST(14798.90 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-19' AS Date), 19, CAST(56494.27 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-03' AS Date), 10, CAST(37443.51 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-01' AS Date), 20, CAST(12389.77 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-26' AS Date), 18, CAST(16777.15 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-29' AS Date), 5, CAST(7695.05 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-10' AS Date), 8, CAST(44742.11 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-17' AS Date), 5, CAST(7457.94 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-02' AS Date), 4, CAST(51003.26 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-23' AS Date), 19, CAST(69665.94 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-19' AS Date), 8, CAST(54166.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-11' AS Date), 10, CAST(35325.69 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-29' AS Date), 10, CAST(45352.17 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-10' AS Date), 8, CAST(57837.84 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-11' AS Date), 18, CAST(9717.69 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-05' AS Date), 20, CAST(15316.37 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-25' AS Date), 10, CAST(57818.50 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-24' AS Date), 8, CAST(52837.80 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-08' AS Date), 18, CAST(14117.88 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-21' AS Date), 1, CAST(35986.20 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-13' AS Date), 9, CAST(21772.86 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-10' AS Date), 18, CAST(13291.28 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-22' AS Date), 8, CAST(56242.14 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-30' AS Date), 1, CAST(32777.39 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-12' AS Date), 10, CAST(41672.51 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-12' AS Date), 8, CAST(53293.12 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-14' AS Date), 21, CAST(47615.37 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-22' AS Date), 1, CAST(32372.92 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-25' AS Date), 21, CAST(41245.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-28' AS Date), 19, CAST(49081.82 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-06' AS Date), 4, CAST(30033.65 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-27' AS Date), 18, CAST(14164.57 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-06' AS Date), 4, CAST(30915.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-09' AS Date), 1, CAST(50748.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-21' AS Date), 18, CAST(13922.84 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-11' AS Date), 21, CAST(38033.77 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-16' AS Date), 18, CAST(16247.77 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-23' AS Date), 4, CAST(39012.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-22' AS Date), 5, CAST(5007.11 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-25' AS Date), 1, CAST(31794.29 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-30' AS Date), 10, CAST(37433.76 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-11' AS Date), 8, CAST(45770.50 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-10' AS Date), 19, CAST(32368.42 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-03' AS Date), 1, CAST(30847.53 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-22' AS Date), 5, CAST(7281.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-03' AS Date), 8, CAST(86805.19 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-03' AS Date), 9, CAST(15377.14 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-28' AS Date), 19, CAST(65497.68 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-08' AS Date), 9, CAST(15450.49 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-22' AS Date), 10, CAST(34245.16 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-07' AS Date), 20, CAST(13499.76 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-12' AS Date), 10, CAST(43711.95 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-04' AS Date), 4, CAST(41898.81 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-11' AS Date), 12, CAST(67171.83 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-07' AS Date), 4, CAST(43624.85 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-22' AS Date), 4, CAST(20213.79 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-18' AS Date), 18, CAST(13144.76 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-26' AS Date), 5, CAST(5290.03 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-22' AS Date), 8, CAST(51218.66 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-21' AS Date), 21, CAST(46229.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-26' AS Date), 4, CAST(31531.96 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-21' AS Date), 19, CAST(59587.34 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-09' AS Date), 5, CAST(5414.94 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-02' AS Date), 1, CAST(31198.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-09' AS Date), 20, CAST(16435.96 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-24' AS Date), 18, CAST(16945.22 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-07' AS Date), 8, CAST(73228.25 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-06' AS Date), 20, CAST(17079.06 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-22' AS Date), 21, CAST(55847.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-26' AS Date), 20, CAST(13787.24 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-16' AS Date), 19, CAST(69783.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-10' AS Date), 1, CAST(27091.30 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-22' AS Date), 5, CAST(8689.96 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-09' AS Date), 18, CAST(16284.37 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-18' AS Date), 20, CAST(20331.92 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-23' AS Date), 9, CAST(19136.09 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-23' AS Date), 8, CAST(62552.97 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-11' AS Date), 4, CAST(35540.33 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-10' AS Date), 9, CAST(16073.19 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-18' AS Date), 1, CAST(42243.43 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-27' AS Date), 8, CAST(51167.05 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-07' AS Date), 4, CAST(39781.49 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-09' AS Date), 19, CAST(51117.88 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-11' AS Date), 9, CAST(14225.79 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-11' AS Date), 10, CAST(28894.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-25' AS Date), 20, CAST(11246.89 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-04' AS Date), 9, CAST(17626.24 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-17' AS Date), 19, CAST(75864.05 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-17' AS Date), 12, CAST(47829.05 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-05' AS Date), 8, CAST(47025.36 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-18' AS Date), 8, CAST(51764.58 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-14' AS Date), 21, CAST(60794.14 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-17' AS Date), 5, CAST(6930.04 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-20' AS Date), 18, CAST(12303.95 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-06' AS Date), 4, CAST(42325.80 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-22' AS Date), 9, CAST(15895.73 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-02' AS Date), 9, CAST(18748.39 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-23' AS Date), 10, CAST(32051.77 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-04' AS Date), 12, CAST(58693.90 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-06' AS Date), 8, CAST(58844.86 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-07' AS Date), 10, CAST(36926.63 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-17' AS Date), 20, CAST(16800.81 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-27' AS Date), 18, CAST(23859.07 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-11' AS Date), 9, CAST(8667.24 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-25' AS Date), 10, CAST(46946.36 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-24' AS Date), 20, CAST(15449.64 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-18' AS Date), 8, CAST(40700.39 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-08' AS Date), 20, CAST(14052.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-15' AS Date), 10, CAST(22859.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-07' AS Date), 10, CAST(37451.43 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-08' AS Date), 12, CAST(50864.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-20' AS Date), 18, CAST(13568.48 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-13' AS Date), 5, CAST(4552.26 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-21' AS Date), 20, CAST(14698.98 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-28' AS Date), 18, CAST(26789.04 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-29' AS Date), 10, CAST(32899.56 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-02' AS Date), 5, CAST(7386.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-10' AS Date), 10, CAST(25868.69 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-07' AS Date), 8, CAST(42115.56 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-22' AS Date), 8, CAST(57806.69 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-27' AS Date), 9, CAST(14188.65 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-03' AS Date), 18, CAST(16092.80 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-03' AS Date), 5, CAST(7576.19 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-17' AS Date), 19, CAST(54270.11 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-11' AS Date), 12, CAST(61414.37 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-19' AS Date), 10, CAST(32675.28 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-16' AS Date), 18, CAST(12789.15 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-03' AS Date), 9, CAST(16487.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-10' AS Date), 21, CAST(35334.91 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-09' AS Date), 20, CAST(12007.04 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-08' AS Date), 19, CAST(70986.99 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-13' AS Date), 20, CAST(14385.98 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-11' AS Date), 10, CAST(44868.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-22' AS Date), 8, CAST(60373.54 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-22' AS Date), 21, CAST(40818.61 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-07' AS Date), 12, CAST(47879.72 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-17' AS Date), 19, CAST(68620.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-28' AS Date), 4, CAST(27079.51 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-12' AS Date), 12, CAST(61727.03 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-29' AS Date), 18, CAST(15469.63 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-03' AS Date), 5, CAST(3701.81 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-28' AS Date), 20, CAST(14006.77 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-26' AS Date), 10, CAST(35277.51 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-25' AS Date), 18, CAST(20980.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-27' AS Date), 4, CAST(49341.00 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-22' AS Date), 18, CAST(12856.87 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-03' AS Date), 1, CAST(35180.73 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-01' AS Date), 20, CAST(14278.73 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-05' AS Date), 19, CAST(46973.13 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-24' AS Date), 21, CAST(49543.75 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-18' AS Date), 19, CAST(51165.94 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-29' AS Date), 8, CAST(39196.91 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-27' AS Date), 19, CAST(70960.31 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-22' AS Date), 4, CAST(34995.43 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-25' AS Date), 1, CAST(21671.31 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-16' AS Date), 1, CAST(41004.23 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-07' AS Date), 12, CAST(45719.55 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-13' AS Date), 21, CAST(54958.03 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-23' AS Date), 5, CAST(8322.47 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-23' AS Date), 19, CAST(57837.37 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-29' AS Date), 20, CAST(13930.44 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-10' AS Date), 18, CAST(16187.42 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-03' AS Date), 9, CAST(27057.24 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-14' AS Date), 5, CAST(13839.71 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-14' AS Date), 5, CAST(8965.67 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-15' AS Date), 8, CAST(59855.89 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-23' AS Date), 10, CAST(34591.25 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-30' AS Date), 10, CAST(46411.10 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-29' AS Date), 21, CAST(48029.08 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-09' AS Date), 19, CAST(37216.92 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-15' AS Date), 1, CAST(50648.25 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-03' AS Date), 8, CAST(65833.61 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-24' AS Date), 1, CAST(35735.20 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-12' AS Date), 9, CAST(10713.85 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-15' AS Date), 9, CAST(13668.76 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-21' AS Date), 21, CAST(50568.36 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-25' AS Date), 9, CAST(12706.60 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-02' AS Date), 1, CAST(27697.61 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-20' AS Date), 1, CAST(60590.67 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-08' AS Date), 21, CAST(54875.04 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-08' AS Date), 18, CAST(17057.55 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-30' AS Date), 9, CAST(14956.69 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-08' AS Date), 21, CAST(47981.66 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-24' AS Date), 18, CAST(14299.86 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-17' AS Date), 20, CAST(19101.91 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-14' AS Date), 1, CAST(34583.48 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-29' AS Date), 12, CAST(57460.95 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-07' AS Date), 19, CAST(44028.58 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-23' AS Date), 1, CAST(39166.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-16' AS Date), 12, CAST(73709.54 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-23' AS Date), 4, CAST(35564.33 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-07' AS Date), 4, CAST(28193.54 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-30' AS Date), 20, CAST(13764.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-28' AS Date), 18, CAST(20851.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-27' AS Date), 1, CAST(44175.88 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-06' AS Date), 18, CAST(12734.11 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-12' AS Date), 21, CAST(59979.87 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-03' AS Date), 4, CAST(29500.61 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-03' AS Date), 5, CAST(5989.62 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-21' AS Date), 12, CAST(54217.10 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-19' AS Date), 18, CAST(11365.17 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-10' AS Date), 12, CAST(60339.99 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-13' AS Date), 12, CAST(47129.80 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-17' AS Date), 8, CAST(58843.54 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-04' AS Date), 4, CAST(37053.92 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-29' AS Date), 18, CAST(18565.63 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-29' AS Date), 18, CAST(13531.16 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-23' AS Date), 9, CAST(19429.87 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-11' AS Date), 18, CAST(16864.33 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-12' AS Date), 8, CAST(53520.74 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-04' AS Date), 1, CAST(28813.12 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-12' AS Date), 20, CAST(21978.72 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-02-01' AS Date), 12, CAST(60398.99 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-12' AS Date), 1, CAST(33320.02 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-19' AS Date), 4, CAST(53149.42 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-11' AS Date), 21, CAST(55090.64 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-19' AS Date), 5, CAST(9124.17 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-13' AS Date), 9, CAST(17826.95 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-18' AS Date), 20, CAST(12577.90 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-16' AS Date), 4, CAST(45029.67 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-23' AS Date), 12, CAST(64966.95 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-05' AS Date), 5, CAST(6221.07 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-26' AS Date), 19, CAST(46665.59 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-10' AS Date), 20, CAST(11729.06 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-16' AS Date), 8, CAST(48719.18 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-17' AS Date), 18, CAST(9143.42 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-07' AS Date), 19, CAST(45626.03 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-05-09' AS Date), 4, CAST(32296.75 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-22' AS Date), 4, CAST(38659.88 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-17' AS Date), 19, CAST(48132.98 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-14' AS Date), 20, CAST(11106.44 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-12-13' AS Date), 18, CAST(16230.44 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-03' AS Date), 18, CAST(17064.98 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-04' AS Date), 9, CAST(18044.52 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-07-15' AS Date), 19, CAST(66846.12 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-06' AS Date), 20, CAST(16490.39 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-09-10' AS Date), 19, CAST(59016.19 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-09' AS Date), 5, CAST(8567.22 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-17' AS Date), 12, CAST(48829.89 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-18' AS Date), 18, CAST(16781.59 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-08-19' AS Date), 1, CAST(28476.80 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-03-19' AS Date), 20, CAST(17929.89 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-16' AS Date), 4, CAST(31497.35 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-06-23' AS Date), 1, CAST(25699.80 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-11-11' AS Date), 8, CAST(41695.12 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-01-02' AS Date), 10, CAST(38532.75 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-15' AS Date), 21, CAST(49645.47 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-04-24' AS Date), 9, CAST(22055.72 AS Decimal(38, 2)))
GO
INSERT [src].[Sales24] ([transaction_date], [store_id], [TotalSale]) VALUES (CAST(N'2024-10-29' AS Date), 21, CAST(55825.71 AS Decimal(38, 2)))
GO
INSERT [src].[Stores] ([store_id], [region_id], [store_type], [store_name], [store_state_prov], [store_country], [first_opened_date], [last_remodel_date], [total_sqft], [grocery_sqft]) VALUES (1, 28, N'Supermarket', N'Acapulco-Supermarket', N'Guerrero', N'Mexico', CAST(N'2006-01-09' AS Date), CAST(N'2019-12-05' AS Date), 23593, 17475)
GO
INSERT [src].[Stores] ([store_id], [region_id], [store_type], [store_name], [store_state_prov], [store_country], [first_opened_date], [last_remodel_date], [total_sqft], [grocery_sqft]) VALUES (4, 27, N'Gourmet Supermarket', N'Camacho-Gourmet Supermarket', N'Zacatecas', N'Mexico', CAST(N'2018-09-27' AS Date), CAST(N'2024-12-01' AS Date), 23759, 16844)
GO
INSERT [src].[Stores] ([store_id], [region_id], [store_type], [store_name], [store_state_prov], [store_country], [first_opened_date], [last_remodel_date], [total_sqft], [grocery_sqft]) VALUES (5, 4, N'Small Grocery', N'Guadalajara-Small Grocery', N'Jalisco', N'Mexico', CAST(N'2002-09-18' AS Date), CAST(N'2020-06-29' AS Date), 24597, 15012)
GO
INSERT [src].[Stores] ([store_id], [region_id], [store_type], [store_name], [store_state_prov], [store_country], [first_opened_date], [last_remodel_date], [total_sqft], [grocery_sqft]) VALUES (8, 26, N'Deluxe Supermarket', N'Merida-Deluxe Supermarket', N'Yucatan', N'Mexico', CAST(N'1982-09-23' AS Date), CAST(N'1996-11-18' AS Date), 30797, 20141)
GO
INSERT [src].[Stores] ([store_id], [region_id], [store_type], [store_name], [store_state_prov], [store_country], [first_opened_date], [last_remodel_date], [total_sqft], [grocery_sqft]) VALUES (9, 2, N'Mid-Size Grocery', N'Mexico City-Mid-Size Grocery', N'DF', N'Mexico', CAST(N'1979-03-18' AS Date), CAST(N'1988-06-07' AS Date), 36509, 22450)
GO
INSERT [src].[Stores] ([store_id], [region_id], [store_type], [store_name], [store_state_prov], [store_country], [first_opened_date], [last_remodel_date], [total_sqft], [grocery_sqft]) VALUES (10, 24, N'Supermarket', N'Orizaba-Supermarket', N'Veracruz', N'Mexico', CAST(N'2003-04-13' AS Date), CAST(N'2011-01-30' AS Date), 34791, 26354)
GO
INSERT [src].[Stores] ([store_id], [region_id], [store_type], [store_name], [store_state_prov], [store_country], [first_opened_date], [last_remodel_date], [total_sqft], [grocery_sqft]) VALUES (12, 25, N'Deluxe Supermarket', N'Hidalgo-Deluxe Supermarket', N'Zacatecas', N'Mexico', CAST(N'1992-03-25' AS Date), CAST(N'2022-12-18' AS Date), 30584, 21938)
GO
INSERT [src].[Stores] ([store_id], [region_id], [store_type], [store_name], [store_state_prov], [store_country], [first_opened_date], [last_remodel_date], [total_sqft], [grocery_sqft]) VALUES (18, 25, N'Mid-Size Grocery', N'Hidalgo-Mid-Size Grocery', N'Zacatecas', N'Mexico', CAST(N'1993-06-28' AS Date), CAST(N'2004-08-30' AS Date), 38382, 30351)
GO
INSERT [src].[Stores] ([store_id], [region_id], [store_type], [store_name], [store_state_prov], [store_country], [first_opened_date], [last_remodel_date], [total_sqft], [grocery_sqft]) VALUES (19, 5, N'Deluxe Supermarket', N'Vancouver-Deluxe Supermarket', N'BC', N'Canada', CAST(N'2001-03-27' AS Date), CAST(N'2019-10-25' AS Date), 23112, 16418)
GO
INSERT [src].[Stores] ([store_id], [region_id], [store_type], [store_name], [store_state_prov], [store_country], [first_opened_date], [last_remodel_date], [total_sqft], [grocery_sqft]) VALUES (20, 6, N'Mid-Size Grocery', N'Victoria-Mid-Size Grocery', N'BC', N'Canada', CAST(N'2004-02-06' AS Date), CAST(N'2016-04-09' AS Date), 34452, 27463)
GO
INSERT [src].[Stores] ([store_id], [region_id], [store_type], [store_name], [store_state_prov], [store_country], [first_opened_date], [last_remodel_date], [total_sqft], [grocery_sqft]) VALUES (21, 106, N'Deluxe Supermarket', N'San Andres-Deluxe Supermarket', N'DF', N'Mexico', CAST(N'2010-02-07' AS Date), CAST(N'2019-04-16' AS Date), 32717, 25453)
GO

/*
TRUNCATE TABLE lup.Dataset
TRUNCATE TABLE fact.UsageTotal
TRUNCATE TABLE stg.DataSource
TRUNCATE TABLE err.UsageFlat
TRUNCATE TABLE dim.Catalogue
TRUNCATE TABLE dim.Calendar 
*/

SELECT (SELECT count(*) FROM stg.DataSource) as StageCnt
	  ,(SELECT count(*) FROM lup.Dataset) as LupCnt
	  ,(SELECT count(*) FROM fact.UsageTotal) as FactCnt
	  ,(SELECT count(*) FROM dim.Catalogue) as CatalogueCnt
	  ,(SELECT count(*) FROM dim.Calendar) as CalendarCnt
	  ,(SELECT count(*) FROM err.UsageFlat) as ErrCnt

;

SELECT TOP 1 *
FROM stg.DataSource
;
SELECT TOP 2 *
FROM lup.Dataset
;
SELECT TOP 3 *
FROM fact.UsageTotal
;
SELECT TOP 4 *
FROM dim.Catalogue
;
SELECT * 
FROM err.UsageFlat

SELECT c.DateValue
        ,ca.Dataset
      ,u.[Usage_Total]
  FROM [HLX_BI].[fact].[UsageTotal] as U
  inner join dim.Calendar as C
  on u.AccessedDate = c.DateValue
  inner join dim.Catalogue ca
  on u.Dataset_ID = ca.Dataset_ID
   group by  c.DateValue
        ,ca.Dataset
      ,u.[Usage_Total]
order by 3 desc




USE [HLX_BI]
GO

/****** Object:  Index [PK_DimCatalog]    Script Date: 2/11/2026 8:50:59 AM ******/
ALTER TABLE [dim].[Catalogue] DROP CONSTRAINT [PK_DimCatalog] WITH ( ONLINE = OFF )
GO

/****** Object:  Index [PK_DimCatalog]    Script Date: 2/11/2026 8:50:59 AM ******/
ALTER TABLE [dim].[Catalogue] ADD  CONSTRAINT [PK_DimCatalog] PRIMARY KEY CLUSTERED 
(
	[Dataset_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  */
USE [HLX_BI]
GO

ALTER TABLE [fact].[UsageTotal] DROP CONSTRAINT [FK_Usage_Calendar]
GO

ALTER TABLE [fact].[UsageTotal]  WITH CHECK ADD  CONSTRAINT [FK_Usage_Calendar] FOREIGN KEY([AccessedDate])
REFERENCES [dim].[Calendar] ([DateValue])
GO

ALTER TABLE [fact].[UsageTotal] CHECK CONSTRAINT [FK_Usage_Calendar]
GO

--Add the foreign key on the fact table
ALTER TABLE fact.UsageTotal
WITH CHECK
ADD CONSTRAINT FK_FactUsage_DimCat
    FOREIGN KEY (Dataset_ID)
    REFERENCES dim.[Catalogue](Dataset_ID);

ALTER TABLE fact.UsageTotal
DROP CONSTRAINT FK_FactUsage_DimCat







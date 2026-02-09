/*
TRUNCATE TABLE lup.Dataset
TRUNCATE TABLE fact.DatasetUsage
TRUNCATE TABLE stg.HLX_Dataset
*/

SELECT (SELECT count(*) FROM stg.DataSource) as StageCnt
	  ,(SELECT count(*) FROM lup.Dataset) as LupCnt
	  ,(SELECT count(*) FROM fact.UsageTotal) as FactCnt
	  ,(SELECT count(*) FROM dim.Catalogue) as DimCnt
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


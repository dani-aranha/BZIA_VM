/*
TRUNCATE TABLE lup.Dataset
TRUNCATE TABLE fact.DatasetUsage
TRUNCATE TABLE stg.HLX_Dataset
*/

SELECT (SELECT count(*) FROM stg.HLX_Dataset) as DatasetCnt
	  ,(SELECT count(*) FROM fact.DatasetUsage) as DatasetUsageCnt
	  ,(SELECT count(*) FROM lup.Dataset) as DatasetCnt
;

SELECT TOP 1 *
FROM stg.HLX_Dataset
;
SELECT TOP 1 *
FROM fact.DatasetUsage
;
SELECT TOP 1 *
FROM lup.Dataset
;


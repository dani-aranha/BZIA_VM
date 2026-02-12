USE HaliTranTgt
GO

/*
truncate table stg.HaliTran
truncate table lup.Route_ID_Lookup
truncate table fact.Ridership
truncate table fact.RidershipHistorical 
truncate table dim.Route
truncate table err.RidershipFlat
*/

SELECT (SELECT count(*) FROM stg.HaliTran) as Stage
	  ,(SELECT count(*) FROM lup.Route_ID_Lookup) as LookUp
	  ,(SELECT count(*) FROM fact.Ridership) as Fact
	  ,(SELECT count(*) FROM fact.RidershipHistorical) as FactHist
	  ,(SELECT count(*) FROM dim.Route) as Dim
	  ,(SELECT count(*) FROM err.FlatFileImport) Err
	  ,(SELECT count(*) FROM err.FlatFileImportHist) ErrHist

--select count(distinct Route_Date) from [fact].[Ridership]



SELECT TOP 1 *
FROM stg.HaliTran

SELECT TOP 1 *
FROM lup.Route_ID_Lookup

SELECT TOP 1 *
from fact.Ridership

SELECT TOP 1 *
FROM dim.Route

SELECT *
FROM err.FlatFileImport
ORDER BY 4 ASC


INSERT INTO err.FlatFileImportHist
SELECT *
FROM err.FlatFileImport





/*

ALTER TABLE fact.Ridership 
DROP CONSTRAINT FK_FactRidership_DimRoute

--Add the foreign key on the fact table
ALTER TABLE fact.Ridership
WITH CHECK
ADD CONSTRAINT FK_FactRidership_DimRoute
    FOREIGN KEY (Route_ID)
    REFERENCES dim.[Route](Route_ID);


ALTER TABLE dim.Route
ADD CONSTRAINT PK_DimRoute PRIMARY KEY (Route_ID);

*/


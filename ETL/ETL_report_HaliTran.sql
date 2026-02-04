/*
truncate table stg.HaliTran
truncate table fact.Ridership
truncate table lup.Route_ID_Lookup 
truncate table dim.Route
truncate table err.Ridership****
*/

SELECT (SELECT count(*) FROM stg.HaliTran) as Stage
	  ,(SELECT count(*) FROM lup.Route_ID_Lookup) as LookUp
	  ,(SELECT count(*) FROM fact.Ridership) as Fact
	  ,(SELECT count(*) FROM fact.RidershipHistorical) as FactHist
	  ,(SELECT count(*) FROM dim.Route) as Dim

SELECT TOP 1 *
FROM stg.HaliTran

SELECT TOP 1 *
FROM lup.Route_ID_Lookup

SELECT TOP 1 *
from fact.Ridership

SELECT TOP 1 *
FROM dim.Route



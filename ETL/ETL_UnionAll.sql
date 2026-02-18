;WITH cte_Riders AS
(
    SELECT *
    FROM fact.Ridership

    UNION all

    SELECT *
    FROM fact.RidershipHistorical
)
SELECT  
      Route_ID
    , FLOOR(f.Route_Hour) AS Route_Hour_Top
    , Route_Date
    , SUM(Ridership_Total) AS Ridership_Total
FROM cte_Riders f
GROUP BY 
      Route_ID
    , FLOOR(f.Route_Hour)
    , Route_Date
ORDER BY 
      Route_ID;
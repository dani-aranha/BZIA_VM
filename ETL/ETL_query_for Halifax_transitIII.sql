


--CREATE OR ALTER VIEW stg.dRoute as
SELECT  rid.Route_ID
      , ri.Route_Number
      , ri.Route_Name
      ,CONCAT_WS('-', ri.Route_Number,ri.Route_Name) as 'Full_Route_Name'
      ,CASE
            WHEN CHARINDEX('-', ri.Route_Name) = 0
                THEN TRIM(ri.Route_Name)
            ELSE TRIM(SUBSTRING(ri.Route_Name,1,CHARINDEX('-', ri.Route_Name) - 1))
        END AS 'Init_Destination'
      , CASE
            WHEN ri.route_name not like '%exp%' then 0
            ELSE 1
        END AS 'fExpress'
FROM stg.HaliTran ri
LEFT OUTER JOIN lup.Route_ID_Lookup rid
    ON CONCAT(ri.Route_Number, '-', ri.Route_Name) = rid.Route_Name
WHERE rid.Route_ID not in (SELECT Route_ID FROM dim.Route) 
GROUP BY
        rid.Route_ID
      , ri.Route_Number
      , ri.Route_Name
      , CASE
            WHEN CHARINDEX('-', ri.Route_Name) = 0
                THEN TRIM(ri.Route_Name)
            ELSE TRIM(SUBSTRING(ri.Route_Name,1,CHARINDEX('-', ri.Route_Name) - 1))
        END
 ORDER BY 1 ASC;
/*

### Fact table - Route_ID, Route_hour, Route_date, Ridership_Total
 



InitDestination --> highest level of the hierarchy 
                   (each of the route_id and Route_name roll up to Init_Destination)
    route_id --> pk, synthetic (technical key)
    Route_Number --> business key
    Route_name -->  1:1 relationship to route_id
 
ORDER will be pk (Route_ID), Route_Number, Route_name, InitDestination
*/
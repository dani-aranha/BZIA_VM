-- Creates and populates [dim].[RouteHour] in one go (47 rows)
IF OBJECT_ID('dim.RouteHour', 'U') IS NOT NULL
    DROP TABLE dim.RouteHour;
GO

;WITH HalfHours AS
(
    SELECT 0 AS n
    UNION ALL
    SELECT n + 1 FROM HalfHours WHERE n < 46
),
Canon AS
(
    SELECT CAST(4.0 + (n * 0.5) AS decimal(9,2)) AS Route_Hour
    FROM HalfHours
),
Stage AS
(
    SELECT DISTINCT
           CAST(Route_Hour AS decimal(9,2)) AS Route_Hour,
           Route_Hour_Description
    FROM stg.HaliTran
    WHERE Route_Hour IS NOT NULL
)
SELECT
      c.Route_Hour                                        -- e.g., 4.00, 4.50, ... 27.50
    , COALESCE(
          s.Route_Hour_Description,
          -- Fallback description if stage is missing:
          CONCAT(
              -- start label
              CAST(CASE WHEN (FLOOR(c.Route_Hour) % 12) = 0
                        THEN 12 ELSE (FLOOR(c.Route_Hour) % 12) END AS varchar(2)),
              CASE WHEN (c.Route_Hour - FLOOR(c.Route_Hour)) = 0.5 THEN ':30' ELSE ':00' END,
              LOWER(CASE WHEN FLOOR(c.Route_Hour) BETWEEN 0 AND 11 THEN 'am' ELSE 'pm' END),
              ' to ',
              -- end label (to :29 or :59)
              CAST(CASE WHEN (FLOOR(c.Route_Hour) % 12) = 0
                        THEN 12 ELSE (FLOOR(c.Route_Hour) % 12) END AS varchar(2)),
              CASE WHEN (c.Route_Hour - FLOOR(c.Route_Hour)) = 0.5 THEN ':59' ELSE ':29' END,
              LOWER(CASE WHEN FLOOR(c.Route_Hour) BETWEEN 0 AND 11 THEN 'am' ELSE 'pm' END)
          )
      ) AS Route_Hour_Description
    , FLOOR(c.Route_Hour)                                 AS RouteHourTop
    , CONCAT(
          CAST(CASE WHEN FLOOR(c.Route_Hour) % 12 = 0
                    THEN 12 ELSE FLOOR(c.Route_Hour) % 12 END AS varchar(2)),
          ':00',
          LOWER(CASE WHEN FLOOR(c.Route_Hour) BETWEEN 0 AND 11 THEN 'AM' ELSE 'PM' END)
      )                                                   AS RouteHourTopDescription
    , CASE
          WHEN FLOOR(c.Route_Hour) BETWEEN 6  AND 11 THEN 'Morning'  -- 06:00–11:59
          WHEN FLOOR(c.Route_Hour) BETWEEN 12 AND 18 THEN 'Midday'   -- 12:00–18:59
          WHEN FLOOR(c.Route_Hour) BETWEEN 19 AND 23 THEN 'Night'    -- 19:00–23:59
          ELSE 'None'
      END                                                 AS IncreasedRidership
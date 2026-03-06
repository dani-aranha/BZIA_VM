USE [HLX_BI]
GO

/****** Object:  View [vw].[vClusteringDataset]    Script Date: 2/25/2026 1:00:51 PM ******/
DROP VIEW [vw].[vClusteringDataset]
GO

/****** Object:  View [vw].[vClusteringDataset]    Script Date: 2/25/2026 1:00:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- Optional: ensure the schema for the view exists (run once)
-- CREATE SCHEMA vw;
-- GO

CREATE OR ALTER VIEW vw.vClusteringDataset AS
WITH base AS (
    SELECT
        Dataset  AS dataset_name,
        OD_ID    AS od_id,
        ObjectId AS object_id,

        -- Daily record timestamp from HRM Analytics
        TRY_CAST([Date] AS date)         AS usage_date,

        -- Portal-level "last updated" (may reflect metadata updates)
        TRY_CAST([LAST_UPDATED] AS date) AS last_updated_dt,

        -- Daily usage count for that usage_date
        TRY_CAST([Usage] AS float)       AS usage_total
    FROM stg.Vdatasource
    WHERE TRY_CAST([Usage] AS float) IS NOT NULL
),
asof AS (
    -- Use the latest usage date present in the data as the anchor
    SELECT CAST(MAX([Date]) AS date) AS as_of_date
    FROM stg.Vdatasource
)
SELECT
    b.dataset_name, b.od_id, b.object_id,
    b.usage_date, b.last_updated_dt, b.usage_total,

    -- 1) Snapshot age relative to as-of (always >= 0)
    DATEDIFF(DAY, b.usage_date, a.as_of_date) AS age_days,

    -- 2) Freshness relative to as-of (days since item was updated; always >= 0)
    DATEDIFF(DAY, b.last_updated_dt, a.as_of_date) AS since_update_days,

    -- 3) Optional velocity proxy (daily usage scaled by row age in years + small eps)
    b.usage_total
      / NULLIF(DATEDIFF(DAY, b.usage_date, a.as_of_date) / 365.0 + 0.01, 0) AS usage_per_365,

    -- 4) Staleness relative to row age (bounded if you choose to cap later)
    CAST(DATEDIFF(DAY, b.last_updated_dt, a.as_of_date) AS float)
      / NULLIF(DATEDIFF(DAY, b.usage_date, a.as_of_date) + 1, 0) AS staleness_ratio
FROM base b
CROSS JOIN asof a;
GO

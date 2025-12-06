

    
SELECT 
    sch.name AS schema_name,
    tbl.name AS table_name,
    col.name AS column_name,
    typ.name AS data_type,
    col.system_type_id,
    col.user_type_id,
    col.max_length,
    col.precision,
    col.scale
FROM sys.columns col
JOIN sys.tables tbl   ON col.object_id = tbl.object_id
JOIN sys.schemas sch  ON tbl.schema_id = sch.schema_id
JOIN sys.types typ    ON col.user_type_id = typ.user_type_id
WHERE 
    (tbl.name = 'Sales' AND sch.name = 'fact' AND col.name = 'transaction_date') OR
    (tbl.name = 'Calendar' AND sch.name = 'dim'  AND col.name = 'DateValue');

    
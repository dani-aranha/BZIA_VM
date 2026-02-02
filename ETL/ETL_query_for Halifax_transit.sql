
CREATE TABLE lup.Route_ID_Lookup (
    Route_Number NVARCHAR(10),
    Route_Name NVARCHAR(100),
    Route_ID INT IDENTITY(100,1) PRIMARY KEY
);



  SELECT CONCAT_WS('-',sr.Route_Number, sr.Route_Name) as Route_name
  FROM stg.HaliTran AS sr
  where CONCAT_WS('-',sr.Route_Number, sr.Route_Name) not in (select Route_Name from lup.Route_ID_Lookup)
  Group By CONCAT_WS('-',sr.Route_Number, sr.Route_Name)

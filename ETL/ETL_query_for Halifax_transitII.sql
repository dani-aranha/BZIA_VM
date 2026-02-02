SELECT TOP (1000) Route_Number
      ,CHARINDEX('-', Route_Name)
      ,SUBSTRING(Route_name, 1,7)
  FROM [stg].[HaliTran]
  order by 3 desc

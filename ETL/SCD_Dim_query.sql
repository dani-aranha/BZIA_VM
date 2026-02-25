SELECT ID
	,ISNULL(cName, 'Missing') as cName
	,ISNULL(akcName, 'N/A') as akcName
	,ISNULL(nName, 'None') as nName
	,ISNULL(sex, 'U') as sex
	,ISNULL(kID, -99) as kID
	,ISNULL(kName, 'N/A') as kName
	,cast(ISNULL(dBirth, '1899-12-31') as date) as akcName
  FROM stg.Pups

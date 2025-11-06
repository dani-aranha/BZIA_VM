WITH EmployeeDim (EmployeeID,LastName,FirstName,Title,TitleOfCourtesy,BirthDate,HireDate,[Address],
City,Region,PostalCode,Country,HomePhone,Extension,ReportsTo) 
as (
SELECT EmployeeID
      ,LastName
      ,FirstName
      ,Title
      ,TitleOfCourtesy
      ,BirthDate
      ,HireDate
      ,[Address]
      ,City
      ,Region
      ,PostalCode
      ,Country
      ,HomePhone
      ,Extension
      ,ReportsTo
  FROM Northwind_TC.emp.Employees
)
Select * 
FROM EmployeeDim
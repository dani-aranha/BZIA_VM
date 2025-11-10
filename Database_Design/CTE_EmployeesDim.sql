WITH EmployeeDim (EmployeeID,LastName,FirstName,Title,BirthDate,HireDate,[Address],
City,Region,Country) 
as (
SELECT EmployeeID
      ,LastName
      ,FirstName
      ,Title
      ,BirthDate
      ,HireDate
      ,[Address]
      ,City
      ,Region
      ,Country
  FROM Northwind_TC.emp.Employees
)
Select * 
FROM EmployeeDim
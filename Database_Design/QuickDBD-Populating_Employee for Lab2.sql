USE Lab2
GO

Truncate Table Lab2.dbo.Employee
GO

INSERT INTO Lab2.dbo.Employee (EmployeeID,LastName,FirstName,Employee,Title,TitleOfCourtesy,BirthDate,HireDate,AgeatHired,ReportsTo)
SELECT EmployeeID 
      ,LastName
      ,FirstName
      ,CONCAT_WS(' ', FirstName,LastName) AS Employee
      ,Title
      ,TitleOfCourtesy
      ,BirthDate
      ,HireDate
      ,DATEDIFF(YEAR, BirthDate, HireDate) as 'AgeatHired'
      ,isnull(ReportsTo, -99)
  FROM Northwind_TC.emp.Employees

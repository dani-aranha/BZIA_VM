USE Lab2
GO

Truncate Table Lab2.dbo.Employee
GO

;WITH Employee (EmployeeID,LastName,FirstName,Employee,Title,TitleOfCourtesy,BirthDate,HireDate,AgeatHired,CurrentAge,ReportsTo)
as (

SELECT EmployeeID
      ,LastName
      ,FirstName
      ,Employee
      ,Title
      ,TitleOfCourtesy
      ,BirthDate
      ,HireDate
      ,AgeatHired
      ,CurrentAge
      ,ReportsTo
  FROM Northwind_TC.emp.Employees
)
INSERT INTO dbo.Employee (EmployeeID, LastName, FirstName, Employee, Title, TitleOfCourtesy, BirthDate, HireDate, AgeAtHire)
VALUES
(1, 'Smith', 'John', 'John Smith', 'Manager', 'Mr.', '1980-05-15', '2010-06-01', 30),
(2, 'Johnson', 'Emily', 'Emily Johnson', 'Analyst', 'Ms.', '1992-08-22', '2018-09-15', 26),
(3, 'Lee', 'Michael', 'Michael Lee', 'Developer', 'Mr.', '1985-12-10', '2012-01-20', 26),
(4, 'Brown', 'Sarah', 'Sarah Brown', 'HR Specialist', 'Ms.', '1990-03-05', '2015-04-10', 25),
(5, 'Davis', 'Robert', 'Robert Davis', 'Support Engineer', 'Mr.', '1988-07-30', '2016-08-01', 28);

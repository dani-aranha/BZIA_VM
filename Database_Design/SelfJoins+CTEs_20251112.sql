USE Northwind_TC
GO

/*SELF JOINS - Normalizing x Denormalizing

Create a query that referes itself

USE Northwind_TC
GO 

EmployeeDimLab
---
EmployeeID int PK
LastName varchar(50)
FirstName varchar(50)
Title varchar(50)
BirthDate DATE
HireDate DATE
City varchar(50)
Region varchar(50)
Country varchar(50)
ReportsTo NULL int FK >- mdl.MgrID
 
ManagerDimLab as mdl
---
MgrID int PK
MgrName varchar(100)
MgrTitle varchar(50)

*/

--This query does not create a new structure; it simply joins the same table twice.It’s normalized because:
--The underlying data remains in its original normalized form (one table for employees).
--No redundant data is stored permanently; the join is temporary for the query result.
SELECT 
    e.EmployeeID
    ,e.LastName
    ,e.FirstName 
    ,e.Title
    ,cast(e.BirthDate as date) as BirthDate
    ,cast(e.HireDate as date) as HireDate
    ,e.City
    ,isnull(e.Region, e.Country) as Region
    ,e.Country
    ,isnull(m.EmployeeID, -99) AS MgrID
    ,isnull(m.FirstName + ' ' + m.LastName, 'The Board') AS MgrName
    ,isnull(m.Title, 'BoD') as MgrTitle
FROM emp.Employees e
     LEFT OUTER JOIN emp.Employees m
      ON e.ReportsTo = m.EmployeeID

/* Turn previous query as a CTE
--Hint: your CTE query should be for the manager */


;WITH Managers 
as
(
SELECT 
    e.EmployeeID 
    ,e.FirstName
    ,e.LastName 
    ,e.Title
FROM emp.Employees e
)

SELECT 
    e.EmployeeID
    ,e.LastName
    ,e.FirstName 
    ,e.Title
    ,cast(e.BirthDate as date) as BirthDate
    ,cast(e.HireDate as date) as HireDate
    ,e.City
    ,isnull(e.Region, e.Country) as Region
    ,e.Country
    ,isnull(m.EmployeeID, -99) AS MgrID
    ,isnull(m.FirstName + ' ' + m.LastName, 'The Board') AS MgrName
    ,isnull(m.Title, 'BoD') as MgrTitle
FROM emp.Employees e
     LEFT OUTER JOIN Managers m
      ON e.ReportsTo = m.EmployeeID
/*
--Why prefer the direct self-join?

Simplicity: One query, no extra logical layer.
Performance: SQL Server optimizes self-joins well; adding a CTE doesn’t improve speed.
Best for one-off queries: If you only need this join once, the self-join is straightforward.


--Why prefer the CTE approach?

Readability: Separates manager logic from the main query, making it easier to understand.
Reusability: If you need manager data in multiple queries or calculations, the CTE avoids repeating code.
Complex queries: If you later add more joins or aggregations, CTEs help organize the query.
*/

--NEXT STEP
/* HINT *Wrap this in a CTE or two ... */

USE Employees
GO

Truncate Table dbo.ManagerDimLab
GO
Truncate Table dbo.EmployeeDimLab 
GO

USE Northwind_TC
GO

---Orders matters here as well>>Needs to populate "ManagerDimLab" first due to the FK
WITH EmployeesCTE (EmployeeID,LastName, FirstName,Title,BirthDate,HireDate,City,Region,Country,MgrID,MgrName, MgrTitle)
AS (
SELECT
    e.EmployeeID
    ,e.LastName
    ,e.FirstName
    ,e.Title
    ,CAST(e.BirthDate AS date)
    ,CAST(e.HireDate AS date) 
    ,e.City
    ,ISNULL(e.Region, e.Country) 
    ,e.Country
    ,ISNULL(m.EmployeeID, -99)
    ,ISNULL(m.FirstName + ' ' + m.LastName, 'The Board') 
    ,ISNULL(m.Title, 'Bod')
FROM emp.Employees e
    LEFT OUTER JOIN emp.Employees m
        ON e.ReportsTo = m.EmployeeID
)INSERT INTO Employees.dbo.ManagerDimLab 
SELECT DISTINCT MgrID, MgrName, MgrTitle
FROM EmployeesCTE
;
WITH EmployeesCTE (EmployeeID,LastName, FirstName,Title,BirthDate,HireDate,City,Region,Country,ReportsTo,MgrName, MgrTitle)
AS (
SELECT
    e.EmployeeID
    ,e.LastName
    ,e.FirstName
    ,e.Title
    ,CAST(e.BirthDate AS date) 
    ,CAST(e.HireDate AS date) 
    ,e.City
    ,ISNULL(e.Region, e.Country) 
    ,e.Country
    ,ISNULL(m.EmployeeID, -99)
    ,ISNULL(m.FirstName + ' ' + m.LastName, 'The Board') 
    ,ISNULL(m.Title, 'Bod')
FROM emp.Employees e
    LEFT OUTER JOIN emp.Employees m
        ON e.ReportsTo = m.EmployeeID
)INSERT INTO Employees.dbo.EmployeeDimLab 
SELECT EmployeeID,LastName,FirstName,Title,BirthDate,HireDate,City,Region,Country,ReportsTo
FROM EmployeesCTE

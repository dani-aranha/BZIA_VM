USE Northwind_TC
GO

/*SELF JOINS - Normalizing x Denormalizing

Create a query that referes itself

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
 

WITH EmployeesCTE AS
(
    SELECT
        EmployeeID
       ,LastName
       ,FirstName
       ,Title
       ,CAST(BirthDate AS date) AS BirthDate
       ,CAST(HireDate AS date) AS HireDate
       ,City
       ,ISNULL(Region, Country) AS Region
       ,Country
       ,ReportsTo
    FROM emp.Employees
),
ManagersCTE (MgrID, ManagerName, ManagerTitle) AS
(
    SELECT
        EmployeeID
       ,CONCAT_WS(' ', FirstName, LastName)
       ,Title
    FROM emp.Employees
)
SELECT
    e.EmployeeID
   ,e.LastName
   ,e.FirstName
   ,e.Title
   ,e.BirthDate
   ,e.HireDate
   ,e.City
   ,e.Region
   ,e.Country
   ,ISNULL(m.MgrID, -99) AS ReportsTo
   ,ISNULL(m.ManagerName, 'The Board') AS MgrName
   ,ISNULL(m.ManagerTitle, 'BoD') AS MgrTitle
FROM EmployeesCTE e
LEFT JOIN ManagersCTE m ON e.ReportsTo = m.MgrID
ORDER BY MgrName;

--------
Truncate Table Lab2.dbo.EmployeeDimLab
GO

INSERT INTO Lab2.dbo.EmployeeDimLab (EmployeeID,LastName,FirstName,Title,BirthDate,HireDate,City,Region,Country,ReportTo)
 SELECT
        e.EmployeeID
       ,e.LastName
       ,e.FirstName
       ,e.Title
       ,CAST(e.BirthDate AS date) AS BirthDate
       ,CAST(e.HireDate AS date) AS HireDate
       ,e.City
       ,ISNULL(e.Region, e.Country) AS Region
       ,e.Country
       ,ISNULL(m.EmployeeID, -99) AS ReportsTo
FROM Northwind_TC.emp.Employees AS e
LEFT JOIN Northwind_TC.emp.Employees AS m ON e.ReportsTo = m.EmployeeID;


Truncate Table Lab2.dbo.ManagerDimLab
GO

INSERT INTO Lab2.dbo.ManagerDimLab (MgrID, ManagerName, ManagerTitle)

SELECT DISTINCT
    ISNULL(e.ReportsTo, -99) AS MgrID,
    ISNULL(m.FirstName + m.LastName, 'The Board') AS ManagerName,
    ISNULL(m.Title, 'BoD') AS MgrTitle
FROM Northwind_TC.emp.Employees AS e
LEFT OUTER JOIN Northwind_TC.emp.Employees AS m
    ON e.ReportsTo = m.EmployeeID;

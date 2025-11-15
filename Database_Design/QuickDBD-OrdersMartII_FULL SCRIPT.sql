USE Employees
GO

/*****DROPPING TABLES FOR TABLE REFRESH*****/

DROP TABLE if exists dbo.[EmployeeDimLab]; --order to drop table matters since we have a FK >> Constraint Table
GO
DROP TABLE if exists dbo.[ManagerDimLab];
GO


/*****CREATING TABLES PRIOR TO LOADING DATA*****/

USE Employees
GO

SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [EmployeeDimLab] (
    [EmployeeID] int  NOT NULL ,
    [LastName] varchar(50)  NOT NULL ,
    [FirstName] varchar(50)  NOT NULL ,
    [Title] varchar(50)  NOT NULL ,
    [BirthDate] date  NOT NULL ,
    [HireDate] date  NOT NULL ,
    [City] varchar(50)  NOT NULL ,
    [Region] varchar(50)  NOT NULL ,
    [Country] varchar(50)  NOT NULL ,
    [ReportsTo] int  NULL ,
    CONSTRAINT [PK_EmployeeDimLab] PRIMARY KEY CLUSTERED (
        [EmployeeID] ASC
    )
)

CREATE TABLE [ManagerDimLab] (
    [MgrID] int  NOT NULL ,
    [ManagerName] varchar(100)  NOT NULL ,
    [ManagerTitle] varchar(50)  NOT NULL ,
    CONSTRAINT [PK_ManagerDimLab] PRIMARY KEY CLUSTERED (
        [MgrID] ASC
    )
)

ALTER TABLE [EmployeeDimLab] WITH CHECK ADD CONSTRAINT [FK_EmployeeDimLab_ReportsTo] FOREIGN KEY([ReportsTo])
REFERENCES [ManagerDimLab] ([MgrID])


COMMIT TRANSACTION QUICKDBD

--ALTER TABLE [EmployeeDimLab] CHECK CONSTRAINT [FK_EmployeeDimLab_ReportsTo] >> removed since it doesn't affect the function

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

--Test query


USE Employees;
GO


Select *
FROM dbo.EmployeeDimLab e
Inner Join dbo.ManagerDimLab m
	ON e.ReportsTo = m.MgrID


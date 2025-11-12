USE Lab2
GO

DROP TABLE if exists dbo.Employee;

CREATE TABLE dbo.Employee (
    EmployeeID int  NOT NULL ,
    LastName varchar(100)  NOT NULL ,
    FirstName varchar(100)  NOT NULL ,
    Employee varchar(200) NOT NULL,
    Title varchar(100)  NOT NULL ,
    TitleOfCourtesy varchar(100)  NOT NULL ,
    BirthDate Date  NOT NULL ,
    HireDate Date  NOT NULL ,
    AgeatHired int NOT NULL,

    --Derived Column: Age at time of hire
    CurrentAge AS DATEDIFF(YEAR, BirthDate, GETDATE()) ,
    ReportsTo int  NOT NULL DEFAULT -99,
    CONSTRAINT PK_Employee PRIMARY KEY CLUSTERED (
        EmployeeID ASC
    )
)
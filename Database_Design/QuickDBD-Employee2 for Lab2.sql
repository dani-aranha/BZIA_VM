USE Lab2
GO

DROP TABLE if exists dbo.Employee2;

CREATE TABLE dbo.Employee2 (
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
    ReportsTo int NOT NULL DEFAULT -99
    CONSTRAINT PK_Employee2 PRIMARY KEY CLUSTERED (
        EmployeeID ASC
    )
)
 INSERT INTO dbo.Employee2 (EmployeeID, LastName, FirstName, Employee, Title, TitleOfCourtesy, BirthDate, HireDate, AgeatHired, ReportsTo)
VALUES
(1, 'Smith', 'John', 'John Smith', 'Manager', 'Mr.', '1980-05-15', '2010-06-01', 30, 4),
(2, 'Johnson', 'Emily', 'Emily Johnson', 'Analyst', 'Ms.', '1992-08-22', '2018-09-15', 26, -99),
(3, 'Lee', 'Michael', 'Michael Lee', 'Developer', 'Mr.', '1985-12-10', '2012-01-20', 26, 2),
(4, 'Brown', 'Sarah', 'Sarah Brown', 'HR Specialist', 'Ms.', '1990-03-05', '2015-04-10', 25, 4),
(5, 'Davis', 'Robert', 'Robert Davis', 'Support Engineer', 'Mr.', '1988-07-30', '2016-08-01', 28, 4);

SELECT * 
FROM dbo.Employee2;
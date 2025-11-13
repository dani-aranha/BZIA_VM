-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/M404LM
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
USE Lab2
GO

DROP TABLE if exists dbo.[ManagerDimLab];
DROP TABLE if exists dbo.[EmployeeDimLab];

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
    [ReportTo] int  NULL ,
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

COMMIT TRANSACTION QUICKDBD
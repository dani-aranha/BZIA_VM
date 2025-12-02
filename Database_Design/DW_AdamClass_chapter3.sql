
USE Lab1;
GO

-- Add memory-optimized filegroup
ALTER DATABASE Lab1 
ADD FILEGROUP Lab1MOD CONTAINS MEMORY_OPTIMIZED_DATA;
GO

-- Add file to the filegroup
ALTER DATABASE Lab1
ADD FILE (
    NAME = 'Lab1MOD',
    FILENAME = 'C:\Lab1MOD' --didn't work
) TO FILEGROUP Lab1MOD;
GO

-- Create memory-optimized table (without columnstore index)
CREATE TABLE dbo.EmployeeMOD (
    EmployeeID INT IDENTITY (1,1) NOT NULL PRIMARY KEY NONCLUSTERED,
    BirthDate DATE NOT NULL,
    Country VARCHAR(50) NOT NULL
) WITH (MEMORY_OPTIMIZED = ON);
GO

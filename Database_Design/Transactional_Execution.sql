TRUNCATE TABLE Seats
TRUNCATE TABLE Requests
TRUNCATE TABLE Results
------------------------

INSERT INTO Seats (SeatID, Status)
VALUES (1, 'Available'), (2, 'Available'), (3, 'Reserved'), (4, 'Purchased');

INSERT INTO Requests (CustomerID, SeatID)
VALUES (101, 1), (102, 3), (103, 4), (104, 2);



------------------------
SELECT * FROM Seats;
SELECT * FROM Requests;
SELECT * FROM Results;


EXEC ProcessSeatRequests;
SELECT * FROM Results;
SELECT * FROM Seats;
SELECT * FROM Requests;

/*
TRUNCATE TABLE dbo.Results
*/
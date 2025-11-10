
--Changed original "Ordersfact" table name since Pat defined the column as just 'Orders'
WITH Orders (OrdersPK,OrderID,LineItemNumber,ProductID,CustomerID,EmployeeID,ShipVia,OrderDate,DaysUntilRequired
,DaysToShipped,UnitPrice,Quantity,Discount,LineItemTotal) AS 
(
SELECT (o.OrderID * 100000) + od.ProductID
    ,o.OrderID
    ,ROW_NUMBER() OVER (PARTITION BY o.OrderID ORDER BY od.ProductID) AS LineItemNumber
    ,od.ProductID
    ,o.CustomerID
    ,o.EmployeeID
    ,o.ShipVia
    ,o.OrderDate
    ,DATEDIFF(DAY, o.OrderDate, o.RequiredDate) AS DaysUntilRequired
    ,DATEDIFF(DAY, o.OrderDate, o.ShippedDate) AS DaysToShipped
--   ,o.Freight
    ,od.UnitPrice
    ,od.Quantity
    ,od.Discount
    ,(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS LineItemTotal
FROM  Northwind_TC.sales.Orders AS o
LEFT JOIN Northwind_TC.sales.OrderDetails AS od ON o.OrderID = od.OrderID
)
INSERT INTO Lab1.dbo.Orders (OrdersPK,OrderID,LineItemNumber,ProductID,CustomerID,EmployeeID,ShipVia,OrderDate,DaysUntilRequired
,DaysToShipped,UnitPrice,Quantity,Discount,LineItemTotal)
SELECT *
FROM Orders



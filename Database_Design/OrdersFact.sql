

WITH OrdersFact (OrderID,LineItemNumber,ProductID,CustomerID,EmployeeID,ShipVia,OrderDate,DaysUntilRequired
,DaysToShipped,UnitPrice,Quantity,Discount,LineItemTotal) AS (
    SELECT 
        o.OrderID
        ,ROW_NUMBER() OVER (PARTITION BY o.OrderID ORDER BY od.ProductID) AS LineItemNumber
        ,od.ProductID
        ,o.CustomerID
        ,o.EmployeeID
        ,o.ShipVia
        ,o.OrderDate
        ,DATEDIFF(DAY, o.OrderDate, o.RequiredDate) AS DaysUntilRequired
        ,DATEDIFF(DAY, o.OrderDate, o.ShippedDate) AS DaysToShipped
 --       ,o.Freight
        ,od.UnitPrice
        ,od.Quantity
        ,od.Discount
        ,(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS LineItemTotal
    FROM 
        sales.Orders AS o
    LEFT JOIN sales.OrderDetails AS od ON o.OrderID = od.OrderID
)
SELECT *
FROM OrdersFact
ORDER BY OrderID, LineItemNumber;


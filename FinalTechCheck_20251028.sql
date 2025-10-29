USE Northwind_TC
GO

SELECT Country
	,COUNT(CustomerID) as CustomerCount
FROM Sales.Customers
GROUP BY Country
Order BY CustomerCount DESC

SELECT YEAR(OrderDate) AS OrderYear
    ,COUNT(*) AS TotalOrders
FROM Sales.Orders
GROUP BY YEAR(OrderDate)
ORDER BY OrderYear

SELECT S.CompanyName
	,SUM(So.Freight) as TotalFreight
FROM Sales.Shippers as S
	Inner Join Sales.Orders as So
		ON So.ShipVia = S.ShipperID
GROUP BY S.CompanyName
ORDER BY TotalFreight DESC

SELECT TOP 10 WITH Ties P.ProductName
	,SUM(Sod.Quantity) as TotalQuantitySold
FROM Prod.Products as P
	INNER Join Sales.OrderDetails as Sod
		ON Sod.ProductID = P.ProductID
GROUP BY P.ProductName
Order BY TotalQuantitySold DESC

SELECT pc.CategoryName
	,AVG(sod.quantity) as AvgQuantitySold
	,SUM(Sod.Quantity) as TotalQuantitySold
FROM Sales.OrderDetails as Sod
	Inner Join Prod.Products as P
		ON Sod.ProductID = P.ProductID
	Inner Join prod.Categories as Pc
		ON Pc.CategoryID = P.CategoryID
	Inner Join Sales.Orders as So
		ON So.OrderID = Sod.OrderID
WHERE YEAR(So.OrderDate) = '2023'
GROUP BY pc.CategoryName
HAVING SUM(sod.quantity)>= 1000
ORDER BY AvgQuantitySold DESC

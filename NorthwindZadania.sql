USE northwind;
/*
SELECT orders.OrderID, customers.ContactName, orders.OrderDate
FROM Orders 
INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID; */

/*
SELECT Customers.ContactName, Orders.OrderID FROM Customers
LEFT JOIN Orders ON Customers.CustomerID=Orders.CustomerID 
ORDER BY Customers.ContactName; */

/*
SELECT Customers.ContactName, Orders.OrderID FROM Orders
RIGHT JOIN Customers ON Customers.CustomerID=Orders.CustomerID 
ORDER BY Customers.ContactName;*/

SELECT Customers.ContactName, orders.OrderID FROM Orders
FULL JOIN Customers ON Customers.CustomerID=Orders.CustomerID 
ORDER BY Customers.ContactName;





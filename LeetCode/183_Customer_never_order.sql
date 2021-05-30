# Write your MySQL query statement below

SELECT Customers.name as 'Customers' FROM Customers WHERE Customers.Id NOT IN (SELECT CustomerId FROM Orders);

SELECT Name as 'Customers' FROM Customers c LEFT JOIN Orders o ON c.Id=o.CustomerId WHERE o.CustomerId IS NULL ;
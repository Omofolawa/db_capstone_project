-- CREATING VIEW, JOINS AND SUBQUERIES--
-- TASK 1--
CREATE VIEW OrdersView AS 
SELECT OrderID, Quantity, TotalCost 
FROM Orders 
WHERE Quantity > 2;

-- TASK2 --
SELECT Customers.CustomerID, CONCAT(Customers.FirstName, ' ', Customers.LastName) AS 
FullName, Orders.Orderid, Orders.TotalCost, Menu.MenuName, MenuItems.Course, MenuItems.Starter
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN Menu ON Orders.MenuID = Menu.MenuID
JOIN MenuItems ON Menu.MenuItemsID = MenuItems.MenuItemsID
WHERE Orders.TotalCost > 15
ORDER BY Orders.TotalCost ASC;
  
-- TASK3 --
SELECT MenuName
FROM Menu
WHERE MenuID = ANY (
    SELECT MenuID
    FROM Orders
    GROUP BY MenuID
    HAVING COUNT(*) < 2
);

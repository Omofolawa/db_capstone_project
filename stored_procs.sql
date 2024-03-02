-- STORED PROCEDURES --

-- TASK1 GetMaxQuantity--
DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
    SELECT MAX(quantity) AS Max_Ordered_Quantity
    FROM Orders;
END //

DELIMITER ;

CALL GetMaxOrderedQuantity();

 
-- TASK2 GetOrderDetail--

DELIMITER //

CREATE PROCEDURE GetOrderDetail(IN CustomerID INT)
BEGIN
    SET @CustomerID = CustomerID;
    SET @sql = CONCAT('SELECT OrderID, Quantity, Totalcost FROM Orders WHERE CustomerID = ?');
    PREPARE stmt FROM @sql;
    EXECUTE stmt USING @CustomerID;
    DEALLOCATE PREPARE stmt;
END //

DELIMITER ;
 
CALL GetOrderDetail(1);
 
-- TASK3 CancelOrder --

DELIMITER //

CREATE PROCEDURE CancelOrder (IN OrderID INT)
BEGIN
    DELETE FROM Orders WHERE OrderID = OrderID;
END //

DELIMITER ;
 
CALL CancelOrder(1);

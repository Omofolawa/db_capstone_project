-- TASK 1 --

INSERT INTO Bookings (BookingID, BookingDate, TableNumber, EmployeeID, CustomerID)
VALUES
(1, '2022-10-10', 5, 1, 1),
(2, '2022-11-12', 3, 4, 2),
(3, '2022-10-11', 2, 2, 1),
(4, '2022-10-13', 2, 4, 3),
(5, '2023-05-18', 5, 2, 5),
(6, '2023-08-20', 8, 5, 2),
(7, '2023-11-12', 4, 1, 7),
(8, '2023-12-12', 6, 1, 8),
(9, '2023-09-15', 5, 3, 4),
(10, '2023-05-17', 2, 4, 10);

-- TASK 2 -- 
 
DELIMITER //

CREATE PROCEDURE CheckBooking(IN booking_date DATE, IN table_number INT)
BEGIN
    DECLARE table_status VARCHAR(255);
    
    SELECT 
        CASE 
            WHEN EXISTS (
                SELECT * 
                FROM Bookings 
                WHERE BookingDate = booking_date AND TableNumber = table_number
            ) THEN 'Booked'
            ELSE 'Available'
        END INTO table_status;
    
    SELECT CONCAT('Table ', table_number, ' is ', table_status, ' on ', booking_date) AS message;
END //

DELIMITER ;

-- TASK 3 -- 
 
DELIMITER //

CREATE PROCEDURE AddValidBooking(IN booking_date DATE, IN table_number INT)
BEGIN
    DECLARE table_status VARCHAR(255);
    
    START TRANSACTION;
    
    SELECT 
        CASE 
            WHEN EXISTS (
                SELECT * 
                FROM Bookings 
                WHERE BookingDate = booking_date AND TableNumber = table_number
            ) THEN 'Booked'
            ELSE 'Available'
        END INTO table_status;
    
    IF table_status = 'Booked' THEN
        ROLLBACK;
        SELECT 'Table is already booked on the specified date. Booking declined.' AS message;
    ELSE
        INSERT INTO Bookings (BookingDate, TableNumber) VALUES (booking_date, table_number);
        COMMIT;
        SELECT 'Booking successful.' AS message;
    END IF;
END //

DELIMITER ;

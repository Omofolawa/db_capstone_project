ALTER TABLE bookings ADD CONSTRAINT fk_Bookings_EmployeeID
FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID);

ALTER TABLE menu ADD CONSTRAINT fk_Menu_MenuItemsID
FOREIGN KEY (MenuItemsID) REFERENCES MenuItems (MenuItemsID);

ALTER TABLE bookings ADD CONSTRAINT fk_Bookings_CustomerID
FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID);

ALTER TABLE bookings ADD CONSTRAINT fk_Bookings_CustomerID
FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID);

ALTER TABLE orders ADD CONSTRAINT fk_orders_MenuID
FOREIGN KEY (MenuID) REFERENCES Menu (MenuID);

ALTER TABLE orders ADD CONSTRAINT fk_orders_bookingID
FOREIGN KEY (BoookingID) REFERENCES Bookings (bookingID);

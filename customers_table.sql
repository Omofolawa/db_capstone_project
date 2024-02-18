-- DATA INSERT SYNTAX INTO Customers --
INSERT INTO Customers (CustomerID, FirstName, LastName, PhoneNumber)
VALUES
(1, 'Jane', 'Smith', 1234567890),
(2, 'Alice', 'Johnson', 9876543210),
(3, 'Bob', 'Jones', 5555555555),
(4, 'Michael', 'Brown', 1112223333),
(5, 'Elena', 'Salvai', 4444444444),
(6, 'David', 'Wilson', 5556667777),
(7, 'Sarah', 'Martinez', 8889990000),
(8, 'Ryan', 'Anderson', 1231231234),
(9, 'Jessica', 'Taylor', 9876543210),
(10, 'Faiz', 'Adekunke', 1112223333),
(11, 'Adrian', 'Gollini', 4445556666),
(12, 'Giorgos', 'Dioudis', 7778889999),
(13, 'Fatma', 'Olayinka', 1234567890),
(14, 'Emily', 'Davis', 5556667777),
(15, 'Joe', 'Biden', 8889990000),
(16, 'Ayuba', 'Adewuyi', 8034717273),
(17, 'Faiz', 'Yomola', 8889991234);


-- DATA INSERT SYNTAX INTO MENU --

INSERT INTO menu (MenuID, Cuisine, Starter, Course, Drink, Dessert)
VALUES
(1, 'Italian', 'Bruschetta', 'Pasta Carbonara', 'Red Wine', 'Tiramisu'),
(2, 'Mexican', 'Guacamole', 'Tacos', 'Margarita', 'Churros'),
(3, 'Indian', 'Samosa', 'Butter Chicken', 'Lassi', 'Gulab Jamun'),
(4, 'Japanese', 'Edamame', 'Sushi', 'Green Tea', 'Mochi'),
(5, 'French', 'Escargot', 'Coq au Vin', 'Champagne', 'Crème Brûlée'),
(6, 'African', 'Suya', 'Jollof Rice', 'Palm Wine', 'Puff Puff'),
(7, 'Nigerian', 'Pepper Soup', 'Iyan et Efo riro', 'Zobo', 'Chin Chin'),
(8, 'Chinese', 'Spring Rolls', 'Kung Pao Chicken', 'Jasmine Tea', 'Fortune Cookies'),
(9, 'Thai', 'Tom Yum Soup', 'Pad Thai', 'Thai Iced Tea', 'Mango Sticky Rice'),
(10, 'Greek', 'Tzatziki', 'Moussaka', 'Ouzo', 'Baklava'),
(11, 'Spanish', 'Gazpacho', 'Paella', 'Sangria', 'Churros'),
(12, 'German', 'Pretzels', 'Schnitzel', 'Beer', 'Black Forest Cake'),
(13, 'Korean', 'Kimchi', 'Bibimbap', 'Soju', 'Bingsu'),
(14, 'Vietnamese', 'Spring Rolls', 'Pho', 'Vietnamese Coffee', 'Che Ba Mau'),
(15, 'Lebanese', 'Hummus', 'Shawarma', 'Arak', 'Baklava'),
(16, 'Brazilian', 'Coxinha', 'Feijoada', 'Caipirinha', 'Brigadeiro'),
(17, 'Russian', 'Borscht', 'Beef Stroganoff', 'Vodka', 'Napoleon Cake'),
(18, 'Turkish', 'Meze', 'Kebab', 'Raki', 'Baklava'),
(19, 'Moroccan', 'Harira', 'Tagine', 'Mint Tea', 'Baklava'),
(20, 'Peruvian', 'Ceviche', 'Lomo Saltado', 'Pisco Sour', 'Alfajores');


-- DATA INSERT SYNTAX INTO Orders--
INSERT INTO Orders (OrderID, OrderDate, Quantity, TotalCost, BookingID, MenuID)
VALUES
(1, '2023-01-01 12:30:00', 2, 25.00, 1, 1),
(2, '2023-01-02 18:45:00', 1, 15.00, 2, 2),
(3, '2023-01-03 17:33:00', 3, 45.00, 3, 3),
(4, '2023-01-04 18:23:00', 2, 30.00, 4, 4),
(5, '2023-01-05 13:34:00', 3, 15.00, 5, 5),
(6, '2023-01-06 12:45:00', 2, 30.00, 6, 6),
(7, '2023-01-07 14:15:00', 4, 15.00, 7, 7),
(8, '2023-01-08 12:55:00', 3, 45.00, 8, 8),
(9, '2023-01-09 13:58:00', 2, 30.00, 9, 9),
(10, '2023-01-10 16:17:00', 1, 15.00, 10, 10),
(11, '2023-01-11 15:15:00', 2, 30.00, 11, 11),
(12, '2023-01-12 13:45:00', 5, 15.00, 12, 12),
(13, '2023-01-13 18:35:00', 3, 45.00, 13, 13),
(14, '2023-01-14 12:25:10', 7, 30.00, 14, 14),
(15, '2023-01-15 14:25:00', 1, 15.00, 15, 15);



-- DATA INSERT SYNTAX INTO Orderdelivery --
INSERT INTO OrderDelivery (OrderDeliveryID, OrderID, DeliveryDate, Status)
VALUES
(1, 1, '2023-01-01 12:30:00', 'Delivered'),
(2, 2, '2023-01-02 18:45:00', 'Pending'),
(3, 3, '2023-01-03 17:33:00', 'Delivered'),
(4, 4, '2023-01-04 18:23:00', 'Pending'),
(5, 5, '2023-01-05 13:34:00', 'Delivered'),
(6, 6, '2023-01-06 12:45:00', 'Delivered'),
(7, 7, '2023-01-07 14:15:00', 'Pending'),
(8, 8, '2023-01-08 12:55:00', 'Delivered'),
(9, 9, '2023-01-09 13:58:00', 'Pending'),
(10, 10, '2023-01-10 16:17:00', 'Delivered'),
(11, 11, '2023-01-11 15:15:00', 'Pending'),
(12, 12, '2023-01-12 13:45:00', 'Delivered'),
(13, 13, '2023-01-13 18:35:00', 'Pending'),
(14, 14, '2023-01-14 12:25:10', 'Delivered'),
(15, 15, '2023-01-15 14:25:00', 'Pending');



-- QUERY SYNTAX--
SELECT * FROM Employees
WHERE EmployeeID = 1;
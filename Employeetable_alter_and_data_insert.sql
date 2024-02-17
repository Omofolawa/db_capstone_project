ALTER TABLE Employees
ADD COLUMN Email VARCHAR(255) NOT NULL,
ADD COLUMN Address VARCHAR(255) NOT NULL,
ADD COLUMN PhoneNumber INT NOT NULL;

INSERT INTO Employees (EmployeeID, Name, Role, Salary, Email, Address, PhoneNumber)
VALUES
(1, 'Bola Adeniran', 'Manager', 70000, 'Bola.a@littlelemon.com', '724 Parsley Lane, Old Town, Chicago, IL', 351258074),
(2, 'Adrian Gollini', 'Assistant Manager', 65000, 'Adrian.g@littlelemon.com', '334 Dill Square, Lincoln Park, Chicago, IL', 351474048),
(3, 'Giorgos Dioudis', 'Head Chef', 50000, 'Giorgos.d@littlelemon.com', '879 Sage Street, West Loop, Chicago, IL', 351970582),
(4, 'Fatma Olayinka', 'Assistant Chef', 45000, 'Fatma.o@littlelemon.com', '132 Bay Lane, Chicago, IL', 351963569),
(5, 'Elena Salvai', 'Head Waiter', 40000, 'Elena.s@littlelemon.com', '989 Thyme Square, EdgeWater, Chicago, IL', 351074198),
(6, 'John Millar', 'Receptionist', 35000, 'John.m@littlelemon.com', '245 Dill Square, Lincoln Park, Chicago, IL', 351584508),
(7, 'Joe Biden', 'Security', 37250, 'Joe.b@littlelemon.com', '21 White House Villa, Washington, ST', 351200123);

CREATE TABLE IF NOT EXISTS littleLemondb.MenuItems (
  MenuItemsID INT NOT NULL AUTO_INCREMENT,
  Starter VARCHAR(45) NULL,
  Course VARCHAR(45) NULL,
  Drink VARCHAR(45) NULL,
  Dessert VARCHAR(45) NULL,
  PRIMARY KEY (MenuItemsID)
)
ENGINE = InnoDB;
-- Data insertion syntax ---
INSERT INTO MenuItems (Starter, Course, Drink, Dessert)
VALUES
('Bruschetta', 'Pasta Carbonara', 'Red Wine', 'Tiramisu'),
('Guacamole', 'Tacos', 'Margarita', 'Churros'),
('Samosa', 'Butter Chicken', 'Lassi', 'Gulab Jamun'),
('Edamame', 'Sushi', 'Green Tea', 'Mochi'),
('Escargot', 'Coq au Vin', 'Champagne', 'Crème Brûlée'),
('Suya', 'Jollof Rice', 'Palm Wine', 'Puff Puff'),
('Pepper Soup', 'Iyan et Efo riro', 'Zobo', 'Chin Chin'),
('Spring Rolls', 'Kung Pao Chicken', 'Jasmine Tea', 'Fortune Cookies'),
('Tom Yum Soup', 'Pad Thai', 'Thai Iced Tea', 'Mango Sticky Rice'),
('Tzatziki', 'Moussaka', 'Ouzo', 'Baklava'),
('Gazpacho', 'Paella', 'Sangria', 'Churros'),
('Pretzels', 'Schnitzel', 'Beer', 'Black Forest Cake'),
('Kimchi', 'Bibimbap', 'Soju', 'Bingsu'),
('Spring Rolls', 'Pho', 'Vietnamese Coffee', 'Che Ba Mau'),
('Hummus', 'Shawarma', 'Arak', 'Baklava'),
('Coxinha', 'Feijoada', 'Caipirinha', 'Brigadeiro'),
('Borscht', 'Beef Stroganoff', 'Vodka', 'Napoleon Cake'),
('Meze', 'Kebab', 'Raki', 'Baklava'),
('Harira', 'Tagine', 'Mint Tea', 'Baklava'),
('Ceviche', 'Lomo Saltado', 'Pisco Sour', 'Alfajores');

CREATE TABLE IF NOT EXISTS littleLemondb.Menu (
  MenuID INT NOT NULL AUTO_INCREMENT,
  MenuItemsID INT NOT NULL,
  MenuName VARCHAR(45) NOT NULL,
  Cuisine VARCHAR(45) NOT NULL,
  PRIMARY KEY (MenuID),
  FOREIGN KEY (MenuItemsID) REFERENCES MenuItems(MenuItemsID)
)
ENGINE = InnoDB;
-- Data insertion syntax ---
INSERT INTO Menu (MenuItemsID, MenuName, Cuisine)
VALUES
(1, 'Italy', 'Italian'),
(2, 'Mexico', 'Mexican'),
(3, 'India', 'Indian'),
(4, 'Japan', 'Japanese'),
(5, 'France', 'French'),
(6, 'Africa', 'African'),
(7, 'Nigeria', 'Nigerian'),
(8, 'China', 'Chinese'),
(9, 'Thailand', 'Thai'),
(10, 'Greece', 'Greek'),
(11, 'Spain', 'Spanish'),
(12, 'Germany', 'German'),
(13, 'Korea', 'Korean'),
(14, 'Vietnam', 'Vietnamese'),
(15, 'Lebanon', 'Lebanese'),
(16, 'Brazil', 'Brazilian'),
(17, 'Russia', 'Russian'),
(18, 'Turkey', 'Turkish'),
(19, 'Morocco', 'Moroccan'),
(20, 'Peru', 'Peruvian');

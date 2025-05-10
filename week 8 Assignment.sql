CREATE DATABASE CafeOrderManagement;
USE CafeOrderManagement;

CREATE TABLE Customers (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Contact_Info VARCHAR(100)
);

CREATE TABLE Menu_Items (
    Item_ID INT AUTO_INCREMENT PRIMARY KEY,
    Item_Name VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Category VARCHAR(50)
);

CREATE TABLE Orders (
    Order_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT,
    Order_Date DATE NOT NULL,
    Total_Amount DECIMAL(10, 2),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

CREATE TABLE Order_Details (
    Order_Detail_ID INT AUTO_INCREMENT PRIMARY KEY,
    Order_ID INT,
    Item_ID INT,
    Quantity INT NOT NULL,
    Subtotal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Item_ID) REFERENCES Menu_Items(Item_ID)
);

INSERT INTO Customers (Name, Contact_Info) VALUES 
('Amany Nabil', '0123456789'),
('Sarah Ali', '0111111111'),
('Khaled Omar', '0100000000');

INSERT INTO Menu_Items (Item_Name, Price, Category) VALUES 
('Espresso', 30.00, 'Beverage'),
('Latte', 40.00, 'Beverage'),
('Croissant', 20.00, 'Bakery'),
('Sandwich', 50.00, 'Food');

INSERT INTO Orders (Customer_ID, Order_Date, Total_Amount) VALUES 
(1, '2025-05-10', 70.00),
(2, '2025-05-11', 40.00),
(3, '2025-05-12', 50.00);

INSERT INTO Order_Details (Order_ID, Item_ID, Quantity, Subtotal) VALUES 
(1, 1, 2, 60.00),
(1, 3, 1, 20.00),
(2, 2, 1, 40.00),
(3, 4, 1, 50.00);


SELECT * FROM Customers;
SELECT * FROM Menu_Items;
SELECT * FROM Orders;
SELECT * FROM Order_Details;
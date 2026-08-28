
--CREATE DATABASE EjaysMagic

--USE EjaysMagic

--CREATE TABLE Products
--(ProductID int,
--ProductName varchar(50),
--Category varchar(50),
--Price decimal(10,2),
--ProductionCost decimal(10,2),
--StockQuantity int)


--INSERT INTO Products VALUES
--(1, 'Crochet Rose Vase', 'Home Decor', 25.00, 10.00, 5),
--(2, 'Crochet Doll', 'Toys', 80.00, 30.00, 2),
--(3, 'Crochet Hat', 'Clothing', 25.00, 10.00, 5),
--(4, 'Crochet Keychain', 'Accessories', 8.00, 3.00, 12),
--(5, 'Crochet Flower Bouquet', 'Gifts', 40.00, 15.00, 4),
--(6, 'Crochet Shorts', 'Clothing', 35.00, 15.00, 4),
--(7, 'Crochet Cardigan', 'Clothing', 60.00, 25.00, 3),
--(8, 'Crochet Top', 'Clothing', 40.00, 18.00, 5),
--(9, 'Crochet Hairband', 'Accessories', 12.00, 4.00, 8),
--(10, 'Crochet Scrunchie', 'Accessories', 10.00, 3.00, 10)

--ALTER TABLE Products
--ALTER COLUMN ProductID int not null

--ALTER TABLE Products
--ADD CONSTRAINT PK_Products
--PRIMARY KEY (ProductID)

--CREATE TABLE ProductSizes
--(ProductSizeID int,
--ProductID int,
--ProductSize varchar(10),
--StockQuantity int)

--INSERT INTO ProductSizes VALUES
--(1, 6, 'S', 3),
--(2, 6, 'M', 6),
--(3, 6, 'L', 2),
--(4, 6, 'XL', 1),
--(5, 7, 'S', 4),
--(6, 7, 'M', 7),
--(7, 7, 'L', 2),
--(8, 7, 'XL', 1),
--(9, 8, 'S', 2),
--(10, 8, 'M', 4),
--(11, 8, 'L', 3),
--(12, 8, 'XL', 1),
--(13, 3, 'S', 7),
--(14, 3, 'M', 5),
--(15, 3, 'L', 3),
--(16, 3, 'XL', 1)

--ALTER TABLE ProductSizes
--ADD CONSTRAINT ProductSizes_ProductID_Link
--FOREIGN KEY (ProductID)
--REFERENCES Products(ProductID)

--CREATE TABLE Customers
--(CustomerID int primary key,
--FirstName varchar(50),
--LastName varchar(50),
--Email varchar(100),
--PhoneNumber varchar(20)
--)

--INSERT INTO Customers VALUES
--(1, 'Amara', 'Okafor'),
--(2, 'Daniel', 'Brooks'),
--(3, 'Chioma', 'Adeyemi'),
--(4, 'Sophie', 'Bennett'),
--(5, 'Tolu', 'Williams'),
--(6, 'Grace', 'Mensah'),
--(7, 'Michael', 'Carter'),
--(8, 'Adaeze', 'Johnson'),
--(9, 'Emily', 'Clarke'),
--(10, 'Kent', 'Morgan')


--CREATE TABLE Orders
--(OrderID int primary key,
--CustomerID int,
--OrderDate Date,
--TotalAmount Decimal(10,2)
--)

--INSERT INTO Orders VALUES
--(1, 3, '2024-03-15', 45.00),
--(2, 5, '2024-11-05', 35.00),
--(3, 4, '2024-06-30', 30.00),
--(4, 7, '2025-07-22', 25.00),
--(5, 9, '2025-02-18', 20.00),
--(6, 8, '2025-09-13', 65.00),
--(7, 6, '2025-12-08', 80.00),
--(8, 1, '2026-01-02', 100.00),
--(9, 2, '2026-04-27', 50.00),
--(10, 10, '2026-08-22',45.00)

--ALTER TABLE Orders
--ADD CONSTRAINT Orders_CustomerID_Link
--FOREIGN KEY (CustomerID)
--REFERENCES Customers(CustomerID)

--CREATE TABLE OrdersDetails
--(OrderDetailID int primary key,
--OrderID int,
--ProductID int,
--ProductSizeID int,
--Quantity int,
--UnitPrice decimal(10,2)
--)

--INSERT INTO OrdersDetails VALUES
--(1, 1, 6, 1, 1, 35.00),        -- Crochet Shorts, S
--(2, 1, 10, null, 1, 10.00),    -- Crochet Scrunchie

--(3, 2, 3, 13, 1, 25.00),       -- Crohet Hat, S

--(4, 3, 2, null, 1, 80.00),     -- Crocet Doll

--(5, 4, 6, 2, 1, 35.00),        -- Crochet Short, M

--(6, 5, 4, null, 1, 8.00),      -- Crochet Keychain
--(7, 5, 9, null, 1, 12.00),     -- Crochet Hairband

--(8, 6, 8, 10, 1, 40.00),       -- Crochet Top, M
--(9, 6, 10, null, 1, 10.00),    -- Crochet Scrunchie

--(10, 7, 6, 3, 1, 35.00),       -- Crochet Shorts, L
--(11, 7, 4, null, 1, 8.00),     -- Crochet Keychain
--(12, 7, 9, null, 1, 12.00),    -- Crochet Hairband
--(13, 7, 10, null, 1, 10.00),   -- Crochet Scrunchie

--(14, 8, 2, null, 1, 80.00),    -- Crochet Doll
--(15, 8,  10, null, 2, 10.00),  -- 2 Crochet Scrunchies

--(16, 9, 6, 4, 1, 35.00),       -- Crochet Shorts, XL
--(17, 9, 10, null, 1, 10.00),   -- Crochet Scrunchie

--(18, 10, 2, null, 1, 80.00)    -- Crochet Doll













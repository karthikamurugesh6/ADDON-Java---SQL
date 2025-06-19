CREATE TABLE Products (
    ProductID int PRIMARY KEY,
    ProductName varchar(50),
    Price int(10)
);

INSERT INTO Products (ProductID, ProductName, Price)
VALUES
(1, 'Laptop', 1200),
(2, 'Phone', 800),
(3, 'Tablet', 600),
(4, 'Keyboard', 500),
(5, 'Mouse', 50);

SELECT 
    MAX(Price) AS MaxPrice,
    MIN(Price) AS MinPrice
FROM Products;

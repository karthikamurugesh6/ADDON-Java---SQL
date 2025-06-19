CREATE TABLE Sales (
    SaleID int PRIMARY KEY,
    ProductName varchar(50),
    Quantity int,
    UnitPrice int(10),
    SaleDate DATE,
    Region varchar(50)
);

INSERT INTO Sales (SaleID, ProductName, Quantity, UnitPrice, SaleDate, Region)
VALUES
(1, 'Laptop', 2, 1200, '2025-06-01', 'North'),
(2, 'Mouse', 10, 25, '2025-06-01', 'South'),
(3, 'Laptop', 1, 1200, '2025-06-02', 'East'),
(4, 'Keyboard', 5, 45, '2025-06-02', 'North'),
(5, 'Mouse', 8, 25, '2025-06-03', 'West'),
(6, 'Laptop', 1, 1200, '2025-06-03', 'South');

SELECT ProductName, SUM(Quantity) AS TotalUnitsSold
FROM Sales
GROUP BY ProductName;

SELECT Region, SUM(Quantity * UnitPrice) AS TotalSales
FROM Sales
GROUP BY Region;

SELECT SaleDate, SUM(Quantity * UnitPrice) AS TotalRevenue
FROM Sales
GROUP BY SaleDate
ORDER BY SaleDate;

mysql> create database karthika;
Query OK, 1 row affected (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| karthika           |
| kgcas              |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.00 sec)

mysql> use karthika;
Database changed
mysql> select*
    -> from sales;
ERROR 1146 (42S02): Table 'karthika.sales' doesn't exist
mysql> CREATE TABLE Sales (
    ->     SaleID int PRIMARY KEY,
    ->     ProductName varchar(50),
    ->     Quantity int,
    ->     UnitPrice int(10),
    ->     SaleDate DATE,
    ->     Region varchar(50)
    -> );
Query OK, 0 rows affected, 1 warning (0.02 sec)

mysql> select *
    -> ;
ERROR 1096 (HY000): No tables used
mysql> INSERT INTO Sales (SaleID, ProductName, Quantity, UnitPrice, SaleDate, Region)
    -> VALUES
    -> (1, 'Laptop', 2, 1200, '2025-06-01', 'North'),
    -> (2, 'Mouse', 10, 25, '2025-06-01', 'South'),
    -> (3, 'Laptop', 1, 1200, '2025-06-02', 'East'),
    -> (4, 'Keyboard', 5, 45, '2025-06-02', 'North'),
    -> (5, 'Mouse', 8, 25, '2025-06-03', 'West'),
    -> (6, 'Laptop', 1, 1200, '2025-06-03', 'South');
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> SELECT ProductName, SUM(Quantity) AS TotalUnitsSold
    -> FROM Sales
    -> GROUP BY ProductName;
+-------------+----------------+
| ProductName | TotalUnitsSold |
+-------------+----------------+
| Laptop      |              4 |
| Mouse       |             18 |
| Keyboard    |              5 |
+-------------+----------------+
3 rows in set (0.00 sec)

mysql> SELECT Region, SUM(Quantity * UnitPrice) AS TotalSales
    -> FROM Sales
    -> GROUP BY Region;
+--------+------------+
| Region | TotalSales |
+--------+------------+
| North  |       2625 |
| South  |       1450 |
| East   |       1200 |
| West   |        200 |
+--------+------------+
4 rows in set (0.00 sec)

mysql> SELECT SaleDate, SUM(Quantity * UnitPrice) AS TotalRevenue
    -> FROM Sales
    -> GROUP BY SaleDate
    -> ORDER BY SaleDate;
+------------+--------------+
| SaleDate   | TotalRevenue |
+------------+--------------+
| 2025-06-01 |         2650 |
| 2025-06-02 |         1425 |
| 2025-06-03 |         1400 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select*
    -> from sales;
+--------+-------------+----------+-----------+------------+--------+
| SaleID | ProductName | Quantity | UnitPrice | SaleDate   | Region |
+--------+-------------+----------+-----------+------------+--------+
|      1 | Laptop      |        2 |      1200 | 2025-06-01 | North  |
|      2 | Mouse       |       10 |        25 | 2025-06-01 | South  |
|      3 | Laptop      |        1 |      1200 | 2025-06-02 | East   |
|      4 | Keyboard    |        5 |        45 | 2025-06-02 | North  |
|      5 | Mouse       |        8 |        25 | 2025-06-03 | West   |
|      6 | Laptop      |        1 |      1200 | 2025-06-03 | South  |
+--------+-------------+----------+-----------+------------+--------+
6 rows in set (0.00 sec)

mysql>
---------------------------------------------------------------------------------------------------------------------------
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
-------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Customers (
    CustomerID int PRIMARY KEY,
    Name varchar(50),
    Email varchar(100),
    City varchar(50),
    Country varchar(50),
    Age INT
);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, City, Country, Age)
VALUES 
(1,'karthika','karthika@gmail.com', 'New York', 'USA', 19),
(2,'monika','monika@gmail.com', 'Los Angeles', 'USA', 35),
(3,'jumana','jumana@gmail.com', 'Madrid', 'Spain', 42),
(4,'joshini','joshinia@gmail.com', 'Delhi', 'India', 25),
(5, 'sahana','sahanaa@gmail.com', 'Barcelona', 'Spain', 31);

SELECT * FROM Customers
WHERE Country = 'Spain';

SELECT * FROM Customers
WHERE Age > 30;

SELECT * FROM Customers
WHERE City = 'Delhi' AND Age < 30;

SELECT * FROM Customers
WHERE Name LIKE 'A%';

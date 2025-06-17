CREATE TABLE Employee (
    EmployeeID int PRIMARY KEY,
    Name varchar(50),
    DepartmentID int,
    Salary int(10),
);

CREATE TABLE Department (
    DepartmentID int PRIMARY KEY,
    DepartmentName varchar(100) NOT NULL
);

INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'Finance marketing'),
(3, ' software Engineering'),
(4, 'influencer Marketing');

INSERT INTO Employee (EmployeeID,Name,DepartmentID,Salary) VALUES
(101, 'weeekey', 3,75000),
(102, 'karthika',1,65000),
(103, 'monika',2,72000),
(104, 'dhanush',4,68000);

CREATE TABLE Employee (
    EmployeeID int PRIMARY KEY,
    Name varchar(50),
    DepartmentID int,
    Salary int(10),
);

INSERT INTO Employee (EmployeeID,Name,DepartmentID,Salary) VALUES
(101, 'karthikoo', 75000),
(102, 'monikoo',65000),
(103, 'divyeee',72000),
(104, 'sahaaanuuuu',68000);

SELECT * FROM Employee
WHERE DepartmentID = 2
ORDER BY Salary DESC;

CREATE TABLE Employees (
    EmployeeID int PRIMARY KEY,
    Name varchar(50),
    Department varchar(50),
    Salary int(10)
);

INSERT INTO Employees (EmployeeID, Name, Department, Salary)
VALUES
(1, 'aaa', 'BCA', 500),
(2, 'bbb', 'IT', 400),
(3, 'ccc', 'BSc CS', 550),
(4, 'ddd', 'BSc NT', 650),
(5, 'eee', 'BSc CS', 550);

SELECT Department, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department;

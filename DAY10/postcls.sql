CREATE TABLE Employees (
    EmployeeID int PRIMARY KEY,
    EmployeeName varchar(50),
    Department varchar(50),
    JobTitle varchar(50),
    Salary int,
    HireDate DATE
);
INSERT INTO Employees (EmployeeID, EmployeeName, Department, JobTitle, Salary, HireDate)
VALUES
(1, 'cavern', 'HR', 'HR Manager', 60000, '2020-01-15'),
(2, 'Bob Smith', 'IT', 'Developer', 75000, '2019-06-23'),
(3, 'Carol White', 'Finance', 'Accountant', 68000, '2021-03-10'),
(4, 'David Lee', 'IT', 'System Analyst', 72000, '2018-11-01'),
(5, 'Eva Brown', 'HR', 'Recruiter', 50000, '2022-07-12'),
(6, 'Frank Green', 'Finance', 'Financial Analyst', 70000, '2020-09-20');
SELECT Department, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department;
SELECT Department, SUM(Salary) AS TotalDepartmentSalary
FROM Employees
GROUP BY Department;

create table Departments (
    DeptID int primary key,
    DeptName varchar(50)
);


create table   Students (
    StudentID int    primary key,
    StudentName varchar(50),
    DeptID int,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);
insert into Departments (DeptID, DeptName) values
(1, 'bca'),
(2, 'bsc.ct'),
(3, 'bsc.it');
insert into Students (StudentID, StudentName, DeptID) values
(11, 'karthika', 9),
(12, 'weekey', 8),
(13, 'nandhini', 7),
(14, 'monika', 6);
SELECT 
    d.DeptName, 
    s.StudentID, 
    s.StudentName
from Students s
join Departments d on s.DeptID = d.DeptID
order by d.DeptName, s.StudentName;



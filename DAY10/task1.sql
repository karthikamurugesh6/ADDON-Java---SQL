CREATE TABLE Students (
    StudentID int PRIMARY KEY,
    StudentName varchar(50),
    Course varchar(50)
);
INSERT INTO Students (StudentID, StudentName, Course)
VALUES
(1,'kye','linux'),
(2,'kil','dfca'),
(3,'uji','ssos'),
(4,'oimi','fc'),
(5,'jut','nm'),
(6,'shej','pyth');

SELECT Course, COUNT(*) AS StudentCount
FROM Students
GROUP BY Course;


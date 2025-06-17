Create Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Marks INT
);


CREATE TABLE Course2 (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Fees DECIMAL(10, 2)
);


CREATE TABLE Book3 (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200),
    Author VARCHAR(100)
);

INSERT INTO Students (StudentID, StudentName, Marks) VALUES
(1, 'aaa', 99),
(2, 'kkk', 08),
(3, 'vvvv', 10),
(4, 'wwwww', 72);

-- Insert sample data into Courses
INSERT INTO Courses (CourseID, CourseName, Fees) VALUES
(01, 'Maths', 500.00),
(02, 'tamil 450.00),
(03, 'english', 600.00);

INSERT INTO Books (BookID, Title, Author) VALUES
(1, 'Introduction to Science', 'John Smith'),
(2, 'Advanced Mathematics', 'Jane Doe'),
(3, 'tamizhum mozhiyum', 'thiruvalluvar'),
(4, 'shepards', 'Emily Bronte');


SELECT * FROM Students
WHERE Marks > 80;


SELECT * FROM Courses
ORDER BY Fees ASC;


SELECT * FROM Books
WHERE Title LIKE '%Science%';


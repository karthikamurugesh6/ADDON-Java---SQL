CREATE TABLE Students (
    sid int PRIMARY KEY,
    sname VARCHAR(20)
);
CREATE TABLE Marks (
    id int PRIMARY KEY,
    student_id int,
    subject VARCHAR(50),
    score int CHECK (score BETWEEN 0 AND 100),
    FOREIGN KEY (student_id) REFERENCES Students(id)
);
INSERT INTO Students (id, name) VALUES
(1, 'karthika murugesh'),
(2, 'nandhini murugesh'),
(3, 'monika selvaraj')
;
INSERT INTO Marks (id, student_id, msubject, mscore) VALUES
(1, 1, 'tamil', 90),
(2, 1, 'english', 85),
(3, 2, 'tamil', 78),
(4, 2, 'english', 88),
(5, 3, 'tamil', 95),
(6, 3, 'english', 92);
SELECT 
    s.sid, 
    s.sname, 
    m.msubject, 
    m.mscore
FROM 
    Students s
JOIN 
    Marks m ON s.sid = m.student_id;
SELECT 
    s.id, 
    s.name, 
    total_score
FROM 
    Students s
JOIN (
    SELECT 
        student_id, 
        SUM(score) AS total_score
    FROM 
        Marks
    GROUP BY 
        student_id
    ORDER BY 
        total_score DESC
    LIMIT 1
) AS top ON s.sid = top.student_id;
----------------------------------------







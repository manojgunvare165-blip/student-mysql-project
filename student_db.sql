CREATE DATABASE student_db;
USE student_db;

CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50)
);

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50),
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE marks (
    mark_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT UNIQUE,
    marks INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO courses (course_name) VALUES
('BCA'),
('BBA'),
('BTech');

INSERT INTO students (student_name, course_id) VALUES
('Manoj', 3),
('Diya', 2),
('Harry', 1),
('Kushal', 3);

INSERT INTO marks (student_id, marks) VALUES
(1, 85),
(2, 78),
(3, 88),
(4, 92);

SELECT s.student_name, c.course_name
FROM students s
INNER JOIN courses c
ON s.course_id = c.course_id;

SELECT s.student_name, m.marks
FROM students s
JOIN marks m
ON s.student_id = m.student_id;
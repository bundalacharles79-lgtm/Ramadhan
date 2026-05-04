-- i. Create database
CREATE DATABASE majaliwa_university;

-- ii. Create students table
USE majaliwa_university;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    major VARCHAR(100),
    gpa DECIMAL(3,1),
    year_of_study INT
);

-- iii. Insert the first record
INSERT INTO students (first_name, last_name, age, gender, major, gpa, year_of_study)
VALUES ('Alice', 'Johnson', 20, 'Female', 'Computer Science', 3.8, 2);

-- iv. Insert next 14 records at once
INSERT INTO students (first_name, last_name, age, gender, major, gpa, year_of_study) VALUES
('Bob', 'Smith', 22, 'Male', 'Mathematics', 3.2, 3),
('Carol', 'White', 21, 'Female', 'Economics', 3.5, 2),
('David', 'Brown', 23, 'Male', 'Computer Science', 3.9, 4),
('Eva', 'Green', 19, 'Female', 'Biology', 3.1, 1),
('Frank', 'Lee', 24, 'Male', 'Physics', 2.9, 4),
('Grace', 'Kim', 20, 'Female', 'Computer Science', 3.6, 2),
('Henry', 'Park', 21, 'Male', 'Mathematics', 3.4, 3),
('Ivy', 'Taylor', 22, 'Female', 'Economics', 3.0, 3),
('Jack', 'Wilson', 23, 'Male', 'Biology', 2.8, 4),
('Kara', 'Scott', 20, 'Female', 'Physics', 3.3, 2),
('Leo', 'Nguyen', 19, 'Male', 'Computer Science', 3.7, 1),
('Mia', 'Adams', 22, 'Female', 'Biology', 3.2, 3),
('Nick', 'Carter', 21, 'Male', 'Mathematics', 3.6, 2),
('Olivia', 'Evans', 23, 'Female', 'Economics', 3.9, 4);

#!/bin/bash

echo "Access MySQL using the root user"
mysql -u root -p

echo "Create the student_records database"
CREATE DATABASE student_records;

echo "Use the student_records database"
USE student_records;

echo "Create the students table"
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    course VARCHAR(255) NOT NULL
);

echo "Insert sample data into the students table"
INSERT INTO students (name, age, gender, course) VALUES
('Terence Moabi', 21, 'Male', 'Computer Systems'),
('Nhlanhla Makofane', 22, 'Male', 'Computer Systems');

#!/bin/bash

# Task 3: Setting Up MySQL Database
sudo apt update
echo "Install MySQL (if not already installed)"
sudo apt-get install -y mysql-server

echo "Secure the MySQL installation"
sudo mysql_secure_installation --user root
#Enter password
sudo passwd
su -

#Task 4: Creating Student Table and Data
echo "Login to mySQL Server"
echo "Access MySQL using the root user"
mysql -u root -p 

echo "Create database"
CREATE DATABASE studentsManagement;

echo "Use the student_records database"
USE studentsManagement;

echo "Create the students table"
CREATE TABLE studentInfo (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    gender ENUM('Male','Female', 'Other'),
    course VARCHAR(255));

echo "Insert sample data into the students table"
INSERT INTO studentInfo (name, age, gender, course) VALUES
('Terence Moabi', 21, 'Male', 'Computer Systems'),
('Nhlanhla Makofane', 20, 'Male', 'Computer Systems'),
('Thendo Mabhara', 23, 'Male', 'Marketing'),
('Jacob Nkosi', 21, 'Male', 'Marketing'),
('Lerato Gumede', 25, 'Female', 'Photography'),
('Zwonaka Mukwevho', 24, 'Female', 'Industrial Engineering');

echo "View Data"
SELECT * FROM studentInfo;



-- Create database
CREATE DATABASE Employee_db;

-- Set default database to use it
USE Employee_db;

-- Create table 
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    department VARCHAR(50) DEFAULT 'General',
    salary INT
);

-- Insert complete row
INSERT INTO employees (id, name, email, department, salary)
VALUES (1, 'Namrata Shitole', 'namrata@example.com', 'IT', 50000);

-- Insert row with missing email → NULL
INSERT INTO employees (id, name, department, salary)
VALUES (2, 'Rahul Deshmukh', 'HR', 45000);

-- Insert row with missing department → DEFAULT 'General'
INSERT INTO employees (id, name, email, salary)
VALUES (3, 'Sneha Patil', 'sneha@example.com', 47000);

-- Insert row with missing salary → NULL
INSERT INTO employees (id, name, email, department)
VALUES (4, 'Amit Kale', 'amit@example.com', 'Finance');

-- Update one row
UPDATE employees
SET salary = 55000
WHERE id = 1;

-- Update multiple rows (example)
UPDATE employees
SET department = 'Admin'
WHERE department = 'HR' OR department IS NULL;

-- Delete one row
DELETE FROM employees
WHERE id = 4;

-- =====================================================
-- Section 11 : SQL Joins
-- =====================================================

-- Q1. Explain the concept of JOIN in SQL.
-- JOIN is used to combine rows from two or more
-- tables based on a related column.

-- Difference between JOIN types:
-- INNER JOIN: Returns matching records from both tables.
-- LEFT JOIN: Returns all records from left table and matching from right.
-- RIGHT JOIN: Returns all records from right table and matching from left.
-- FULL OUTER JOIN: Returns all records from both tables.

-- Q2. How are joins used to combine data from multiple tables?
-- Joins link tables using common columns such as
-- primary keys and foreign keys.

-- =========================
-- LAB EXERCISES
-- =========================

-- Create departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT,
    salary INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Lab 1: INNER JOIN
SELECT emp_name, dept_name
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id;

-- Lab 2: LEFT JOIN
SELECT emp_name, dept_name
FROM employees
LEFT JOIN departments
ON employees.dept_id = departments.dept_id;

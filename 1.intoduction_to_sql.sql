-- =====================================================
-- Section 1 : Introduction to SQL
-- =====================================================

-- Q1. What is SQL, and why is it essential in database management?
-- SQL (Structured Query Language) is a standard language used to
-- create, read, update, and delete data in relational databases.
-- It is essential because it allows users to manage large amounts
-- of structured data efficiently, ensures data accuracy, and
-- supports data security and integrity.

-- Q2. Explain the difference between DBMS and RDBMS.
-- DBMS stores data as files and does not support relationships
-- between data. RDBMS stores data in tables and supports relations
-- using primary keys and foreign keys.
-- RDBMS also follows normalization rules and supports SQL.

-- Q3. Describe the role of SQL in managing relational databases.
-- SQL is used to define database structure (DDL), manipulate data
-- (DML), retrieve data (DQL), control access (DCL), and manage
-- transactions (TCL) in relational databases.

-- Q4. What are the key features of SQL?
-- 1. Easy to learn and use
-- 2. Supports CRUD operations
-- 3. Works with large datasets
-- 4. Ensures data integrity and security
-- 5. Supported by most RDBMS systems

-- =========================
-- LAB EXERCISES
-- =========================

-- Lab 1: Create a new database named school_db
CREATE DATABASE school_db;

-- Use the database
USE school_db;

-- Create students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    age INT,
    class VARCHAR(20),
    address VARCHAR(200)
);

-- Lab 2: Insert five records into the students table
INSERT INTO students VALUES
(1, 'Amit Sharma', 12, '7A', 'Mumbai'),
(2, 'Neha Patel', 11, '6B', 'Ahmedabad'),
(3, 'Rahul Verma', 13, '8A', 'Delhi'),
(4, 'Priya Singh', 12, '7B', 'Lucknow'),
(5, 'Karan Mehta', 10, '5A', 'Pune');

-- Retrieve all records from students table
SELECT * FROM students;

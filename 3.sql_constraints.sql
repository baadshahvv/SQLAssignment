-- =====================================================
-- Section 3 : SQL Constraints
-- =====================================================

-- Q1. What are constraints in SQL? List and explain the different types of constraints.
-- Constraints are rules applied to table columns to ensure data accuracy and integrity.
-- Types of constraints:
-- 1. PRIMARY KEY: Uniquely identifies each record.
-- 2. FOREIGN KEY: Creates a relationship between tables.
-- 3. NOT NULL: Ensures a column cannot have NULL values.
-- 4. UNIQUE: Ensures all values in a column are different.
-- 5. CHECK: Ensures values meet a specific condition.
-- 6. DEFAULT: Assigns a default value to a column.

-- Q2. How do PRIMARY KEY and FOREIGN KEY constraints differ?
-- PRIMARY KEY uniquely identifies each row in a table and cannot be NULL.
-- FOREIGN KEY links one table to another and can contain duplicate values.

-- Q3. What is the role of NOT NULL and UNIQUE constraints?
-- NOT NULL ensures a column always contains a value.
-- UNIQUE ensures that all values in a column are different.

-- =========================
-- LAB EXERCISES
-- =========================

-- Lab 1: Create teachers table with constraints
CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(100) NOT NULL,
    subject VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- Lab 2: Add FOREIGN KEY constraint in students table
ALTER TABLE students
ADD teacher_id INT,
ADD CONSTRAINT fk_teacher
FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id);

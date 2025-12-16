-- =====================================================
-- Section 7 : Data Manipulation Language (DML)
-- =====================================================

-- Q1. Define the INSERT, UPDATE, and DELETE commands in SQL.
-- INSERT is used to add new records into a table.
-- UPDATE is used to modify existing records.
-- DELETE is used to remove records from a table.

-- Q2. What is the importance of the WHERE clause in UPDATE and DELETE operations?
-- The WHERE clause specifies conditions to
-- limit affected rows and prevents
-- unintended data modification or deletion.

-- =========================
-- LAB EXERCISES
-- =========================

-- Lab 1: Insert records into courses table
INSERT INTO courses VALUES
(101, 'Database Systems', 60),
(102, 'Operating Systems', 45),
(103, 'Computer Networks', 50);

-- Lab 2: Update course duration of a specific course
UPDATE courses
SET course_duration = 75
WHERE course_id = 101;

-- Lab 3: Delete a course with a specific course_id
DELETE FROM courses
WHERE course_id = 103;

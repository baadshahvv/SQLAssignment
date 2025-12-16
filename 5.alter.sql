-- =====================================================
-- Section 5 : ALTER Command
-- =====================================================

-- Q1. What is the use of the ALTER command in SQL?
-- The ALTER command is used to modify the structure
-- of an existing table by adding, changing, or
-- deleting columns or constraints.

-- Q2. How can you add, modify, and drop columns from a table using ALTER?
-- ADD is used to insert a new column.
-- MODIFY is used to change an existing column.
-- DROP is used to remove a column from a table.

-- =========================
-- LAB EXERCISES
-- =========================

-- Lab 1: Add course_duration column to courses table
ALTER TABLE courses
ADD course_duration INT;

-- Lab 2: Drop course_credits column from courses table
ALTER TABLE courses
DROP COLUMN course_credits;

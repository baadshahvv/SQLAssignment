-- =====================================================
-- Section 8 : Data Query Language (DQL)
-- =====================================================

-- Q1. What is the SELECT statement, and how is it used to query data?
-- The SELECT statement is used to retrieve data
-- from one or more tables in a database.

-- Q2. Explain the use of the ORDER BY and WHERE clauses in SQL queries.
-- WHERE is used to filter records based on conditions.
-- ORDER BY is used to sort the result set in
-- ascending or descending order.

-- =========================
-- LAB EXERCISES
-- =========================

-- Lab 1: Retrieve all courses
SELECT * FROM courses;

-- Lab 2: Sort courses by course_duration in descending order
SELECT * FROM courses
ORDER BY course_duration DESC;

-- Lab 3: Show only top two courses
SELECT * FROM courses
LIMIT 2;

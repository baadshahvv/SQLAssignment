-- =====================================================
-- Section 2 : SQL Syntax
-- =====================================================

-- Q1. What are the basic components of SQL syntax?
-- SQL syntax consists of commands, clauses, expressions,
-- predicates, and statements.
-- Commands define the operation (SELECT, INSERT, UPDATE).
-- Clauses modify commands (WHERE, ORDER BY, GROUP BY).

-- Q2. Write the general structure of an SQL SELECT statement.
-- The basic structure of a SELECT statement is:
-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition;

-- Q3. Explain the role of clauses in SQL statements.
-- Clauses are used to filter, sort, group, and limit data.
-- Examples include WHERE for filtering rows,
-- ORDER BY for sorting results, and GROUP BY for aggregation.

-- =========================
-- LAB EXERCISES
-- =========================

-- Lab 1: Retrieve specific columns (student_name and age)
-- from the students table
SELECT student_name, age
FROM students;

-- Lab 2: Retrieve all students whose age is greater than 10
SELECT *
FROM students
WHERE age > 10;

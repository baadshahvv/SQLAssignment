-- =====================================================
-- Section 12 : SQL GROUP BY
-- =====================================================

-- Q1. What is the GROUP BY clause in SQL?
-- GROUP BY is used to group rows that have
-- the same values into summary rows.
-- It is commonly used with aggregate functions.

-- Q2. Explain the difference between GROUP BY and ORDER BY.
-- GROUP BY groups rows for aggregation.
-- ORDER BY sorts the result set.

-- =========================
-- LAB EXERCISES
-- =========================

-- Lab 1: Count employees in each department
SELECT dept_id, COUNT(*) AS total_employees
FROM employees
GROUP BY dept_id;

-- Lab 2: Find average salary of employees in each department
SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id;

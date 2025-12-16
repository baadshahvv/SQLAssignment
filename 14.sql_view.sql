-- =====================================================
-- Section 14 : SQL View
-- =====================================================

-- Q1. What is a view in SQL, and how is it different from a table?
-- A view is a virtual table created using a SELECT query.
-- It does not store data physically, unlike a table.

-- Q2. Explain the advantages of using views in SQL databases.
-- 1. Simplifies complex queries
-- 2. Enhances security by restricting data access
-- 3. Provides data abstraction
-- 4. Improves query readability

-- =========================
-- LAB EXERCISES
-- =========================

-- Lab 1: Create a view showing employees with department names
CREATE VIEW emp_dept_view AS
SELECT emp_name, dept_name
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id;

-- Lab 2: Modify view to exclude employees with salary below 50000
CREATE OR REPLACE VIEW emp_dept_view AS
SELECT emp_name, dept_name
FROM employees
INNER JOIN departments
ON employees.dept_id = departments.dept_id
WHERE salary >= 50000;

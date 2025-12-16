-- =====================================================
-- Section 13 : SQL Stored Procedure
-- =====================================================

-- Q1. What is a stored procedure in SQL, and how does it differ from a standard SQL query?
-- A stored procedure is a precompiled set of SQL statements
-- stored in the database and executed as a single unit.
-- Unlike normal SQL queries, stored procedures can accept
-- parameters, contain logic, and be reused.

-- Q2. Explain the advantages of using stored procedures.
-- 1. Improves performance
-- 2. Reduces network traffic
-- 3. Enhances security
-- 4. Promotes code reusability
-- 5. Simplifies maintenance

-- =========================
-- LAB EXERCISES
-- =========================

-- Lab 1: Stored procedure to retrieve employees by department
DELIMITER //

CREATE PROCEDURE getEmployeesByDept(IN deptId INT)
BEGIN
    SELECT * FROM employees
    WHERE dept_id = deptId;
END //

DELIMITER ;

-- Lab 2: Stored procedure to get course details by course_id
DELIMITER //

CREATE PROCEDURE getCourseDetails(IN c_id INT)
BEGIN
    SELECT * FROM courses
    WHERE course_id = c_id;
END //

DELIMITER ;

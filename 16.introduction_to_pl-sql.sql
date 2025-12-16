-- =====================================================
-- Section 16 : Introduction to PL/SQL
-- =====================================================

-- Q1. What is PL/SQL, and how does it extend SQL's capabilities?
-- PL/SQL (Procedural Language/SQL) is an extension of SQL
-- that allows procedural programming using variables,
-- loops, conditions, and exception handling.

-- Q2. List and explain the benefits of using PL/SQL.
-- 1. Supports procedural logic
-- 2. Improves performance
-- 3. Reduces network traffic
-- 4. Provides better error handling
-- 5. Enhances code reusability

-- =========================
-- LAB EXERCISES
-- =========================

-- Lab 1: PL/SQL block to print total number of employees
BEGIN
    DBMS_OUTPUT.PUT_LINE('Total Employees: ' ||
    (SELECT COUNT(*) FROM employees));
END;
/

-- Lab 2: PL/SQL block to calculate total sales
BEGIN
    DBMS_OUTPUT.PUT_LINE('Total Sales: ' ||
    (SELECT SUM(amount) FROM orders));
END;
/

-- =====================================================
-- Section 18 : SQL Cursors
-- =====================================================

-- Q1. What is a cursor in PL/SQL?
-- A cursor is a pointer used to fetch and
-- process rows returned by a SQL query
-- one row at a time.

-- Difference between cursors:
-- Implicit Cursor: Automatically created by PL/SQL.
-- Explicit Cursor: Defined and controlled by the programmer.

-- Q2. When would you use an explicit cursor over an implicit one?
-- Explicit cursors are used when row-by-row
-- processing is required with more control.

-- =========================
-- LAB EXERCISES
-- =========================

-- Lab 1: Explicit cursor to display employee details
DECLARE
    CURSOR emp_cursor IS
        SELECT emp_name, salary FROM employees;
    v_name employees.emp_name%TYPE;
    v_salary employees.salary%TYPE;
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO v_name, v_salary;
        EXIT WHEN emp_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_name || ' - ' || v_salary);
    END LOOP;
    CLOSE emp_cursor;
END;
/

-- Lab 2: Cursor to retrieve courses
DECLARE
    CURSOR course_cursor IS
        SELECT course_name FROM courses;
BEGIN
    FOR c IN course_cursor LOOP
        DBMS_OUTPUT.PUT_LINE(c.course_name);
    END LOOP;
END;
/

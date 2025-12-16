-- =====================================================
-- Section 17 : PL/SQL Control Structures
-- =====================================================

-- Q1. What are control structures in PL/SQL?
-- Control structures are used to control the
-- flow of execution in a PL/SQL program.
-- Examples include IF-THEN and LOOP structures.

-- Q2. How do control structures in PL/SQL help in writing complex queries?
-- They allow conditional execution and
-- repetition of statements, making
-- complex logic easier to implement.

-- =========================
-- LAB EXERCISES
-- =========================

-- Lab 1: IF-THEN condition to check employee department
BEGIN
    IF 10 = 10 THEN
        DBMS_OUTPUT.PUT_LINE('Employee belongs to IT Department');
    END IF;
END;
/

-- Lab 2: FOR LOOP to display employee names
BEGIN
    FOR emp IN (SELECT emp_name FROM employees) LOOP
        DBMS_OUTPUT.PUT_LINE(emp.emp_name);
    END LOOP;
END;
/

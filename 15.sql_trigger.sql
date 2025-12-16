-- =====================================================
-- Section 15 : SQL Triggers
-- =====================================================

-- Q1. What is a trigger in SQL?
-- A trigger is a database object that automatically
-- executes in response to INSERT, UPDATE, or DELETE events.

-- Q2. Explain the difference between INSERT, UPDATE, and DELETE triggers.
-- INSERT trigger runs after or before a new record is added.
-- UPDATE trigger runs after or before a record is modified.
-- DELETE trigger runs after or before a record is removed.

-- =========================
-- LAB EXERCISES
-- =========================

-- Create log table
CREATE TABLE employee_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT,
    action VARCHAR(20),
    log_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Lab 1: Trigger to log INSERT operations
DELIMITER //

CREATE TRIGGER after_employee_insert
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_log (emp_id, action)
    VALUES (NEW.emp_id, 'INSERT');
END //

DELIMITER ;

-- Lab 2: Trigger to update last_modified timestamp
ALTER TABLE employees
ADD last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP
ON UPDATE CURRENT_TIMESTAMP;

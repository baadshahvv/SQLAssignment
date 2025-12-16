-- =====================================================
-- Section 10 : Transaction Control Language (TCL)
-- =====================================================

-- Q1. What is the purpose of the COMMIT and ROLLBACK commands in SQL?
-- COMMIT saves all changes made during a transaction.
-- ROLLBACK undoes changes made during a transaction.

-- Q2. Explain how transactions are managed in SQL databases.
-- Transactions ensure data consistency by
-- executing multiple operations as a single unit.
-- They follow ACID properties.

-- =========================
-- LAB EXERCISES
-- =========================

-- Lab 1: Insert records and commit
INSERT INTO courses VALUES (104, 'Data Science', 80);
COMMIT;

-- Lab 2: Insert records and rollback
INSERT INTO courses VALUES (105, 'AI Basics', 70);
ROLLBACK;

-- Lab 3: Use SAVEPOINT
SAVEPOINT before_update;

UPDATE courses
SET course_duration = 90
WHERE course_id = 104;

ROLLBACK TO before_update;

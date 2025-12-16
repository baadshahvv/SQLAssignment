-- =====================================================
-- Section 19 : Rollback and Commit Savepoint
-- =====================================================

-- Q1. Explain the concept of SAVEPOINT in transaction management.
-- SAVEPOINT allows setting a point within a transaction
-- to which changes can be rolled back without
-- affecting the entire transaction.

-- Q2. When is it useful to use savepoints in a database transaction?
-- Savepoints are useful when partial rollback
-- is required during complex transactions.

-- =========================
-- LAB EXERCISES
-- =========================

-- Lab 1: Transaction using SAVEPOINT and ROLLBACK
INSERT INTO courses VALUES (106, 'Cyber Security', 65);
SAVEPOINT sp1;

INSERT INTO courses VALUES (107, 'Cloud Computing', 70);
ROLLBACK TO sp1;

-- Lab 2: Commit after savepoint
INSERT INTO courses VALUES (108, 'Big Data', 80);
COMMIT;

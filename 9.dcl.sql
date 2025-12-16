-- =====================================================
-- Section 9 : Data Control Language (DCL)
-- =====================================================

-- Q1. What is the purpose of GRANT and REVOKE in SQL?
-- GRANT is used to give permissions to users.
-- REVOKE is used to remove previously given permissions.

-- Q2. How do you manage privileges using these commands?
-- Privileges are managed by assigning specific
-- permissions like SELECT, INSERT, UPDATE,
-- or DELETE to database users.

-- =========================
-- LAB EXERCISES
-- =========================

-- Lab 1: Create users and grant SELECT permission
CREATE USER user1 IDENTIFIED BY 'password1';
CREATE USER user2 IDENTIFIED BY 'password2';

GRANT SELECT ON courses TO user1;

-- Lab 2: Revoke INSERT from user1 and grant to user2
REVOKE INSERT ON courses FROM user1;
GRANT INSERT ON courses TO user2;

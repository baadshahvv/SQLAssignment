-- =====================================================
-- Section 4 : Main SQL Commands and Sub-commands (DDL)
-- =====================================================

-- Q1. Define the SQL Data Definition Language (DDL).
-- DDL is a set of SQL commands used to define, create,
-- modify, and delete database structures such as
-- databases, tables, and schemas.

-- Q2. Explain the CREATE command and its syntax.
-- The CREATE command is used to create databases,
-- tables, views, and other database objects.
-- Syntax:
-- CREATE TABLE table_name (column datatype constraints);

-- Q3. What is the purpose of specifying data types and constraints during table creation?
-- Data types define the kind of data a column can store.
-- Constraints ensure data integrity, accuracy, and consistency.

-- =========================
-- LAB EXERCISES
-- =========================

-- Lab 1: Create courses table with primary key
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    course_credits INT
);

-- Lab 2: Create a database university_db
CREATE DATABASE university_db;

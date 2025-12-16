-- =====================================================
-- Extra Lab Practice : Introduction to SQL
-- =====================================================

-- Lab 3: Create database library_db and books table
CREATE DATABASE library_db;

USE library_db;

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(150),
    author VARCHAR(100),
    publisher VARCHAR(100),
    year_of_publication INT,
    price DECIMAL(8,2)
);

-- Insert five records into books table
INSERT INTO books VALUES
(1, 'Database System Concepts', 'Silberschatz', 'McGraw Hill', 2018, 550.00),
(2, 'Operating System', 'Galvin', 'Wiley', 2017, 620.00),
(3, 'Computer Networks', 'Tanenbaum', 'Pearson', 2016, 480.00),
(4, 'Clean Code', 'Robert Martin', 'Prentice Hall', 2019, 700.00),
(5, 'Data Structures', 'Seymour Lipschutz', 'McGraw Hill', 2015, 390.00);

-- Lab 4: Create members table
CREATE TABLE members (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(100),
    date_of_membership DATE,
    email VARCHAR(100)
);

-- Insert five records into members table
INSERT INTO members VALUES
(1, 'Amit Shah', '2021-05-10', 'amit@gmail.com'),
(2, 'Neha Patel', '2020-03-15', 'neha@gmail.com'),
(3, 'Rahul Verma', '2019-08-20', 'rahul@gmail.com'),
(4, 'Priya Singh', '2022-01-12', 'priya@gmail.com'),
(5, 'Karan Mehta', '2018-11-05', 'karan@gmail.com');

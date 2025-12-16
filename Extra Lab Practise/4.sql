-- =====================================================
-- Extra Lab Practice : Main SQL Commands and Sub-commands (DDL)
-- =====================================================

-- Lab 3: Create authors table with primary key
CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    country VARCHAR(50)
);

-- Lab 4: Create publishers table with primary key and unique contact number
CREATE TABLE publishers (
    publisher_id INT PRIMARY KEY,
    publisher_name VARCHAR(100),
    contact_number VARCHAR(15) UNIQUE,
    address VARCHAR(200)
);

-- =====================================================
-- Extra Lab Practice : Data Manipulation Language (DML)
-- =====================================================

-- Lab 4: Insert new authors into authors table
INSERT INTO authors VALUES
(1, 'Robert', 'Martin', 'USA'),
(2, 'Andrew', 'Tanenbaum', 'Netherlands'),
(3, 'Abraham', 'Silberschatz', 'USA');

-- Update last name of one author
UPDATE authors
SET last_name = 'Martin Jr.'
WHERE author_id = 1;

-- Lab 5: Delete books where price is higher than 100
DELETE FROM books
WHERE price > 100;

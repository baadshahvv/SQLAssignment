-- =====================================================
-- Extra Lab Practice : SQL Syntax
-- =====================================================

-- Lab 3: Retrieve all members who joined the library before 2022
SELECT *
FROM members
WHERE date_of_membership < '2022-01-01'
ORDER BY date_of_membership;

-- Lab 4: Display titles of books published by a specific author
-- (Example: books by 'Tanenbaum')
SELECT title
FROM books
WHERE author = 'Tanenbaum'
ORDER BY year_of_publication DESC;

-- =====================================================
-- Extra Lab Practice : SQL Joins
-- =====================================================

-- Lab 3: INNER JOIN between books and authors
SELECT b.title, a.first_name, a.last_name
FROM books b
INNER JOIN authors a
ON b.author = a.last_name;

-- Lab 4: FULL OUTER JOIN between books and authors
SELECT b.title, a.first_name, a.last_name
FROM books b
LEFT JOIN authors a
ON b.author = a.last_name

UNION

SELECT b.title, a.first_name, a.last_name
FROM books b
RIGHT JOIN authors a
ON b.author = a.last_name;

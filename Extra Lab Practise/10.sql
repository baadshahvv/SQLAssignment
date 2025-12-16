-- =====================================================
-- Extra Lab Practice : Data Query Language (DQL)
-- =====================================================

-- Lab 4: Retrieve all books with price between 50 and 100
SELECT *
FROM books
WHERE price BETWEEN 50 AND 100;

-- Lab 5: Retrieve books sorted by author in ascending order
-- and limit results to top 3 entries
SELECT *
FROM books
ORDER BY author ASC
LIMIT 3;

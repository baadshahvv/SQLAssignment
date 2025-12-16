-- =====================================================
-- Extra Lab Practice : SQL GROUP BY
-- =====================================================

-- Lab 3: Group books by genre and count total books
SELECT genre, COUNT(*) AS total_books
FROM books
GROUP BY genre;

-- Lab 4: Group members by year they joined and count members
SELECT YEAR(date_of_membership) AS join_year, COUNT(*) AS total_members
FROM members_backup
GROUP BY YEAR(date_of_membership);

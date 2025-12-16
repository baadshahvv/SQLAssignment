-- =====================================================
-- Extra Lab Practice : DELETE Command
-- =====================================================

-- Lab 3: Remove members who joined before 2020
DELETE FROM members_backup
WHERE date_of_membership < '2020-01-01';

-- Lab 4: Delete books with NULL author
DELETE FROM books
WHERE author IS NULL;

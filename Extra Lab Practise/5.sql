-- =====================================================
-- Extra Lab Practice : ALTER Command
-- =====================================================

-- Lab 3: Add genre column to books table
ALTER TABLE books
ADD genre VARCHAR(50);

-- Update genre for existing records
UPDATE books SET genre = 'Technology' WHERE book_id = 1;
UPDATE books SET genre = 'Technology' WHERE book_id = 2;
UPDATE books SET genre = 'Networking' WHERE book_id = 3;
UPDATE books SET genre = 'Programming' WHERE book_id = 4;
UPDATE books SET genre = 'Computer Science' WHERE book_id = 5;

-- Lab 4: Modify email column length in members table
ALTER TABLE members
MODIFY email VARCHAR(100);

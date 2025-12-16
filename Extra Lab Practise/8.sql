-- =====================================================
-- Extra Lab Practice : UPDATE Command
-- =====================================================

-- Lab 3: Update year_of_publication for a specific book
UPDATE books
SET year_of_publication = 2020
WHERE book_id = 3;

-- Lab 4: Increase price of books published before 2015 by 10%
UPDATE books
SET price = price * 1.10
WHERE year_of_publication < 2015;

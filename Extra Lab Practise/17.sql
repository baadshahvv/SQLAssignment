-- =====================================================
-- Extra Lab Practice : SQL View
-- =====================================================

-- Lab 3: Create a view showing title, author, and price of books
CREATE VIEW book_basic_view AS
SELECT title, author, price
FROM books;

-- Lab 4: Create a view to display members who joined before 2020
CREATE VIEW old_members_view AS
SELECT *
FROM members_backup
WHERE date_of_membership < '2020-01-01';

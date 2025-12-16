-- =====================================================
-- Extra Lab Practice : SQL Stored Procedure
-- =====================================================

-- Lab 3: Stored procedure to retrieve all books by a particular author
DELIMITER //

CREATE PROCEDURE getBooksByAuthor(IN author_name VARCHAR(100))
BEGIN
    SELECT *
    FROM books
    WHERE author = author_name;
END //

DELIMITER ;

-- Lab 4: Stored procedure to return price of a book using book_id
DELIMITER //

CREATE PROCEDURE getBookPrice(IN b_id INT)
BEGIN
    SELECT price
    FROM books
    WHERE book_id = b_id;
END //

DELIMITER ;

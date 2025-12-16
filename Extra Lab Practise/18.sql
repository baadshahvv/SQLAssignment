-- =====================================================
-- Extra Lab Practice : SQL Trigger
-- =====================================================

-- Create log table for book changes
CREATE TABLE book_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    action VARCHAR(20),
    log_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Lab 3: Trigger to update last_modified timestamp on books table
ALTER TABLE books
ADD last_modified TIMESTAMP DEFAULT CURRENT_TIMESTAMP
ON UPDATE CURRENT_TIMESTAMP;

-- Lab 4: Trigger to log DELETE operations on books table
DELIMITER //

CREATE TRIGGER after_book_delete
AFTER DELETE ON books
FOR EACH ROW
BEGIN
    INSERT INTO book_log (book_id, action)
    VALUES (OLD.book_id, 'DELETE');
END //

DELIMITER ;

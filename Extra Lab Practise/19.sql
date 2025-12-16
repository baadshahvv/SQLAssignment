-- =====================================================
-- Extra Lab Practice : Introduction to PL/SQL
-- =====================================================

-- Lab 3: PL/SQL block to insert a new book and display confirmation
BEGIN
    INSERT INTO books
    VALUES (8, 'Deep Learning', 'Ian Goodfellow', 'MIT Press', 2020, 950.00, 'AI');

    DBMS_OUTPUT.PUT_LINE('New book inserted successfully');
END;
//

-- Lab 4: PL/SQL block to display total number of books
BEGIN
    DBMS_OUTPUT.PUT_LINE('Total Books: ' ||
    (SELECT COUNT(*) FROM books));
END;
//

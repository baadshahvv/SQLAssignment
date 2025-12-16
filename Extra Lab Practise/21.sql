-- =====================================================
-- Extra Lab Practice : PL/SQL Control Structures
-- =====================================================

-- Lab 3: IF-THEN-ELSE to check if book price is above 100
DECLARE
    v_price DECIMAL(8,2);
BEGIN
    SELECT price INTO v_price
    FROM books
    WHERE book_id = 1;

    IF v_price > 100 THEN
        DBMS_OUTPUT.PUT_LINE('Book price is above 100');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Book price is 100 or below');
    END IF;
END;
/

-- Lab 4: FOR LOOP to display details of all books
BEGIN
    FOR b IN (SELECT title, price FROM books) LOOP
        DBMS_OUTPUT.PUT_LINE(b.title || ' - ' || b.price);
    END LOOP;
END;
/

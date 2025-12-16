-- =====================================================
-- Extra Lab Practice : PL/SQL Syntax
-- =====================================================

-- Lab 3: PL/SQL block to declare variables and display values
DECLARE
    v_book_id INT := 1;
    v_price DECIMAL(8,2) := 550.00;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Book ID: ' || v_book_id);
    DBMS_OUTPUT.PUT_LINE('Price: ' || v_price);
END;
/

-- Lab 4: PL/SQL block using constants and arithmetic operations
DECLARE
    c_tax CONSTANT DECIMAL(4,2) := 0.10;
    v_price DECIMAL(8,2) := 500.00;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Price after tax: ' || (v_price + (v_price * c_tax)));
END;
/

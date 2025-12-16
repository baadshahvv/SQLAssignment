-- =====================================================
-- Extra Lab Practice : SQL Cursors
-- =====================================================

-- Lab 3: Explicit cursor to fetch and display members details
DECLARE
    CURSOR member_cursor IS
        SELECT member_id, member_name FROM members_backup;
    v_id members_backup.member_id%TYPE;
    v_name members_backup.member_name%TYPE;
BEGIN
    OPEN member_cursor;
    LOOP
        FETCH member_cursor INTO v_id, v_name;
        EXIT WHEN member_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_id || ' - ' || v_name);
    END LOOP;
    CLOSE member_cursor;
END;
/

-- Lab 4: Cursor to retrieve books by a particular author
DECLARE
    CURSOR book_cursor IS
        SELECT title FROM books WHERE author = 'Tanenbaum';
BEGIN
    FOR b IN book_cursor LOOP
        DBMS_OUTPUT.PUT_LINE(b.title);
    END LOOP;
END;
/

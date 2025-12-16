-- =====================================================
-- Extra Lab Practice : Data Control Language (DCL)
-- =====================================================

-- Lab 3: Grant SELECT permission to user librarian on books table
CREATE USER librarian IDENTIFIED BY 'lib123';

GRANT SELECT ON books TO librarian;

-- Lab 4: Grant INSERT and UPDATE permissions to user admin on members_backup table
CREATE USER admin IDENTIFIED BY 'admin123';

GRANT INSERT, UPDATE ON members_backup TO admin;

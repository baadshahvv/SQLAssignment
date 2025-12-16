-- =====================================================
-- Extra Lab Practice : REVOKE Command
-- =====================================================

-- Lab 3: Revoke INSERT privilege from librarian on books table
REVOKE INSERT ON books FROM librarian;

-- Lab 4: Revoke all permissions from admin on members_backup table
REVOKE ALL PRIVILEGES ON members_backup FROM admin;

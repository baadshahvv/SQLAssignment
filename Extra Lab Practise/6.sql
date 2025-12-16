-- =====================================================
-- Extra Lab Practice : DROP Command
-- =====================================================

-- Lab 3: Drop publishers table after verification
DROP TABLE publishers;

-- Lab 4: Create backup of members table and drop original table
CREATE TABLE members_backup AS
SELECT * FROM members;

DROP TABLE members;

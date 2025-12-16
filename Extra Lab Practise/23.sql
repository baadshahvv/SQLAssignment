-- =====================================================
-- Extra Lab Practice : Rollback and Commit Savepoint
-- =====================================================

-- Lab 3: Transaction with SAVEPOINT and ROLLBACK
INSERT INTO members_backup
VALUES (6, 'Rohit Kumar', '2023-02-10', 'rohit@gmail.com');

SAVEPOINT sp_members;

UPDATE members_backup
SET member_name = 'Rohit Updated'
WHERE member_id = 6;

ROLLBACK TO sp_members;

-- Lab 4: Commit transaction after successful insert
INSERT INTO members_backup
VALUES (7, 'Anjali Desai', '2024-01-05', 'anjali@gmail.com');

COMMIT;

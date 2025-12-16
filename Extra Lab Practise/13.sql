-- =====================================================
-- Extra Lab Practice : Transaction Control Language (TCL)
-- =====================================================

-- Lab 3: Use COMMIT and ROLLBACK
INSERT INTO books VALUES
(6, 'Artificial Intelligence', 'Russell', 'Pearson', 2021, 850.00, 'AI');

COMMIT;

INSERT INTO books VALUES
(7, 'Machine Learning', 'Mitchell', 'McGraw Hill', 2022, 900.00, 'AI');

ROLLBACK;

-- Lab 4: Use SAVEPOINT during members update
SAVEPOINT before_update;

UPDATE members_backup
SET member_name = 'Updated Name'
WHERE member_id = 1;

ROLLBACK TO before_update;

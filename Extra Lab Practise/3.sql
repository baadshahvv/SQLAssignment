-- =====================================================
-- Extra Lab Practice : SQL Constraints
-- =====================================================

-- Lab 3: Add CHECK constraint to ensure book price is greater than 0
ALTER TABLE books
ADD CONSTRAINT chk_price
CHECK (price > 0);

-- Lab 4: Add UNIQUE constraint on email column in members table
ALTER TABLE members
ADD CONSTRAINT unique_email
UNIQUE (email);

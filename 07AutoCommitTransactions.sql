-- 📂 Switch to the 'startersql' database
USE startersql;

-- 🔒 Disable auto-commit so that changes happen only after COMMIT
SET autocommit = 0;

-- 🔍 View all records from the 'users' table
SELECT * FROM users;

-- 🗑️ This line (commented) would delete user with id = 6, but is currently skipped
-- DELETE FROM users WHERE id = 6;

-- ❌ Undo any uncommitted changes (e.g., above DELETE will be rolled back if executed)
ROLLBACK;

-- ✅ Commit pending changes to permanently save them
-- COMMIT;

-- 🗑️ Delete user with id = 5
DELETE FROM users WHERE id = 5;

-- ✅ Save the above delete permanently
COMMIT;


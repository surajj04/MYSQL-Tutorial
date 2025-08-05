-- ✅ Use the correct database
USE startersql;

-- 🔸 Logical Operators: AND, OR, NOT
-- AND: Both conditions must be true
SELECT * FROM users
WHERE gender = 'Female' AND salary > 70000;

-- OR: At least one condition must be true
SELECT * FROM users
WHERE gender = 'Male' OR salary < 50000;

-- NOT: Negates the condition
SELECT * FROM users
WHERE NOT gender = 'Female';

-- Combination of AND, OR, NOT
SELECT * FROM users
WHERE NOT gender = 'Female' AND (salary > 60000 OR email LIKE '%example%');

-- ------------------------------------------------------------------------------------------

-- 🔸 ALTER TABLE: Add Columns to the Table

-- Add a new column for phone number
ALTER TABLE users
ADD COLUMN phone VARCHAR(15);

-- Add multiple columns at once: country and status
ALTER TABLE users
ADD COLUMN country VARCHAR(50),
ADD COLUMN status ENUM('Active', 'Inactive') DEFAULT 'Active';

-- Add a column with default value (created_at timestamp)
ALTER TABLE users
ADD COLUMN created_at DATETIME DEFAULT CURRENT_TIMESTAMP;

-- Add a column after a specific column (after email)
ALTER TABLE users
ADD COLUMN referred_by_id INT AFTER email;

-- ----------------------------------------------------------------------------------------------

-- 🔸 LIKE Operator and Wildcards

-- 1. Names that start with 'S'
SELECT * FROM users
WHERE name LIKE 'S%';

-- 2. Names that end with 'a'
SELECT * FROM users
WHERE name LIKE '%a';

-- 3. Names that contain 'mit'
SELECT * FROM users
WHERE name LIKE '%mit%';

-- 4. Names with exactly 5 characters (5 underscores = 5 characters)
SELECT * FROM users
WHERE name LIKE '_____';

-- 5. Names where second letter is 'a'
SELECT * FROM users
WHERE name LIKE '_a%';

-- 6. Emails that end with 'gmail.com'
SELECT * FROM users
WHERE email LIKE '%gmail.com';

-- --------------------------------------------------------------------------------------------

-- 🔸 LIMIT and OFFSET

-- Get first 5 users
SELECT * FROM users
LIMIT 5;

-- Skip first 5 users, get next 5
SELECT * FROM users
LIMIT 5 OFFSET 5;

-- Same as above using alternate syntax (LIMIT offset, count)
SELECT * FROM users
LIMIT 5, 5;

-- -----------------------------------------------------------------------------------------------------

-- 🔸 DISTINCT Keyword

-- Get unique gender values
SELECT DISTINCT gender FROM users;

-- Get unique salary values
SELECT DISTINCT salary FROM users;

-- Get unique combinations of gender and salary
SELECT DISTINCT gender, salary FROM users;

-- --------------------------------------------------------------------------------------------

-- 🔸 TRUNCATE TABLE

-- View current data
SELECT * FROM users;

-- Remove all records quickly (cannot be rolled back in most cases)
TRUNCATE TABLE users;

-- Verify table is empty
SELECT * FROM users;

--  ---------------------------------------------------------------------------------------------

-- ✅ Use the correct database
USE startersql;

-- 🔸 1. Change the data type of the 'salary' column to BIGINT
-- This will increase the range of values that 'salary' can store
ALTER TABLE users
MODIFY COLUMN salary BIGINT;

-- 🔸 2. Rename the 'salary' column to 'monthly_salary' AND change its data type to BIGINT
-- CHANGE COLUMN syntax: CHANGE COLUMN old_name new_name new_datatype
ALTER TABLE users
CHANGE COLUMN salary monthly_salary BIGINT;

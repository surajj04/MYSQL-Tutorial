-- 📂 Use the 'startersql' database
USE startersql;

-- 🔍 Show all indexes defined on the 'users' table (including PRIMARY KEY, UNIQUE, and manual indexes)
SHOW INDEXES FROM users;

-- 🔍 Query: Find user by email and salary
-- If there is an index on 'email' or 'salary', this query can use it to speed up the search
SELECT * FROM users WHERE email = 'smita.patil@example.com' AND salary = 955000.00;

-- 🔍 Query: Find user by salary and name
-- If there is an index on 'salary', MySQL can use it to quickly locate rows
SELECT * FROM users WHERE salary = 955000.00 AND name = 'Smita Patil';

-- 📋 View all users in the table (no index used here — full table scan)
SELECT * FROM users;

-- 🔍 Show indexes again to check if the new index appears
SHOW INDEXES FROM users;

-- ⚙️ Create an index on the 'salary' column to improve performance of queries that filter by salary
CREATE INDEX idx_salary ON users(salary);

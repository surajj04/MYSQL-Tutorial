-- 📂 Switch to the 'startersql' database
USE startersql;

-- 👑 Create a view called 'rich_users' that includes users with salary greater than 70000
CREATE VIEW rich_users AS 
SELECT * FROM users WHERE salary > 70000;

-- 🔍 Use the view like a normal table to fetch rich users
SELECT * FROM rich_users;

-- ❌ Drop the view if you no longer need it (note: semicolon only, not quote)
-- DROP VIEW rich_users;

-- 🔍 Select all data from the 'admin_users' table
SELECT * FROM admin_users;

-- 🔗 UNION: Combines 'name' from users and admin_users, removing duplicates
-- If a name appears in both tables, it will only appear once in the result
SELECT name FROM users
UNION
SELECT name FROM admin_users;

-- 🔗 UNION ALL: Combines 'name' from users and admin_users, keeping duplicates
-- If a name appears in both tables, it will appear twice in the result
SELECT name FROM users
UNION ALL
SELECT name FROM admin_users;

-- 🧱 Add a new column 'referred_by_id' to store who referred the user (referring user's ID)
ALTER TABLE users
ADD COLUMN referred_by_id INT;

-- 🔁 Update referred_by_id to 1 for selected users (they were referred by user with ID = 1)
UPDATE users SET referred_by_id = 1 WHERE id IN (2, 3, 7, 6, 5, 8, 11, 14, 15, 16, 17, 18);

-- 🔁 User with ID = 4 was referred by user with ID = 2
UPDATE users SET referred_by_id = 2 WHERE id = 4;

-- 🤝 SELF JOIN: Find users and the names of the users who referred them
-- This joins the users table to itself, matching referred_by_id with id
SELECT
    a.id,
    a.name AS user_name,
    b.name AS referred_by
FROM users a
INNER JOIN users b ON a.referred_by_id = b.id;

-- 🤝 SELF JOIN (with LEFT JOIN): Show all users, including those who were not referred by anyone (NULL)
SELECT
    a.id,
    a.name AS user_name,
    b.name AS referred_by
FROM users a
LEFT JOIN users b ON a.referred_by_id = b.id;

-- 🔍 Show all user data including referred_by_id
SELECT * FROM users;

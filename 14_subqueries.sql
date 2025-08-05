-- 📂 Use the 'startersql' database
USE startersql;

-- 🔢 Get the average salary of all users
-- This returns a single value (scalar subquery)
SELECT AVG(salary) FROM users;

-- 🔍 Subquery Example 1:
-- Select all users whose salary is greater than the average salary
-- The subquery runs first and returns the average salary
-- Then the outer query returns users with salary > that average
SELECT * FROM users
WHERE salary > (SELECT AVG(salary) FROM users);

-- 🔍 Subquery Example 2:
-- Same as above, but results are sorted in descending order of salary
-- Helps to quickly find the highest-paid users above average
SELECT * FROM users
WHERE salary > (SELECT AVG(salary) FROM users)
ORDER BY salary DESC;

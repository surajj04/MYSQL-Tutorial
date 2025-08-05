-- 📂 Use the 'startersql' database
USE startersql;

-- 🔹 1. Group by gender: count users and average salary for each gender
SELECT 
    gender, 
    COUNT(*) AS Count, 
    AVG(salary) AS average_salary
FROM users
GROUP BY gender;


-- 🔹 2. Same as above, but only include genders where average salary > 999990
-- 🧠 Note: HAVING is used to filter aggregated results
SELECT 
    gender, 
    COUNT(*) AS Count, 
    AVG(salary) AS average_salary
FROM users
GROUP BY gender
HAVING AVG(salary) > 999990;


-- 🔹 3. Group by gender with a total (ROLLUP)
-- 🧠 WITH ROLLUP adds a summary row (gender will be NULL for total row)
-- ⚠️ HAVING still applies, so total row must also meet the condition
SELECT 
    gender, 
    COUNT(*) AS Count, 
    AVG(salary) AS average_salary
FROM users
GROUP BY gender
WITH ROLLUP
HAVING AVG(salary) > 99990;

-- 📂 Use the 'startersql' database
USE startersql;

-- 🔢 Count total number of users in the table
SELECT COUNT(*) FROM users;

-- 👨 Count number of Male users
SELECT COUNT(*) FROM users WHERE gender = 'Male'; 

-- 👩 Count number of Female users
SELECT COUNT(*) FROM users WHERE gender = 'Female'; 

-- 💸 Get the minimum and maximum salary from the users table
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;

-- 💰 Calculate the total sum of all salaries
SELECT SUM(salary) AS total_salary FROM users;

-- 📊 Calculate average salary grouped by gender
SELECT gender, AVG(salary) AS avg_salary FROM users GROUP BY gender;

-- 🔠 Show each user's name along with the length of their name
SELECT name, LENGTH(name) AS name_len FROM users;

-- 👤 Create a username by combining lowercase name and birth year
SELECT id, gender, CONCAT(LOWER(name), YEAR(date_of_birth)) AS username FROM users;

-- 📅 Show how many days old each user is (from their birthdate to today)
SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days FROM users;

-- 🔢 Show salary with different rounding functions:
-- ROUND(): Nearest integer
-- FLOOR(): Largest integer <= salary
-- CEIL(): Smallest integer >= salary
SELECT name, salary, 
	ROUND(salary) AS rounded,
    FLOOR(salary) AS floored,
    CEIL(salary) AS ceiled 
FROM users;

-- ➗ Example of CEIL function on a number
SELECT CEIL(5);  -- Returns 5

-- ➕ Example of other math functions
-- MOD(): Returns remainder of division
-- ROUND(): Rounds number to nearest whole or specified decimal
-- FLOOR(): Rounds down to nearest whole number
-- CEIL(): Rounds up to nearest whole number
SELECT 
    MOD(10, 3) AS mod_result,       -- 10 % 3 = 1
    ROUND(123.456, 1) AS rounded1,  -- 123.5
    FLOOR(123.999) AS floored_val,  -- 123
    CEIL(123.001) AS ceiled_val;    -- 124

-- ✅ Check if user is Female using IF() condition
SELECT name, gender, 
	IF(gender = 'Female', 'Yes', 'No') AS is_female 
FROM users;

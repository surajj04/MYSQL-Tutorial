-- 🗂️ Use the correct database
USE startersql;

-- 🧾 Change the delimiter to define the procedure (because it contains semicolons inside)
DELIMITER $$

-- ⚙️ Create a stored procedure named 'AddUser'
CREATE PROCEDURE AddUser(
    IN p_name VARCHAR(100),         -- 🔹 Input: User's name
    IN p_email VARCHAR(100),        -- 🔹 Input: User's email
    IN p_gender ENUM('Male', 'Female', 'Other'),  -- 🔹 Input: User's gender
    IN p_dob DATE,                  -- 🔹 Input: User's date of birth
    IN p_salary INT                 -- 🔹 Input: User's salary
)
BEGIN
    -- 🧩 Insert the provided values into the 'users' table
    INSERT INTO users (name, email, gender, date_of_birth, salary)
    VALUES (p_name, p_email, p_gender, p_dob, p_salary);
END$$

-- ✅ Reset the delimiter back to semicolon after procedure creation
DELIMITER ;

-- 📞 Call the stored procedure with actual values to insert a user
CALL AddUser('Kiran Sharma', 'kiran@example.com', 'Female', '1994-06-15', 72000);

-- 🔍 View the updated data from the 'users' table
SELECT * FROM users;

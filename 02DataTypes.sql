-- Datatypes in SQL

-- 1.INT: integer type, used for whole number.
-- 2.VARCHAR: variable-length string, up to 100 characters.
-- 3.ENUM: A string object with a value chosen from a list of permitted values,
--  eg. gender ENUM('Male','Female')
-- 4.Date: stores date values eg date_of_birth
-- 5.TIMESTAMP: Stores date and time automatically set to the current timestamp 
-- when a row is created.
-- 6.BOOLEAN: storess TURE or FALSE values often used for flags like is_active

-- Constrains in sql

-- AUTO_INCREMENT: automatically genrates a unique number for each row.
-- PRIMARY KEY: uniquely identifies each row in the table.
-- NOT NULL: ensures a column cannot have a NULL value.
-- UNQIUE: ensure all values in a column are different.
-- DEFAULT: ste a default value for a column if no value is provided 
-- eg. create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, is_active BOOLEAN DEFAULT TURE





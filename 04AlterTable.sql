-- Altering a table
SELECT * FROM users;

-- you can alter table to modify an existing table
--  add column
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

-- drop column
ALTER TABLE users DROP COLUMN is_active;

-- modify a column type

ALTER TABLE users MODIFY COLUMN name VARCHAR(150); 

DESC users;

-- modify the sequence
ALTER TABLE users MODIFY COLUMN email VARCHAR(100) AFTER id;


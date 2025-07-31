-- Database: A database is a way to store data in a format which makes it easily accessible.
-- Queries: A command to the database.
-- CRUD: Create, Read, Update and Delete


-- DBMS: A Database Management System (DBMS) is software that 
-- allows users to create, access, manage, and manipulate databases efficiently.

-- creating the database
CREATE DATABASE startsql;

-- set as default schema 
USE startsql;


-- creating a table
CREATE TABLE users(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male','Female','Other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM users;

-- for a drop a entire  database
-- DROP DATABASE startsql;

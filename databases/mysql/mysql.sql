-- creates a new database
CREATE DATABASE example_database;


-- selects which database will be used
USE example_database;


-- creates a basic mysql table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- inserts a new record
INSERT INTO users (username, email)
VALUES ('example_user', 'example@email.com');


-- retrieves records from the table
SELECT *
FROM users;


-- automatically updates this timestamp whenever the record changes
CREATE TABLE items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP
);


-- creates an index to improve searches on commonly queried columns
CREATE INDEX idx_username
ON users(username);


-- shows the structure of a table
DESCRIBE users;


-- shows all tables in the current database
SHOW TABLES;


-- removes a table
DROP TABLE IF EXISTS users;


-- removes an entire database
DROP DATABASE IF EXISTS example_database;
-- creates a new database
CREATE DATABASE example_database;


-- creates a basic postgresql table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- inserts a new record and immediately returns its generated id
INSERT INTO users (username, email)
VALUES ('example_user', 'example@email.com')
RETURNING id;


-- retrieves records from the table
SELECT *
FROM users;


-- uses boolean values directly
CREATE TABLE settings (
    id SERIAL PRIMARY KEY,
    enabled BOOLEAN DEFAULT TRUE
);


-- jsonb stores structured json data that can also be queried efficiently
CREATE TABLE profiles (
    id SERIAL PRIMARY KEY,
    details JSONB
);


-- creates an index to improve searches on commonly queried columns
CREATE INDEX idx_username
ON users(username);


-- changes an existing table by adding a new column
ALTER TABLE users
ADD COLUMN last_login TIMESTAMP;


-- removes a table if it exists
DROP TABLE IF EXISTS users;


-- removes an entire database
DROP DATABASE IF EXISTS example_database;
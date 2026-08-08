-- create: adds a new record to the table
INSERT INTO users (username, email)
VALUES ('example_user', 'example@email.com');


-- read: retrieves all records from the table
SELECT *
FROM users;


-- read: retrieves specific columns only
SELECT id, username, email
FROM users;


-- read: retrieves records matching a condition
SELECT *
FROM users
WHERE id = 1;


-- update: changes an existing record
UPDATE users
SET username = 'updated_user'
WHERE id = 1;


-- update: changes multiple columns at once
UPDATE users
SET
    username = 'updated_user',
    email = 'updated@email.com'
WHERE id = 1;


-- delete: removes a specific record
DELETE FROM users
WHERE id = 1;
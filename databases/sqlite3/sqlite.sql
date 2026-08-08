-- enables foreign key rules in sqlite
PRAGMA foreign_keys = ON;

-- creates a table only if it does not already exist
CREATE TABLE IF NOT EXISTS items (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- adds a new record to the table
INSERT INTO items (name, description)
VALUES ('example item', 'example description');

-- retrieves every record from the table
SELECT *
FROM items;

-- retrieves specific columns from the table
SELECT id, name
FROM items;

-- retrieves records that match a condition
SELECT *
FROM items
WHERE id = 1;

-- changes an existing record
UPDATE items
SET name = 'updated item'
WHERE id = 1;

-- removes a specific record
DELETE FROM items
WHERE id = 1;

-- removes the table and all data stored inside it
-- use carefully as this cannot normally be undone
DROP TABLE IF EXISTS items;
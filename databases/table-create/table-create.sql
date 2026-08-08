-- creates a table with several common column types and constraints
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    -- not null requires a value to be provided
    username TEXT NOT NULL,

    -- unique prevents duplicate values in this column
    email TEXT NOT NULL UNIQUE,

    -- default provides a value when one is not supplied
    status TEXT DEFAULT 'active',

    -- stores when the record was created
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);


-- creates a second table that is related to the users table
CREATE TABLE posts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    user_id INTEGER NOT NULL,

    title TEXT NOT NULL,
    content TEXT,

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

    -- links user_id to the id column in the users table
    FOREIGN KEY (user_id)
        REFERENCES users(id)
);


-- check limits which values are allowed in a column
CREATE TABLE products (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    name TEXT NOT NULL,

    price REAL NOT NULL CHECK (price >= 0),

    quantity INTEGER DEFAULT 0 CHECK (quantity >= 0)
);
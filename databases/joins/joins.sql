-- inner join returns only rows that have matching values in both tables
SELECT users.username, posts.title
FROM users
INNER JOIN posts
    ON users.id = posts.user_id;


-- left join returns every row from the left table
-- matching rows from the right table are included when available
SELECT users.username, posts.title
FROM users
LEFT JOIN posts
    ON users.id = posts.user_id;


-- joins can also filter the combined results
SELECT users.username, posts.title
FROM users
INNER JOIN posts
    ON users.id = posts.user_id
WHERE users.status = 'active';


-- aliases shorten table names and make larger queries easier to read
SELECT u.username, p.title
FROM users AS u
INNER JOIN posts AS p
    ON u.id = p.user_id;


-- joins can connect more than two related tables
SELECT u.username, p.title, c.content
FROM users AS u
INNER JOIN posts AS p
    ON u.id = p.user_id
INNER JOIN comments AS c
    ON p.id = c.post_id;
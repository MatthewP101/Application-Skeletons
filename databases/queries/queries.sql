-- selects specific columns instead of returning the entire table
SELECT id, username, email
FROM users;


-- filters records using a condition
SELECT *
FROM users
WHERE status = 'active';


-- combines multiple conditions
SELECT *
FROM users
WHERE status = 'active'
AND id > 5;


-- matches either of multiple conditions
SELECT *
FROM users
WHERE status = 'active'
OR status = 'pending';


-- sorts results in ascending order
SELECT *
FROM users
ORDER BY username ASC;


-- sorts results in descending order
SELECT *
FROM users
ORDER BY created_at DESC;


-- limits the number of returned records
SELECT *
FROM users
LIMIT 10;


-- searches for partial text matches
SELECT *
FROM users
WHERE username LIKE '%example%';


-- returns only unique values
SELECT DISTINCT status
FROM users;


-- counts the number of matching records
SELECT COUNT(*)
FROM users
WHERE status = 'active';


-- groups records by a shared value
SELECT status, COUNT(*)
FROM users
GROUP BY status;


-- filters grouped results after grouping
SELECT status, COUNT(*)
FROM users
GROUP BY status
HAVING COUNT(*) > 1;
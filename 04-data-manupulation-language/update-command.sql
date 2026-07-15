-- UPDATE
-- the update command is used to change existing record in the the database
-- The syntax for updating a record is as follows:
-- UPDATE table_name
-- SET colunm_name = value1,
--     column_name2 = value2
-- WHERE condition;

-- NB: If you do not specify a WHERE clause, all records in the table will be updated.

-- TASK 1 : Change the score of customer with id 6 to 0
\c MyDatabase;

SELECT * FROM customers;

UPDATE customers
SET score = 0
WHERE id = 6;

SELECT * FROM customers WHERE id = 6;

-- TASK 2 : Change the score of customer with id 9 to 0, and the country to UK
UPDATE customers
SET score = 0,
    country = 'UK'
WHERE id = 9;

SELECT * FROM customers WHERE id = 9;

-- TASK 3 : Update all customers with NULL score to zero
SELECT * FROM customers WHERE score IS NULL;

UPDATE customers
SET score = 0
WHERE score IS NULL;

SELECT * FROM customers WHERE score = 0;

-- TASK 4 : Update all customers with NULL country to 'Unknown'
SELECT * FROM customers WHERE country IS NULL;

UPDATE customers
SET country = 'Unknown'
WHERE country IS NULL;

SELECT * FROM customers WHERE country = 'Unknown';
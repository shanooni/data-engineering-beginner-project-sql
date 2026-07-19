-- LOGICAL OPERATORS
-- logical operators are used to combine multiple conditions in a WHERE clause. The most common logical operators are AND, OR, and NOT.
\c MyDatabase;

-- AND OPERATOR
-- All the conditions must be TRUE for the row to be included in the result set.

-- TASK 1: Get all customers from the country USA and have score greater than 500
SELECT * FROM customers
WHERE country = 'USA' AND score > 500;

-- OR OPERATOR
-- At least one of the conditions must be true

-- TASK 2 : Get all customers from either USA or have a score greater than 500
SELECT * FROM customers
WHERE country = 'USA' OR score > 500;

-- NOT OPERATOR
-- its a reverse operator, it excludes results from the result.

-- TASk 3: Get all customers with score not less than 500
SELECT * FROM customers
WHERE  NOT score < 500;
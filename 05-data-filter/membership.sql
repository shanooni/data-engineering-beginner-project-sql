-- MEMBERSHIP OPERATOR
-- Its used to check if a value exist in as a member of a list

\c MyDatabase

-- IN OPERATOR
-- TASK 1: Get all customers from either Germany or USA
SELECT * FROM customers
WHERE country IN ('Germany', 'USA');

-- NOT IN OPERATOR
--TASK 2: Get all customers from not either GERMANY or USA
SELECT * FROM customers
WHERE country NOT IN ('Germany', 'USA');

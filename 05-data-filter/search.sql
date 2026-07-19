-- SEARCH OPERATOR
-- This used to search for patterns within a text

-- LIKE
-- patterns operator
-- (_) used to search exactly one match - (1)
-- (%) used for search for anything, no match, or many matches - (0, 1, 1+)
\c MyDatabase

-- TASK 1: Get all customers with first_name ending with n
SELECT * FROM customers
WHERE first_name LIKE '%n';

-- TASK 2: Get all customers with first_name containing r
SELECT * FROM customers
WHERE first_name LIKE '%r%';

-- TASK 3: Get all customers with first_name starting with M
SELECT * FROM customers
WHERE first_name LIKE 'M%'
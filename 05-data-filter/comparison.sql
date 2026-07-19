-- EQUAL OPERATOR

\c MyDatabase;

-- EQUALS (=)
-- TASK 1: retrieve all customers from germany
SELECT * FROM customers
WHERE country = 'Germany';

-- NOT EQUALS (<> OR !=)
-- TASK 2: retrieve all customers not from germany.
SELECT * FROM customers
WHERE country <> 'Germany';

-- GREATER THAN (>)
-- TASK 3 : Select all customer with score greater than 500
SELECT * FROM customers
WHERE score > 500;

-- GREATER THAN OR EQUAL TO (>=)
-- TASK 4 : retreive customer with score of 500 or more
SELECT * FROM customers
WHERE score >= 500;

-- LESS THAN (<)
-- TASK 5 : retrieve all customers with scores less than 500
SELECT * FROM customers
WHERE score < 500;

-- LESS THAN OR EQUAL TO (<=)
-- TASK 6 : retrieve all customers with scores less than or equal to 500
SELECT * FROM customers
WHERE score <= 500;
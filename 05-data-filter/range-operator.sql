-- RANGE OPERATOR
\c MyDatabase;

-- BETWEEN OPERATOR
-- for the between operators you need two boundries,
-- the upper and lower boundries
-- In the between operator the boundries are inclusive
-- Everything within the range are true, and anything else is false

-- TASK 1 : Get all customers whose scores are in the range of 100 and 500
SELECT * FROM customers
WHERE score BETWEEN 100 AND 500;
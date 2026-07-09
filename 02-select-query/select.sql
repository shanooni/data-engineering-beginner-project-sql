-- use the database called MyDatabase
-- the \c command is used to connect to a specific database in PostgreSQL
\c MyDatabase

-- retrieve all columns from the table called Customers
SELECT * FROM Customers;

-- retrieve all columns from the table called Orders
SELECT * FROM Orders;

-- SELECTING specific columns from table
SELECT 
    first_name, 
    country, 
    score 
FROM 
    Customers;

-- USING WHERE CLAUSE TO FILTER DATA
-- the WHERE clause is used to filter records based on a specified condition
-- condition can be based on a column value, comparison operators, or logical operators

-- execution of the WHERE clause starts with FROM, 
-- the WHERE clause is used to filter records based on a specified condition, 
-- then retrieve specific columns from the table

-- TASK 1 : Retrieve customers with score not equal to 0
SELECT *
FROM Customers
WHERE score != 0;

-- TASK 2 : Retrieve customers from the country 'GERMANY'
SELECT *
FROM Customers
WHERE country = 'Germany';

-- TASK 3 : Retrieve first_name, country, and score of customers from the country 'GERMANY'
SELECT first_name, country, score
FROM Customers
WHERE country = 'Germany';

-- ORDER BY CLAUSE
-- the ORDER BY clause is used to sort the result set in ascending or descending order
-- the default order is ascending, to sort in descending order, use DESC keyword

-- Execution of the ORDER BY clause starts with FROM,
-- then the WHERE clause is used to filter records based on a specified condition,
-- and finally the ORDER BY clause is used to sort the result set in ascending or descending order

-- TASK 1 : Retrieve customers ordered by score in descending order
SELECT *
FROM Customers
ORDER BY score DESC;

-- TASK 2: Retrieve customers ordered by score in ascending order
SELECT *
FROM Customers
ORDER BY score ASC;

-- NESTED ORDER BY CLAUSE
-- the ORDER BY clause can be used with multiple columns to sort the result set
-- the first column specified in the ORDER BY clause will be sorted first,
-- and then the second column will be sorted within the first column's sorted order

-- TASK 1 : Retrieve customers ordered by country in ascending order and score in descending order
SELECT *
FROM Customers
ORDER BY country ASC, score DESC;

-- GROUP BY CLAUSE
-- the GROUP BY clause is used to group rows that have the same values in specified columns into summary rows, like "find the number of customers in each country"
-- the GROUP BY clause is often used with aggregate functions (COUNT, SUM, AVG, MAX, MIN) to perform calculations on

-- TASK 1 : Find the total score of customers in each country
SELECT country , sum(score) AS total_score
FROM Customers
GROUP BY country;

-- TASK 2 : Find the total score of customers and number of customers in each country
SELECT country , sum(score) AS total_score, COUNT(id) AS customer_count
FROM Customers
GROUP BY country;

-- HAVING CLAUSE
-- the HAVING clause is used to filter records that work on summarized GROUP BY results

-- TASK 1 : Find the total score of customers in each country where the total score is greater than 800
SELECT country , sum(score) AS total_score
FROM Customers
GROUP BY country
HAVING sum(score) > 800;

-- TASK 2 : Find the average score for each country
-- considering only customers with a score not equal to 0
-- and return only those countries witha an average score greater than 430

SELECT country, AVG(score) AS average_score
FROM Customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) > 430;


-- DISTINCT CLAUSE
-- the DISTINCT keyword is used to return only distinct (different) values,
-- the DISTINCT keyword ensures only unique values are returned in the result set

-- COMMAND: SELECT DISTINCT column1, column2, FROM table_name;
-- TASK 1 : Retrieve distinct countries from the Customers table
SELECT DISTINCT country
FROM Customers;

-- TOP / LIMIT (psql does not have a TOP keyword, but you can use LIMIT to achieve the same result)
-- the TOP keyword is used to restrict the number of records to return in the result set
-- COMMAND: SELECT TOP number column1, column2, FROM table_name;

-- TASK 1: Retrieve the top 3 customers
SELECT *
FROM Customers
LIMIT 3;

-- TASK 2: Retrieve the top 3 customers ordered by score in descending order

SELECT *
FROM Customers
ORDER BY score DESC
LIMIT 3; 
-- TASK 3: Retrieve top 2 customers with the lowest score

SELECT *
FROM Customers
ORDER BY score ASC
LIMIT 2;

-- TASK 4: Retrieve the two most recent orders
SELECT *
FROM Orders
ORDER BY order_Date DESC
LIMIT 2;
-- DELETE
-- the delete command is used to remove already exisiting records from your database
-- The syntax for deleting a record is as follows:
-- DELETE FROM table_name
-- WHERE condition;

-- NB: If you do not specify a WHERE clause, all records in the table will be deleted.

\c MyDatabase;

SELECT * FROM customers;

-- TASK 1 : Delete all customers with ids greater than 5
DELETE FROM customers
WHERE id > 5;

SELECT * FROM customers;

-- TASK 2 : DELETE all data from persons table.
-- NB: We don't want to delete the persons table, we just want to delete all the data in the table.
-- ANOTHER WAY TO DELETE ALL DATA FROM A TABLE IS TO USE THE TRUNCATE COMMAND.

DELETE FROM persons;
TRUNCATE TABLE persons;
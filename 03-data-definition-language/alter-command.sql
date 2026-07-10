\c postgres
-- ALTER COMMAND
-- The alter command is used to modify an existing table in the database. The syntax for altering a table is as follows:
-- ALTER TABLE table_name
-- ADD column_name datatype constraint;

-- NB: The alter command can also be used to drop a column, rename a column, or change the data type of a column. The syntax for these operations is as follows:
-- ALTER TABLE table_name
-- DROP COLUMN column_name;
-- ALTER TABLE table_name
-- RENAME COLUMN old_column_name TO new_column_name;
-- ALTER TABLE table_name
-- ALTER COLUMN column_name TYPE new_datatype;


-- TASK 1 : Add a new column called email to the persons table
-- ALTER TABLE persons
-- ADD email VARCHAR(100);

-- TASK 2 : Drop the phone_number column from the persons table
ALTER TABLE persons
DROP COLUMN phone_number;
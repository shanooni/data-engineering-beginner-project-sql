-- INSERT
-- The insert command is used to insert new records into a table in the database. The syntax for inserting a new record is as follows:
-- INSERT INTO table_name (column1, column2, column3, ...)
-- VALUES (value1, value2, value3, ...);

-- NB: its optional to specify the column names in the insert command. If you do not specify the column names, 
-- you must provide values for all columns in the table, in the order they were defined.    

\c MyDatabase;
-- TASK 1 : Insert a new record into the customer table
-- INSERT INTO customers (id,first_name,country,score)
-- VALUES (6,'Anny','USA',NULL);

-- TASK 2 : Insert multiple records into the customer table
-- INSERT INTO customers ( id, first_name, country, score)
-- VALUES 
--     (7,'Sam',NULL,100),
--     (8, 'Alice', 'Canada', 200);


-- TASK 3 : insert specific columns into the customer table
-- INSERT INTO customers (id, first_name)
-- VALUES (9, 'Shanoon');

SELECT * FROM customers;
    
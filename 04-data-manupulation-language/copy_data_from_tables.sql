\c MyDatabase
-- COPY DATA FROM TABLES
-- The copy command is used to copy data from one table to another in the database. 
-- The syntax for copying data from one table to another is as follows:
-- INSERT INTO table_name (column1, column2, column3, ...)
-- SELECT column1, column2, column3, ...
-- TASK 1 : Copy all records from the customers table to the persons table
DROP TABLE IF EXISTS persons;

CREATE TABLE persons 
(
    id INT NOT NULL PRIMARY KEY,
    person_name VARCHAR(150) NOT NULL,
    birth_date DATE,
    phone VARCHAR(20)
);

INSERT INTO persons (id, person_name, birth_date, phone)
SELECT id, first_name, NULL, 'Unknown'
FROM customers;

SELECT * FROM persons;

\c postgres
-- CREATE COMMAND
-- The create command is used to create a new table in the database. The syntax for creating a table is as follows:
-- CREATE TABLE table_name (
-- column1 datatype constraint,
-- column2 datatype constraint,
-- column3 datatype constraint,
-- ...
-- );

-- TASK 1 : Create a new table called person with the columns : id, person_name, birth_date, and phone_number
CREATE TABLE persons (
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone_number VARCHAR(15) NOT NULL,
    CONSTRAINT pk_person PRIMARY KEY (id)
)


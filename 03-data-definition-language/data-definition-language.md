# DATA DEFINITION LANGUAGE
the data definition language is comprised of the sql commands used to defined the structure of the database
The include

-- CREATE 
-- ALTER
-- DROP

## CREATE
this command allow us to create the table and define the columns within the particular database table

Syntax :
CREATE table_name (
    column_name datatype constraints,
    column_name datatype constraints,
    ...
)

## ALTER 
this command is used to make update to the an existing database definition
the alter command has the following properties:
-- to append a new column to an exisiting table
-- to remove a column in a table
-- change the datatype of a column
-- rename the columns of a table

Syntax for adding a new column:
ALTER table_name COLUMN column_name datatype constraint;

Syntax for removing a column:
ALTER table_name DROP column name;
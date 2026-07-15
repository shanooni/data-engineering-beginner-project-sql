# WHERE OPERATOR

## COMPARISON OPERATORS
> To compair two values
- = (equals)
- <> =! (not equals)
- '>' (greater than)
- < (less than)
- '>=' (greater than or equal)
- <= (less than or equals)

---

## LOGICAL OPERATOR
> to combined multiple operators
- AND
- OR
- NOT

---

## RANGE OPERATOR
> to check wheather a value falls within a certain range
- BETWEEN

---

## MEMBERSHIP OPERATOR
> to accertain wheather a value is part of a list
- IN
- NOT IN

---

## SEARCH OPERATOR
> search for a specific text in a string
- LIKE

----

# USAGE
> COMPARISON OPERATORS

Expression Operator Expression <i>=></i> <b>condition<b>
` usecases_1 ` <i>column_1</i> <b>=</b> <i>column_2</i>  | first_name = last_name
` usecases_2 ` <i>column</i> <b>=</b> <i>value</i>        | first_name = 'John'
` usecases_3 ` <i>function</i> <b>=</b> <i>value</i>      | UPPER(first_name) = 'JOHN'
` usecases_4 ` <i>expression</i> <b>=</b> <i>value</i>      | Price * Quantity = 1000
` usecases_5 ` <i>subquery</i> <b>=</b> <i>value</i>      | SELECT AVG(sales) FROM orders = 1000
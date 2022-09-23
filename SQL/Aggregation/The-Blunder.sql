/*
Write a query calculating the amount of error 
(i.e.: actual - miscalculated average monthly salaries), and round it up to the next integer.
*/
SELECT CEIL(AVG(salary) - AVG(REPLACE(salary, '0', '')))
FROM employees;
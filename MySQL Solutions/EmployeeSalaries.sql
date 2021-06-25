-- Write a query that prints a list of employee names for employees in Employee
-- Having a salary greater than $2000 per month who have been employees for less than 10 months
-- Sort your result by ascending employee_id.
-- ASC sorts from least to greatest, DESC sorts from greatest to least
SELECT name
FROM Employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id ASC;
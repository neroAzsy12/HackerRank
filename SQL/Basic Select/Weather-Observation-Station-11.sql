/*
Query the list of CITY names from STATION 
that do not start with vowels or do not end with vowels. 
Your result cannot contain duplicates.
*/
SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[^aeiou]|[^aeiou]$';

-- Query 2
SELECT DISTINCT city
FROM station
WHERE city REGEXP '^[^aeiou]' OR city REGEXP '[^aeiou]$';

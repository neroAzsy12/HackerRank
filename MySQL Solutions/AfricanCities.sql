-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'
-- CITY.CountryCode and COUNTRY.Code are matching key columns

-- INNER JOIN returns rows that have matching values in both tables
SELECT CITY.name
FROM CITY
INNER JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code
WHERE COUNTRY.Continent = 'Africa';
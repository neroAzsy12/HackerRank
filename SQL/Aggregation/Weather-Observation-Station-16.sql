/*
Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. 
Round your answer to 4 decimal places.
*/
SELECT ROUND(lat_n, 4)
FROM station
WHERE lat_n > 38.7780
ORDER BY lat_n
LIMIT 1;

-- Query 2
SELECT ROUND(lat_n, 4)
FROM station
WHERE lat_n = (
  SELECT MIN(lat_n)
  FROM station
  WHERE lat_n > 38.7780
)
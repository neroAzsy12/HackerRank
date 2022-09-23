/*
Query the Western Longitude (LONG_W) where 
the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7880. 
Round your answer to  decimal places.
*/
SELECT ROUND(long_w, 4)
FROM station
WHERE lat_n > 38.7780
ORDER BY lat_n
LIMIT 1;

-- Qurey 2
SELECT ROUND(long_w, 4)
FROM station
WHERE lat_n = (
  SELECT MIN(lat_n)
  FROM station
  WHERE lat_n > 38.7780
);
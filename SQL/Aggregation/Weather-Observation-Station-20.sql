/*
A median is defined as a number separating the higher half of a data set from the lower half.
Query the median of the Northern Latitudes (LAT_N) from STATION and 
round your answer to 4 decimal places.
*/
SET @rowindex := -1;

SELECT ROUND(AVG(s.lat_n), 4) AS median
FROM (
  SELECT @rowindex := @rowindex + 1 AS rowindex,
         station.lat_n AS lat_n
  FROM station
  ORDER BY station.lat_n
) AS s
WHERE s.rowindex IN (FLOOR(@rowindex / 2), CEIL(@rowindex / 2));
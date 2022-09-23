/*
Consider P1(a, c) and P2(b, d) to be two points on a 2D plane.
 a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
 c happens to equal the minimum value in Western Longitude (LONG_W in STATION).
 b happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
 d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Euclidean Distance between points P1 and P2 and round it to a scale of 4 decimal places.
*/
SELECT
  ROUND(
    SQRT(
      POWER(ABS(MIN(lat_n) - MAX(lat_n)), 2) +
      POWER(ABS(MIN(long_w) - MAX(long_w)), 2)
    ),
  4)
FROM station;
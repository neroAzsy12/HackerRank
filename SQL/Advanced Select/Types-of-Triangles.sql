/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths

Equilateral: It's a triangle with 3 sides of equal length.
Isosceles: It's a triangle with 2 sides of equal length.
Scalene: It's a triangle with 3 sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.

Table: Triangles (A int, B int, C int)
*/
SELECT
  CASE
    WHEN (A = B AND B = C) THEN 'Equilateral'
    WHEN (A = B OR B = C OR A = C) AND (A + B > C) THEN 'Isosceles'
    WHEN (A + B > C) THEN 'Scalene'
    ELSE 'Not A Triangle'
  END
FROM triangles
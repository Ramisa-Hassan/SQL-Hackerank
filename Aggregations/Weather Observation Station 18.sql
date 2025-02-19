-- Problem Statement

-- Consider P1 (a,b) and P2 (c,d) to be two points on a 2D plane.

-- a: happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
-- b: happens to equal the minimum value in Western Longitude (LONG_W in STATION).
-- c: happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
-- d: happens to equal the maximum value in Western Longitude (LONG_W in STATION).
-- Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.

-- Input Format

-- The STATION table is described as follows:

-- Field            Type
-------------------------
-- ID            NUMBER
-- CITY          VARCHAR2(21)
-- STATE         VARCHAR2(2)
-- LAT_N         NUMBER
-- LONG_W        NUMBER

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

-- Solution

SELECT 
ROUND(
    ABS(MIN(LAT_N)-MAX(LAT_N))+
    ABS(MIN(LONG_W)-MAX(LONG_W)),4) AS ManhattanDistance
FROM STATION


-- used ABS (ABSOLUTE) here to get a positive value, regardless of which point has the larger or smaller coordinate. 
-- Manhattan Distance: Manhattan distance, also known as taxicab distance or city block distance, 
-- is a metric used to measure the distance between two points in a grid-like path
-- The formula for Manhattan distance between two points (x₁, y₁) and (x₂, y₂) is: 
-- |x₁ - x₂| + |y₁ - y₂|
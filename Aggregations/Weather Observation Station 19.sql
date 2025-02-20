-- Problem Statement

-- Consider P1 (a,c) and P2 (b,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of 
-- Northern Latitude (LAT_N) and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

-- Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.

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
ROUND(SQRT(POWER(MAX(LONG_W) - MIN(LONG_W), 2) + POWER(MAX(LAT_N) - MIN(LAT_N), 2)), 4) AS EUCLIDEANDISTANCE
FROM STATION

-- Euclidean Distance: in mathematics, the distance between two points in Euclidean Space is the length of the line segment between them. 
-- It can be calculated from the Cartesian co-ordinates of the points using the Pythagorean theorem. 
-- Formula: Euclidean distance between two points (x₁, y₁) and (x₂, y₂) in a two-dimensional plane is:
-- d = sqrt ((x₂ - x₁)^2 + (y₂ -  y₁)^2)
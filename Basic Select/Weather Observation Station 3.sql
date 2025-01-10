-- Problem Statement

-- Query a list of CITY names from STATION for cities that have an even ID number.
-- Print the results in any order, but exclude duplicates from the answer.
-- The STATION table is described as follows:

-- Station

-- Field         Type
----------------------
-- ID            NUMBER
-- City          VARCHAR2(17)
-- State         VARCHAR2(3)
-- Lat_N         Number
-- Long_W        NUMBER

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

-- Solution

SELECT DISTINCT CITY
FROM STATION
WHERE ID % 2 = 0
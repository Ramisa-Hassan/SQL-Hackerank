-- Problem Statement

-- Query the list of CITY names from STATION 
-- which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. 
-- Your result cannot contain duplicates.

-- The STATION table is described as follows:

-- Field         Type
----------------------
-- ID            NUMBER
-- City          VARCHAR2(17)
-- State         VARCHAR2(3)
-- Lat_N         Number
-- Long_W        NUMBER

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '[AEIOU]%[AEIOU]'
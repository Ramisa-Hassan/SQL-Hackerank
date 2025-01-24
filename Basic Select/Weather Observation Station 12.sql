-- Problem Statement

-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
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
WHERE 
LEFT (CITY,1) NOT IN ('A', 'E', 'I', 'O', 'U')
AND RIGHT (CITY,1) NOT IN ('A', 'E', 'I', 'O', 'U')
-- Problem Statement

-- Query the two cities in STATION with the shortest and longest CITY names, 
-- as well as their respective lengths (i.e.: number of characters in the name). 
-- If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

-- The STATION table is described as follows:

-- -- Field         Type
----------------------
-- ID            NUMBER
-- City          VARCHAR2(17)
-- State         VARCHAR2(3)
-- Lat_N         Number
-- Long_W        NUMBER

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

SELECT CITY, LENGTH(CITY) AS CITY_LENGTH
FROM STATION 
ORDER BY CITY_LENGTH ASC, CITY ASC
LIMIT 1;

SELECT CITY, LENGTH(CITY) AS CITY_LENGTH
FROM STATION 
ORDER BY CITY_LENGTH DESC, CITY DESC
LIMIT 1;

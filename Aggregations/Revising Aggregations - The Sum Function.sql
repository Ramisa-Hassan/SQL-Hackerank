-- Problem Statement

-- Query the total population of all cities in CITY where District is California.

-- Input Format

-- The CITY table is described as follows:

-- Column                 Type
------------------------------
-- ID             Number
-- NAME           VARCHAR2(17)
-- COUNTRYCODE    VARCHAR2(3)
-- DISTRICT       VARCHAR2(20)
-- POPULATION     NUMBER

-- Solution

SELECT SUM(POPULATION) AS Total_Population
FROM CITY
WHERE DISTRICT = "California"
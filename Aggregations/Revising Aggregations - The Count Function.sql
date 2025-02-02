-- Problem Statement

-- Query a count of the number of cities in CITY having a Population larger than 100,000.

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

SELECT COUNT(NAME) 
FROM CITY
WHERE POPULATION > 100000
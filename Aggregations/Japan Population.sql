-- Problen Statement

-- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

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

SELECT SUM(POPULATION) AS Sumof_Population 
FROM CITY
WHERE COUNTRYCODE = "JPN"
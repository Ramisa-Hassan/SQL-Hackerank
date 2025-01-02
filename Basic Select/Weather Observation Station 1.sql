-- Problem Statement

-- Query a list of CITY and STATE from the STATION table.
--The STATION table is described as follows:

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

SELECT CITY, STATE
FROM STATION



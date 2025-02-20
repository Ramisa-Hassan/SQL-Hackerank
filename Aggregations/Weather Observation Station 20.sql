-- Problem Statement

-- A median is defined as a number separating the higher half of a data set from the lower half. 
-- Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.

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

WITH RankedLatitudes AS (
    SELECT LAT_N, 
           ROW_NUMBER() OVER (ORDER BY LAT_N) AS RowAsc,
           ROW_NUMBER() OVER (ORDER BY LAT_N DESC) AS RowDesc
    FROM STATION
)
SELECT ROUND(AVG(LAT_N), 4) AS Median
FROM RankedLatitudes
WHERE RowAsc = RowDesc OR RowAsc + 1 = RowDesc;

-- Logic for calculating Median:
-- For an odd number of rows, there will be one row where RowAsc = RowDesc, which is the median. And 
-- For an even number of rows, there will be two rows where RowAsc + 1 = RowDesc, and the average of these two becomes the median.
-- used AVG(LAT_N) to handle both odd and even number of rows
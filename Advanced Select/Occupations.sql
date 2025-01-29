-- Problem Statement

-- Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. 
-- The output should consist of four columns (Doctor, Professor, Singer, and Actor) in that specific order, 
-- with their respective names listed alphabetically under each column.

-- Note: Print NULL when there are no more names corresponding to an occupation.

-- Input Format

-- The OCCUPATIONS table is described as follows:

-- Column         Type
-----------------------
-- Name           String
-- Occupation     String

-- Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

WITH OccupationRanked AS (
    SELECT 
        name,
        occupation,
        ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) AS row_num
    FROM OCCUPATIONS
)
SELECT 
    MAX(CASE WHEN occupation = 'Doctor' THEN name END) AS Doctor,
    MAX(CASE WHEN occupation = 'Professor' THEN name END) AS Professor,
    MAX(CASE WHEN occupation = 'Singer' THEN name END) AS Singer,
    MAX(CASE WHEN occupation = 'Actor' THEN name END) AS Actor
FROM OccupationRanked
GROUP BY row_num
ORDER BY row_num;

-- Pivot means transforms rows (occupations) into columns.
-- Conditional Aggrements I have used here is MAX() ans CASE. The CASE statements are used to filter names for each occupation. AND
-- MAX() is used with CASE to select one name per row_num for each occupation. This technique is commonly used for pivoting in SQL. Also
-- this MAX() handles NULL values when there are no more names for an occupation.
-- I have used CTE (Common Table Expression) in the begining named 'OccupationRanked'.  
-- CTE is a temporary, named result set that is defined within the execution scope of a single SQL statement.
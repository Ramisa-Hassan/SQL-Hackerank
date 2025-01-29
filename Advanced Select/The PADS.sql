-- Problem Statement

-- Generate the following two result sets:

-- Query an alphabetically ordered list of all names in OCCUPATIONS,
-- immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). 
-- For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).

-- Query the number of ocurrences of each occupation in OCCUPATIONS. 
-- Sort the occurrences in ascending order, and output them in the following format:
-- There are a total of [occupation_count] [occupation]s.

-- where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and 
-- [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], 
-- they should be ordered alphabetically.

-- Note: There will be at least two entries in the table for each type of occupation.

-- Input Format

-- The OCCUPATIONS table is described as follows

-- Column         Type
-----------------------
-- Name           String
-- Occupation     String

-- Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

select concat(name, '(', substring(occupation, 1, 1), ')') as name
from occupations
order by name;
select concat('There are a total of', ' ', count(occupation), ' ', 
lower(occupation), 's.') as profession
from occupations
group by occupation
order by profession;

-- I have used CONCAT here. Because CONCAT is used to combine multiple elements into a single string
-- Again used SUBSTRING. SUBSTRING: This is a string manipulation function that extracts a portion of a string
-- 1: This is the starting position. In SQL, string positions are 1-indexed, meaning the first character is at position 1
-- 1: This is the length of the substring we want to extract. By specifying 1, we're telling the function to extract only one character
-- So, SUBSTRING(occupation, 1, 1) effectively takes the 'occupation' string and returns only its first character


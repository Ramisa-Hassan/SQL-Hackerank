-- Problem Statement

-- Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, 
-- but did not realize her keyboard's '0'  key was broken until after completing the calculation. 
-- She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), 
-- and the actual average salary.

-- Write a query calculating the amount of error (i.e.: actual - miscalculated average monthly salaries)
-- and round it up to the next integer.

-- Input Format

-- The EMPLOYEES table is described as follows:

-- Column            Type
-------------------------
-- ID             Integer
-- NAME           String
-- Salary         Integer

-- Note: Salary is per month.

-- Constraints: 1000 < Salary < 10^5

-- Solution 

SELECT CEILING(AVG(SALARY) - AVG(REPLACE(SALARY,'0','') )) FROM Employees;

-- used 'CEILING' - TO rounds up the result to the next integer. 
-- also used 'REPLACE(string, from_string, to_string): Replaces all occurrences of a substring within a string.
-- Here, it's used to replace '0' with '' (empty string), effectively removing all zeros'
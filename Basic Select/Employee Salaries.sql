-- Problem Statement

-- Write a query that prints a list of employee names (i.e.: the name attribute) 
-- for employees in Employee having a salary greater than $2000 per month who have been employees for less than 10 months. 
-- Sort your result by ascending employee_id.
-- The Employee table containing employee data for a company is described as follows:

-- Column                   Type
--------------------------------
-- Employee_id           Integer
-- Name          String
-- Months        Integer
-- Salary        Integer

-- where employee_id is an employee's ID number, name is their name, 
-- months is the total number of months they've been working for the company, and salary is their monthly salary.

SELECT name
FROM Employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id ASC
-- Problem Statement

-- Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy:

-- Founder -> Lead Manager -> Senior Manager -> MAnager -> Employee

--Given the table schemas below, write a query to print the 
-- company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

-- Note:

-- The tables may contain duplicate records.
-- The company_code is string, so the sorting should not be numeric. 
-- For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.

-- Input Format:

-- The following tables contain company data:

-- Company: The company_code is the code of the company and founder is the founder of the company.

-- Column            Type
-------------------------
-- company_code    String
-- founder         String

-- Lead_Manager: The lead_manager_code is the code of the lead manager, and the company_code is the code of the working company.

-- Column                 Type
------------------------------
-- lead_manager_code    String
-- company_code         String

-- Senior_Manager: The senior_manager_code is the code of the senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company.

-- Column                 Type
------------------------------
-- senior_manager_code  String
-- lead_manager_code    String
-- company_code         String

-- Manager: The manager_code is the code of the manager, the senior_manager_code is the code of its senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company.

-- Column                 Type
------------------------------
-- manager_code         String
-- senior_manager_code  String
-- lead_manager_code    String
-- company_code         String

-- Employee: The employee_code is the code of the employee, the manager_code is the code of its manager, the senior_manager_code is the code of its senior manager, the lead_manager_code is the code of its lead manager, and the company_code is the code of the working company.

-- Column                 Type
------------------------------
-- employee_code        String
-- manager_code         String
-- senior_manager_code  String
-- lead_manager_code    String
-- company_code         String

-- Solution

SELECT 
     A.COMPANY_CODE,
     A.FOUNDER,
     COUNT(DISTINCT B.LEAD_MANAGER_CODE) AS LEAD_MANAGER_COUNT,
     COUNT(DISTINCT C.SENIOR_MANAGER_CODE) AS SENIOR_MANAGER_COUNT,
     COUNT(DISTINCT D.MANAGER_CODE) AS MANAGER_COUNT,
     COUNT(DISTINCT E.EMPLOYEE_CODE) AS EMPLOYEE_COUNT
FROM 
   COMPANY A
   LEFT JOIN LEAD_MANAGER B
       ON A.COMPANY_CODE = B.COMPANY_CODE
   LEFT JOIN SENIOR_MANAGER C
       ON B.LEAD_MANAGER_CODE = C.LEAD_MANAGER_CODE
   LEFT JOIN MANAGER D
       ON C.SENIOR_MANAGER_CODE = D.SENIOR_MANAGER_CODE
   LEFT JOIN EMPLOYEE E
       ON D.MANAGER_CODE = E.MANAGER_CODE
GROUP BY
     A.COMPANY_CODE,
     A.FOUNDER
ORDER BY 
    A.COMPANY_CODE,
    A.FOUNDER;


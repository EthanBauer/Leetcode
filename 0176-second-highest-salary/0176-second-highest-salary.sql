/* Write your T-SQL query statement below */
SELECT MAX(Salary) AS SecondHighestSalary FROM Employee
WHERE Salary < (SELECT MAX(Salary) FROM EMPLOYEE)
# Write your MySQL query statement below
SELECT MAX(Salary) AS  SecondHighestSalary FROM Employee WHERE   Salary NOT IN (SELECT MAX(Salary) FROM Employee)

SELECT (SELECT DISTINCT Salary FROM Employee ORDER BY Salary DESC LIMIT 1 OFFSET 1) AS SecondHighestSalary

SELECT IFNULL(
      (SELECT DISTINCT Salary
       FROM Employee
       ORDER BY Salary DESC
        LIMIT 1 OFFSET 1),
    NULL) AS SecondHighestSalary
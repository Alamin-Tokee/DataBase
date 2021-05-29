# Write your MySQL query statement below

SELECT Email FROM (SELECT Email,COUNT(Email) AS num FROM Person GROUP BY Email) AS statistic WHERE num>1;

SELECT Email FROM Person group by Email having count(Email)>1;
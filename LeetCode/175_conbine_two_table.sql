# Write your MySQL query statement below
SELECT Person.FirstName, Person.LastName, Address.City, Address.State FROM Person NATURAL LEFT JOIN Address;

select FirstName, LastName, City, State
from Person left join Address
on Person.PersonId = Address.PersonId;

select FirstName,LastName,City,State
from Person p
left join Address a
on p.PersonId=a.PersonId
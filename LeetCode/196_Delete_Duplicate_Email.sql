DELETE FROM Person WHERE Id NOT IN (SELECT * FROM(SELECT MIN(id) FROM Person GROUP BY EMAIL) as P);

DELETE a FROM Person a, Person b WHERE a.Email = b.Email AND a.Id > b.Id ; 
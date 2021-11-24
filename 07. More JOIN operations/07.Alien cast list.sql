SELECT name
FROM casting AS c JOIN actor AS a ON a.id=c.actorid
WHERE movieid= (
SELECT id 
FROM movie 
WHERE title = 'Alien')
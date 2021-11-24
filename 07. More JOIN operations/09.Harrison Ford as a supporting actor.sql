SELECT title
FROM movie 
WHERE id IN (
SELECT movieid
FROM casting AS c JOIN actor AS a ON a.id=c.actorid
WHERE ord<>1 AND actorid= (
SELECT id 
FROM actor
WHERE name = 'Harrison Ford') )
SELECT name
FROM actor AS a 
JOIN casting AS c ON a.id=c.actorid
WHERE  name<>'Art Garfunkel' 
AND ​movieid IN(
SELECT movieid
FROM movie AS m 
JOIN casting AS c ON c.movieid=m.id
JOIN actor AS a on a.id=c.actorid
WHERE actorid=(
SELECT id
FROM actor
WHERE name = 'Art Garfunkel'))
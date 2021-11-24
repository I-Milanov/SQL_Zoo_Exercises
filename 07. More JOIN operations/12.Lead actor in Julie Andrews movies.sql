SELECT title, name AS 'leading actor'
FROM movie AS m
JOIN casting AS c ON c.movieid=m.id
JOIN actor AS a ON a.id=c.actorid
WHERE ord=1 AND movieid in(
SELECT movieid FROM casting
WHERE actorid IN (
  SELECT id FROM actor
  WHERE name='Julie Andrews'))


SELECT actors
FROM(
SELECT name AS 'actors', COUNT(ord)
FROM actor AS a 
JOIN casting AS c ON a.id=c.actorid
WHERE c.ord=1
GROUP BY name
HAVING COUNT(ord)>=15
ORDER BY name) AS x
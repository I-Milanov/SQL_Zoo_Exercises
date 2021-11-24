SELECT title, COUNT(actorid) AS 'Actors'
FROM movie AS m
JOIN casting AS c ON c.movieid=m.id
JOIN actor AS a ON a.id=c.actorid
WHERE yr=1978
GROUP BY m.title 
ORDER BY COUNT(actorid) DESC, title
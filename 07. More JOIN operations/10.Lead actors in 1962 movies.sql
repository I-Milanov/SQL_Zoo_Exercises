SELECT title, name 
FROM actor AS a 
JOIN casting AS c ON  a.id = c.actorid
JOIN movie as m ON m.id = c.movieid 
WHERE ord = 1 AND yr = 1962 ;
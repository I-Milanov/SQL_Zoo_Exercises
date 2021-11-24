SELECT continent FROM(
SELECT continent,SUM(population)
FROM world
GROUP BY continent
HAVING SUM(population)>=100000000) a
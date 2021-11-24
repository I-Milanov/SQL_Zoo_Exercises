SELECT SUM(gdp)
FROM world
WHERE continent='Africa'
GROUP BY continent
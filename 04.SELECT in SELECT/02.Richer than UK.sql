SELECT name
From world
WHERE continent='Europe'
AND gdp/population>
(SELECT gdp/population
FROM world WHERE name='United Kingdom')
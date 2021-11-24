SELECT name, continent, population 
FROM world 
WHERE continent IN 
(SELECT continent 
FROM world x 
WHERE 25000000 >= 
(SELECT MAX(population) 
FROM world y 
WHERE x.continent = y.continent));
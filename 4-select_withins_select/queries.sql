SELECT name FROM world WHERE population > (SELECT population FROM world WHERE name='Russia')

SELECT name FROM world WHERE continent = 'Europe' AND gdp/population > (SELECT gdp/population FROM world WHERE name='United Kingdom')

SELECT name, continent FROM world WHERE continent = (SELECT continent FROM world WHERE name = 'Australia') OR continent = (SELECT continent FROM world 
WHERE name = 'Argentina') ORDER BY name

SELECT name, population FROM world WHERE population > (SELECT population FROM world WHERE name = 'Canada') AND population < (SELECT population FROM world 
WHERE name = 'Poland'); 


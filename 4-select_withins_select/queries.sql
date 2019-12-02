SELECT name FROM world WHERE population > (SELECT population FROM world WHERE name='Russia')

SELECT name FROM world WHERE continent = 'Europe' AND gdp/population > (SELECT gdp/population FROM world WHERE name='United Kingdom')

SELECT name, continent FROM world WHERE continent = (SELECT continent FROM world WHERE name = 'Australia') OR continent = (SELECT continent FROM world 
WHERE name = 'Argentina') ORDER BY name

SELECT name, population FROM world WHERE population > (SELECT population FROM world WHERE name = 'Canada') AND population < (SELECT population FROM world 
WHERE name = 'Poland')

SELECT name, concat(ROUND(100*population/(SELECT population FROM world WHERE name = 'Germany')), '%') FROM world WHERE continent = 'Europe'

SELECT name FROM world WHERE gdp > ALL(SELECT gdp FROM world WHERE continent = 'Europe' AND gdp >0)

SELECT continent, name, area FROM world x WHERE area >= ALL(SELECT area FROM world y WHERE y.continent=x.continent AND population>0)

SELECT continent, name FROM world x WHERE name <= ALL (SELECT name FROM world y WHERE y.continent = x.continent)

SELECT name, continent, population FROM world WHERE continent IN (SELECT continent FROM world  w WHERE 25000000 >= (SELECT MAX(population) FROM world z WHERE w.continent = z.continent));

SELECT name, continent FROM world a WHERE population > ALL (SELECT population*3 FROM world b WHERE b.continent = a.continent AND b.name != a.name)
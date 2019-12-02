SELECT name FROM world
  WHERE population >= 200000000

SELECT name, gdp/population FROM world 
  WHERE population >= 200000000;

SELECt name, (population/1000000) FROM world 
  WHERE continent = 'South America';

  SELECt name, population FROM world 
  WHERE name IN ('France', 'Germany', 'Italy')

  SELECT name FROM world 
  WHERE name LIKE '%United%';

  SELECT name, population, area FROM world 
  WHERE area > 3000000 OR population > 250000000;
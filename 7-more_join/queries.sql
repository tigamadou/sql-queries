SELECT id, title FROM movie WHERE yr=1962

SELECT yr FROM movie WHERE title = 'Citizen Kane';

SELECT id, title, yr FROM movie  WHERE title LIKE 'Star Trek%' ORDER BY yr

SELECT id FROM actor WHERE name ='Glenn Close'

SELECT id FROM movie WHERE title = 'Casablanca'

SELECT name FROM casting JOIN actor ON actorid = id WHERE movieid = 11768

SELECT name FROM casting JOIN actor ON actorid = actor.id JOIN movie ON movieid = movie.id WHERE title = 'Alien'

SELECT title FROM casting JOIN actor ON actorid = actor.id JOIN movie ON movieid = movie.id WHERE name = 'Harrison Ford'

SELECT title FROM casting JOIN actor ON actorid = actor.id JOIN movie ON movieid = movie.id WHERE name = 'Harrison Ford' AND ord != 1

SELECT title, name FROM casting JOIN actor ON actorid = actor.id JOIN movie ON movieid = movie.id WHERE yr = 1962 AND ord = 1

SELECT yr,COUNT(title) FROM movie JOIN casting ON movie.id=movieid JOIN actor ON actorid=actor.id WHERE name='Rock Hudson' GROUP BY yr HAVING COUNT(title) > 2

SELECT title, name FROM movie JOIN casting ON (movieid = movie.id AND ord =1) JOIN actor ON (actorid = actor.id) WHERE movie.id IN (SELECT movieid FROM casting
WHERE actorid IN (SELECT id FROM actor WHERE name='Julie Andrews'))

SELECT actor.name FROM actor JOIN casting ON casting.actorid = actor.id WHERE ord = 1 GROUP BY name HAVING COUNT(*) >= 30

SELECT title, COUNT(actorid) FROM  casting JOIN actor ON actorid = actor.id JOIN movie ON movieid = movie.id WHERE yr = 1978 GROUP BY movieid, movie.title ORDER BY COUNT(name) DESC, title

SELECT DISTINCT name FROM movie JOIN casting ON (movieid = movie.id) JOIN actor ON (actorid = actor.id) WHERE movie.id IN (SELECT movieid FROM casting WHERE actorid IN (SELECT id FROM actor
WHERE name='Art Garfunkel')) AND name != 'Art Garfunkel'
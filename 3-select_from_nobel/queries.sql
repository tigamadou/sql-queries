SELECT yr, subject, winner  FROM nobel  WHERE yr = 1950

 SELECT winner FROM nobel WHERE yr = 1962 AND subject = 'Literature';

 SELECT yr,subject FROM nobel where winner ="Albert Einstein"

 SELECT winner FROM nobel WHERE subject ='Peace' AND yr >= 2000

 SELECT yr, subject, winner FROM nobel WHERE subject ='Literature' AND yr>= 1980 AND yr<= 1989

 SELECT * FROM nobel  WHERE winner = 'Theodore Roosevelt' OR winner = 'Woodrow Wilson' OR winner = 'Jimmy Carter' OR winner = 'Barack Obama'

 SELECT winner FROM nobel  WHERE winner LIKE 'John%';

 SELECT yr, subject, winner FROM nobel WHERE subject ='Physics' AND yr =1980 OR subject ='Chemistry' AND yr =1984

 SELECT yr, subject, winner FROM nobel WHERE subject NOT IN ('Chemistry', 'Medicine') AND yr = 1980

 SELECT yr, subject, winner FROM nobel WHERE subject = 'Medicine' AND yr < 1910 OR subject = 'Literature' AND yr >= 2004

 SELECT * FROM nobel WHERE winner  = 'Peter GrÜnberg'

 SELECT * FROM nobel WHERE winner= "EUGENE O\'NEILL"

 SELECT winner, yr, subject FROM nobel WHERE winner LIKE 'Sir%' ORDER BY yr DESC,winner ASC

 
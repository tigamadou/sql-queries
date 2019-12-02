SELECT yr, subject, winner  FROM nobel  WHERE yr = 1950

 SELECT winner FROM nobel WHERE yr = 1962 AND subject = 'Literature';

 SELECT yr,subject FROM nobel where winner ="Albert Einstein"

 SELECT winner FROM nobel WHERE subject ='Peace' AND yr >= 2000

 SELECT yr, subject, winner FROM nobel WHERE subject ='Literature' AND yr>= 1980 AND yr<= 1989

 SELECT * FROM nobel  WHERE winner = 'Theodore Roosevelt' OR winner = 'Woodrow Wilson' OR winner = 'Jimmy Carter' OR winner = 'Barack Obama';
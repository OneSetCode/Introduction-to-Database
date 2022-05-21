SELECT origin_city AS city
  FROM FLIGHTS
 WHERE canceled = 0
 GROUP BY origin_city
HAVING max(actual_time) < 3 * 60
 ORDER BY origin_city;

--returns 109 rows
--took 6 seconds
/*
Aberdeen SD
Abilene TX
Alpena MI
Ashland WV
Augusta GA
Barrow AK
Beaumont/Port Arthur TX
Bemidji MN
Bethel AK
Binghamton NY
Brainerd MN
Bristol/Johnson City/Kingsport TN
Butte MT
Carlsbad CA
Casper WY
Cedar City UT
Chico CA
College Station/Bryan TX
Columbia MO
Columbus GA
*/
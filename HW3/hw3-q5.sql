SELECT DISTINCT F.dest_city AS city
  FROM FLIGHTS AS F
 WHERE F.dest_city != 'Seattle WA' AND 
       F.dest_city NOT IN (
           SELECT DISTINCT dest_city
             FROM FLIGHTS
            WHERE origin_city = 'Seattle WA'
       )
AND 
       F.dest_city NOT IN (
           SELECT DISTINCT F2.dest_city AS city
             FROM FLIGHTS AS F1,
                  FLIGHTS AS F2
            WHERE F1.origin_city = 'Seattle WA' AND 
                  F1.dest_city = F2.origin_city AND 
                  F2.dest_city != 'Seattle WA' AND 
                  F2.dest_city NOT IN (
                      SELECT dest_city
                        FROM FLIGHTS
                       WHERE origin_city = 'Seattle WA'
                  )
       );

--returns 3 rows
--took 27 seconds
/*
Devils Lake ND
Hattiesburg/Laurel MS
St. Augustine FL
*/
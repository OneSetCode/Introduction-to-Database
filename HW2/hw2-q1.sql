SELECT DISTINCT F.flight_num
  FROM FLIGHTS AS F
       JOIN
       CARRIERS AS C ON F.carrier_id = C.cid
       JOIN
       WEEKDAYS AS W ON F.day_of_week_id = W.did
 WHERE F.origin_city = "Seattle WA" AND 
       F.dest_city = "Boston MA" AND 
       C.name = "Alaska Airlines Inc." AND 
       W.day_of_week = "Monday";

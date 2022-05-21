SELECT DISTINCT C.name AS carrier
  FROM FLIGHTS AS F,
       CARRIERS AS C
 WHERE F.carrier_id = C.cid AND 
       F.origin_city = 'Seattle WA' AND 
       F.dest_city = 'San Francisco CA';

--returns 4 rows
--took 0 seconds
/*
Alaska Airlines Inc.
SkyWest Airlines Inc.
United Air Lines Inc.
Virgin America
*/
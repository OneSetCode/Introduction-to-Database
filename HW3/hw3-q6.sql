SELECT DISTINCT C.name as carrier
  FROM FLIGHTS AS F,
       CARRIERS AS C
 WHERE F.carrier_id = C.cid AND 
       F.carrier_id IN (
           SELECT carrier_id
             FROM Flights
            WHERE origin_city = 'Seattle WA' AND 
                  dest_city = 'San Francisco CA'
       );

--returns 4 rows
--took 4 seconds
/*
Alaska Airlines Inc.
SkyWest Airlines Inc.
United Air Lines Inc.
Virgin America
*/
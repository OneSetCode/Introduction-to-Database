SELECT C.name AS name,
       sum(F.departure_delay) AS delay
  FROM FLIGHTS AS F
       JOIN
       CARRIERS AS C ON F.carrier_id = C.cid
 GROUP BY C.name;

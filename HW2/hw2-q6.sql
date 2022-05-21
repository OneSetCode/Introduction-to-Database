SELECT C.name AS carrier,
       max(F.price) AS max_price
  FROM FLIGHTS AS F
       JOIN
       CARRIERS AS C ON F.carrier_id = C.cid
 WHERE (F.origin_city = "Seattle WA" AND 
        F.dest_city = "New York NY") OR 
       (F.dest_city = "Seattle WA" AND 
        F.origin_city = "New York NY") 
 GROUP BY C.name;

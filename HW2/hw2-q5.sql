SELECT C.name AS name,
       avg(F.canceled) * 100 AS percentage
  FROM FLIGHTS AS F
       JOIN
       CARRIERS AS C ON F.carrier_id = C.cid
 WHERE F.origin_city = "Seattle WA"
 GROUP BY C.name
HAVING avg(F.canceled) > 0.005
 ORDER BY percentage;

SELECT DISTINCT C.name AS name
  FROM FLIGHTS AS F
       JOIN
       CARRIERS AS C ON F.carrier_id = C.cid
       JOIN
       MONTHS AS M ON F.month_id = M.mid
 GROUP BY M.month,
          F.day_of_month,
          C.name
HAVING count( * ) > 1000;

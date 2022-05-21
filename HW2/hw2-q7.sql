SELECT sum(F.capacity) AS capacity
  FROM FLIGHTS AS F
       JOIN
       MONTHS AS M ON F.month_id = M.mid
 WHERE (F.origin_city = "Seattle WA" AND 
        F.dest_city = "San Francisco CA") OR 
       (F.origin_city = "San Francisco CA" AND 
        F.dest_city = "Seattle WA") AND 
       M.month = "July" AND 
       F.day_of_month = 10;

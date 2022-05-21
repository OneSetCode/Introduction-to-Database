--Q6
SELECT L.id AS ID,
       L.fullname AS name,
       avg(C.timeout) AS avgtime
  FROM LibUser AS L
       LEFT JOIN
       Checkout AS C ON L.id = C.uid
 GROUP BY L.id, L.fullname;

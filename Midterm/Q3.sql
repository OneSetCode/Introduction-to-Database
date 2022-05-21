--Q3
SELECT C.uid AS ID,
       L.fullname AS name
  FROM Checkout AS C,
       LibUser AS L
 WHERE C.uid = L.id
 GROUP BY C.uid, L.fullname
HAVING count( * ) >= 5;

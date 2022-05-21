--Q4
SELECT C.uid AS ID,
       L.fullname AS name
  FROM Checkout AS C
       LEFT JOIN
       Book AS B ON B.isbn = C.isbn
       LEFT JOIN
       LibUser AS L ON C.uid = L.id
 GROUP BY C.uid, L.fullname
HAVING count( * ) = sum(CASE WHEN B.genre = 'romance' THEN 1 ELSE 0 END);

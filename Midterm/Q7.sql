--Q7
SELECT L.fullname AS name,
       C.uid AS ID
  FROM Checkout AS C
       LEFT JOIN
       LibUser AS L ON C.uid = L.id
       LEFT JOIN
       Book AS B ON C.isbn = B.isbn
 WHERE B.genre = 'romance' OR 
       B.genre = 'comedy' OR 
       B.genre = 'history'
 GROUP BY C.uid, L.fullname
HAVING count(DISTINCT B.genre) = 3;

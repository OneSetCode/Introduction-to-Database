--Q8
SELECT L.fullname AS name,
       C.uid AS ID
  FROM Checkout AS C
       LEFT JOIN
       LibUser AS L ON C.uid = L.id
 GROUP BY C.uid, L.fullname
HAVING count( * ) = (
                        SELECT top 1 count( * ) 
                          FROM Checkout
                         GROUP BY uid
                         ORDER BY count( * ) DESC
                    );

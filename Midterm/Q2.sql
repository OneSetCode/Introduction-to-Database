--Q2
SELECT genre,
       count( * ) AS numbooks
  FROM Book
 GROUP BY genre;

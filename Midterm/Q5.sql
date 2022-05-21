--Q5
SELECT id AS ID,
       fullname AS name
  FROM LibUser
 WHERE debt = (
                  SELECT max(debt) 
                    FROM LibUser
              );

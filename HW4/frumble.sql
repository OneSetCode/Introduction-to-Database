--Part 1--------------------------------
CREATE TABLE Frumble (
    name     VARCHAR,
    discount VARCHAR,
    month    VARCHAR,
    price    INT
);


--Part 2--------------------------------
--First, we can show a nonexistent functional dependency 'name -> discount' with the following SQL.
SELECT count(*)
  FROM Frumble AS F1,
       Frumble AS F2
 WHERE F1.name = F2.name AND 
       F1.discount != F2.discount;
--The answer is 3286, which indicates that 'name -> discount' does not hold.

--Now let's show the existing functional dependencies. First, we find a DF: 'name -> price' with the following SQL.
SELECT count(*)
  FROM Frumble AS F1,
       Frumble AS F2
 WHERE F1.name = F2.name AND 
       F1.price != F2.price;
--The answer is 0, which indicates that 'name -> price' holds.

--Then,we find another DF 'month -> discount' with the following SQL.
SELECT count(*)
  FROM Frumble AS F1,
       Frumble AS F2
 WHERE F1.month = F2.month AND 
       F1.discount != F2.discount;
--The answer is 0, which indicates that 'month -> discount' holds.

--After checking every possible relationship, we can no longer find any other functional dependencies.
--Thus, the two functional dependencies we found are 'name -> price' and 'month -> discount'.


--Part 3--------------------------------
CREATE TABLE Price (
    name  VARCHAR PRIMARY KEY,
    price INT
);

CREATE TABLE Discount (
    month    VARCHAR PRIMARY KEY,
    discount VARCHAR
);

CREATE TABLE Sales (
    name  VARCHAR REFERENCES Price,
    month VARCHAR REFERENCES Discount
);


--Part 4--------------------------------
--Load the tables
INSERT INTO Price SELECT name,
                         price
                    FROM Frumble
                   GROUP BY name;

INSERT INTO Discount SELECT month,
                            discount
                       FROM Frumble
                      GROUP BY month;
                      
INSERT INTO Sales SELECT name,
                         month
                    FROM Frumble;

--Count the tables
SELECT count( * ) 
  FROM Price;     --answer: 36

SELECT count( * ) 
  FROM Discount;  --answer: 12

SELECT count( * ) 
  FROM Sales;     --answer: 426




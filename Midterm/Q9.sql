if not exists (
    select 1
from LibUser
where id = 1234)
INSERT INTO LibUser
VALUES
    (1234, 'Ali Lee', 12.25)
else
   	UPDATE LibUser SET fullname='Ali Lee', debt = 12.25	
    WHERE id = 1234;


if not exists (
    select 1
from Book
where isbn = 1234567890123)
INSERT INTO Book
VALUES
    (1234567890123, 'Intro to DB', 'education', 'hardcover')
else
   	UPDATE Book SET title ='Intro to DB', genre = 'education', format = 'hardcover'	
    WHERE isbn = 1234567890123;



INSERT into Checkout
VALUES
    (1234, 1234567890123, 0);



if not exists (
    select 1
from Inventory
where libbranch = 'Shoreline'
    and isbn = 1234567890123)
INSERT INTO Inventory
VALUES
    ('Shoreline', 1234567890123, 0)
else
   	UPDATE Inventory SET available = 0
    WHERE libbranch = 'Shoreline'
    and isbn = 1234567890123;



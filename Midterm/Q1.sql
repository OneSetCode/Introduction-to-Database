--Q1
CREATE TABLE Book (
  isbn INTEGER PRIMARY KEY,
  title VARCHAR(50),
  genre VARCHAR(50),
  format VARCHAR(50)
);

CREATE TABLE LibUser (
  id INTEGER PRIMARY KEY,
  fullname VARCHAR(50),
  debt FLOAT
);

CREATE TABLE Inventory (
  libbranch VARCHAR(50) NOT NULL,
  isbn INTEGER NOT NULL REFERENCES Book,
  available INTEGER,
  PRIMARY KEY (libbranch, isbn)
);

CREATE TABLE Checkout (
  uid INTEGER NOT NULL,
  isbn INTEGER NOT NULL REFERENCES Book,
  timeout INTEGER,
  FOREIGN KEY (uid) REFERENCES LibUser ON DELETE CASCADE,
  PRIMARY KEY (uid, isbn)
);



INSERT INTO Book (isbn, title, genre, format) VALUES (123, 'book1', 'comedy', 'format1');
INSERT INTO Book (isbn, title, genre, format) VALUES (234, 'book2', 'comedy', 'format2');
INSERT INTO Book (isbn, title, genre, format) VALUES (345, 'book3', 'history', 'format3');
INSERT INTO Book (isbn, title, genre, format) VALUES (456, 'book3', 'history', 'format4');
INSERT INTO Book (isbn, title, genre, format) VALUES (567, 'book4', 'romance', 'format5');
INSERT INTO Book (isbn, title, genre, format) VALUES (678, 'book5', 'romance', 'format6');
INSERT INTO Book (isbn, title, genre, format) VALUES (789, 'book6', 'fiction', 'format7');



INSERT INTO Checkout (uid, isbn, timeout) VALUES (123, 345, 4);
INSERT INTO Checkout (uid, isbn, timeout) VALUES (123, 567, 0);
INSERT INTO Checkout (uid, isbn, timeout) VALUES (345, 678, 2);
INSERT INTO Checkout (uid, isbn, timeout) VALUES (234, 678, 10);
INSERT INTO Checkout (uid, isbn, timeout) VALUES (345, 567, 1);
INSERT INTO Checkout (uid, isbn, timeout) VALUES (345, 456, 5);
INSERT INTO Checkout (uid, isbn, timeout) VALUES (345, 345, 2);
INSERT INTO Checkout (uid, isbn, timeout) VALUES (345, 234, 4);
INSERT INTO Checkout (uid, isbn, timeout) VALUES (345, 123, 3);
INSERT INTO Checkout (uid, isbn, timeout) VALUES (123, 123, 6);
INSERT INTO Checkout (uid, isbn, timeout) VALUES (567, 789, 3);




INSERT INTO Inventory (libbranch, isbn, available) VALUES ('Shoreline', 456, 3);
INSERT INTO Inventory (libbranch, isbn, available) VALUES ('Shoreline', 345, 2);
INSERT INTO Inventory (libbranch, isbn, available) VALUES ('Shoreline', 234, 4);
INSERT INTO Inventory (libbranch, isbn, available) VALUES ('Shoreline', 123, 3);
INSERT INTO Inventory (libbranch, isbn, available) VALUES ('Northgate', 678, 3);
INSERT INTO Inventory (libbranch, isbn, available) VALUES ('Northgate', 567, 4);
INSERT INTO Inventory (libbranch, isbn, available) VALUES ('Northgate', 456, 1);
INSERT INTO Inventory (libbranch, isbn, available) VALUES ('Tacoma', 789, 3);
INSERT INTO Inventory (libbranch, isbn, available) VALUES ('Tacoma', 678, 5);
INSERT INTO Inventory (libbranch, isbn, available) VALUES ('Tacoma', 567, 1);
INSERT INTO Inventory (libbranch, isbn, available) VALUES ('Seatac', 789, 5);
INSERT INTO Inventory (libbranch, isbn, available) VALUES ('Seatac', 345, 4);
INSERT INTO Inventory (libbranch, isbn, available) VALUES ('Seatac', 123, 1);




INSERT INTO LibUser (id, fullname, debt) VALUES (123, 'name1', 10.0);
INSERT INTO LibUser (id, fullname, debt) VALUES (234, 'name2', 0.0);
INSERT INTO LibUser (id, fullname, debt) VALUES (345, 'name3', 0.5);
INSERT INTO LibUser (id, fullname, debt) VALUES (456, 'name4', 10.0);
INSERT INTO LibUser (id, fullname, debt) VALUES (567, 'name5', 3.0);



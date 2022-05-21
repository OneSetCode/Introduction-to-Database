--Part a
CREATE TABLE Vehicle (
    licensePlate VARCHAR PRIMARY KEY,
    year         INT,
    insuranceCo  VARCHAR REFERENCES InsuranceCo (name),
    maxLiability DOUBLE,
    ownerSSN     INT     REFERENCES Person (ssn) 
);

CREATE TABLE Car (
    licensePlate VARCHAR PRIMARY KEY,
    make         VARCHAR
);

CREATE TABLE Truck (
    licensePlate VARCHAR PRIMARY KEY,
    capacity     INT,
    driverSSN    INT     REFERENCES ProfessionalDriver (ssn) 
);

CREATE TABLE InsuranceCo (
    name  VARCHAR PRIMARY KEY,
    phone INT
);

CREATE TABLE Person (
    ssn  INT     PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE Driver (
    ssn      INT PRIMARY KEY,
    driverID INT
);

CREATE TABLE NonProfessionalDriver (
    ssn INT PRIMARY KEY
);

CREATE TABLE ProfessionalDriver (
    ssn            INT     PRIMARY KEY,
    medicalHistory VARCHAR
);

CREATE TABLE Drives (
    driverSSN    INT     REFERENCES NonProfessionalDriver (ssn),
    licensePlate VARCHAR REFERENCES Car,
    PRIMARY KEY (
        driverSSN,
        licensePlate
    )
);

--Part b
/* The foreign key statement "insuranceCo VARCHAR REFERENCES InsuranceCo (name)" in the table Vehicle represents 
the relationship "insures", because it connects the vehicles to the insurance companies in the table InsuranceCo, 
and makes sure that every vehicle only have at most one correlating insurance company but different vehicles can 
be insured by the same insurance company. */

--Part c
/* The representation of the relationship "drives" requires a new table Drives, but the relationship "operates" can 
be represented by the foreign key statement "driverSSN INT REFERENCES ProfessionalDriver (ssn) " in the table Truck. 
The difference here is because the relationship "drives" is a "many-to-many" relationship, which can't be simply 
represented by a foreign key, but the relationship "operates" is a "many-to-one" relationship, which can be perfectly
represented by a foreign key in the table Truck. */


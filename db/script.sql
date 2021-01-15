CREATE TABLE Tichete (
    ID int not null ,
    Data date,
    primary key (ID)
);

CREATE TABLE InforTichet(
    IDTichet INT NOT NULL,
    NrInmatriculare VARCHAR(255) NULL,
    OraIntrare DATETIME NULL,
    Foreign Key(IDTichet) References Tichete(ID)
);

CREATE TABLE InforParcare(
    IDLocuri INT NOT NULL,
    nrLocuriDisponibile INT NULL,
    nrMasiniInParcare INT NULL,
    Foreign Key(IDLocuri) References Tichete(ID)
);


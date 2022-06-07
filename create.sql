CREATE DATABASE BierLexikon;
USE BierLexikon;

CREATE TABLE BierLiebhaber
(
    BierLiebhaberId int NOT NULL AUTO_INCREMENT,
    Name varchar(45) NOT NULL ,
    Vorname varchar(45) NOT NULL,
    Geburtsdatum date NOT NULL ,
    PRIMARY KEY (BierLiebhaberId)
);

CREATE TABLE BierTyp
(
    BierTypId int NOT NULL AUTO_INCREMENT,
    Name varchar(45) NOT NULL,
    PRIMARY KEY (BierTypId)
);


CREATE TABLE Marken
(
    MarkenId int NOT NULL AUTO_INCREMENT,
    Name varchar(45) NOT NULL ,
    Gruendungsjahr smallint NOT NULL ,
    Standort varchar(45) NOT NULL ,
    PRIMARY KEY (MarkenId)
);

CREATE TABLE Biersorten
(
    BierstortenId int NOT NULL AUTO_INCREMENT,
    Name varchar(45) NOT NULL ,
    Fk_BierTypId int NOT NULL ,
    Fk_MarkenId int NOT NULL ,
    Veroefentlichungsjahr smallint NOT NULL ,
    Alkoholfrei bit NOT NULL ,
    Alkoholgehalt float NOT NULL ,
    PRIMARY KEY (BierstortenId),
    CONSTRAINT FK_BiersortenMarke FOREIGN KEY (FK_MarkenId) REFERENCES Marken (MarkenId),
    CONSTRAINT FK_BiersortenTyp FOREIGN KEY (FK_BierTypId) REFERENCES BierTyp (BierTypId)
);


CREATE TABLE BierFavorit
(
    BierFavoritId int NOT NULL AUTO_INCREMENT,
    BierLiebhaberId int NOT NULL ,
    BierstortenId int NOT NULL ,
    PRIMARY KEY (BierFavoritId),
    CONSTRAINT FK_BierLiebhaberFavorit FOREIGN KEY (BierLiebhaberId) REFERENCES BierLiebhaber(BierLiebhaberId),
    CONSTRAINT FK_BierFavoritSorte FOREIGN KEY (BierstortenId) REFERENCES Biersorten(BierstortenId)
);

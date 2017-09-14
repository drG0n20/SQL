DROP DATABASE IF EXISTS Przychodnia;

CREATE DATABASE Przychodnia;
USE Przychodnia;

CREATE TABLE Pacjenci(
`idpacjent` INT NOT NULL AUTO_INCREMENT,
`imie` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`nazwisko` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`PESEL` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`data_urodzenia` DATE,
`adres` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`miasto` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
PRIMARY KEY(`idpacjent`))
DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1;

CREATE TABLE Lekarze(
`idlekarze` INT NOT NULL AUTO_INCREMENT,
`imie` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`nazwisko` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`specjalizacja` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`PESEL` INT NOT NULL,
`data_urodzenia` DATE,
`adres` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`miasto` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
PRIMARY KEY(`idlekarze`))
DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1;

CREATE TABLE Wizyty(
`idwizyty` INT NOT NULL AUTO_INCREMENT,
`idpacjent` INT NOT NULL,
`idlekarze` INT NOT NULL,
`data_wizyty` DATE,
`godzina_wizyty` TIME,
PRIMARY KEY(`idwizyty`))
DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1;

CREATE TABLE Recepty(
`idrecepty` INT NOT NULL AUTO_INCREMENT,
`idpacjent` INT NOT NULL,
`idlekarze` INT NOT NULL,
`idwizyty` INT NOT NULL,
`data_wystawienia` DATE,
`godzina_wizyty` TIME,
PRIMARY KEY(`idrecepty`))
DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1;

DROP TABLE IF EXISTS  Activity;
CREATE TABLE Activity
(
`IdActivity` int NOT NULL AUTO_INCREMENT,
`Message` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`Query` VARCHAR(40) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
PRIMARY KEY(`IdActivity`))
DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1;

DROP TRIGGER IF EXISTS zapiszPacjenta;

delimiter |
CREATE TRIGGER zapiszPacjenta 
AFTER INSERT ON pacjenci 
FOR EACH ROW 
BEGIN 
INSERT INTO Activity
SET Message=(SELECT (CONCAT('Zapisano pacjenta: ', new.imie, " ", new.nazwisko, " ", new.PESEL)));
INSERT INTO Activity
SET Message=(SELECT (CONCAT('Wizyta: ', new.imie, " ", new.nazwisko, " ", data_wizyty, godzina_wizyty))
FROM wizyty JOIN pacjenci USING(idpacjent));
END
|

INSERT INTO pacjenci
SET 
idpacjent=1,
imie='Jan',
nazwisko='Kowalski',
PESEL='87050309098',
data_urodzenia ='2017-09-15',
adres='Kukulki',
miasto='Gdansk';

INSERT INTO wizyty
SET 
idwizyty=1,
idpacjent=1,
idlekarze=1,
data_wizyty='2017-01-01',
godzina_wizyty='12-12-12'

;
















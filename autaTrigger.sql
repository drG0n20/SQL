DROP TABLE IF EXISTS  Activity;
CREATE TABLE Activity
(
`IdActivity` int NOT NULL AUTO_INCREMENT,
`Message` TEXT CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`Query` TEXT CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
PRIMARY KEY(`IdActivity`))
DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1;

#DROP TRIGGER wypozyczSamochod;
#DROP TRIGGER kupAuto;

delimiter |
CREATE TRIGGER wypozyczSamochod 
AFTER INSERT ON wypozyczenia 
FOR EACH ROW 
BEGIN 
INSERT INTO Activity
SET Message=(SELECT (CONCAT('Wypożyczono auto:', marka, model )) 
FROM auta WHERE idauta = NEW.idauta);
END
|


INSERT INTO wypozyczenia
SET idklienta = 1,
idauta=1,
datawyp='2017-09-14',
datazwrotu='2017-09-15',
naleznosc=111;

#po insercie, kupilismy nowe auto, marka model, przebieg
|
CREATE TRIGGER kupAuto
AFTER INSERT ON auta
FOR EACH ROW
BEGIN
INSERT INTO Activity
SET Message=
(SELECT (CONCAT('Kupiłes auto:', new.marka, new.model, new.przebieg )));
END
|

INSERT INTO auta
SET 
marka = 'Punto',
model='Fiat',
przebieg=111,
rocznik=2015,
kolor='srebrny',
ubezpieczenie=1;





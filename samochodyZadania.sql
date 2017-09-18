USE samochody;

#1
#SELECT imie,nazwisko FROM klienci WHERE idklienta=4;

#2
#SELECT * FROM auta WHERE rocznik=2010;

#3
#SELECT * FROM auta WHERE marka='Ford';

#4
#SELECT * FROM auta WHERE idauta>=2 AND idauta<=4;
#SELECT * FROM auta WHERE idauta BETWEEN 2 AND 4;

#5
#SELECT * FROM klienci WHERE miasto='Katowice' AND adres LIKE '%Rolna%';

#6
#SELECT marka, model FROM auta ORDER BY ubezpieczenie DESC LIMIT 1;

#7
#SELECT idauta, marka, model
/*
SELECT idauta, marka, model, datawyp 
FROM auta 
JOIN wypozyczenia USING(idauta); */

#8 Imiona i nazwiska osób, które wypożyczyły kiedykolwiek samochód nr 1.
/*
SELECT imie, nazwisko
FROM wypozyczenia
JOIN klienci USING(idklienta)
JOIN auta USING(idauta) 
WHERE idauta=1; */

#9 Jakie auta (marka, model) kiedykolwiek wypożyczyła u nas osoba nr 4?
/*
SELECT marka, model
FROM wypozyczenia
JOIN klienci USING(idklienta)
JOIN auta USING(idauta) 
WHERE idklienta=4; */
 
#10 Jakie auta (marka, model) kiedykolwiek wypożyczyła u nas osoba o nazwisku "Pastewniak"?
/*
SELECT marka, model
FROM wypozyczenia
JOIN klienci USING(idklienta)
JOIN auta USING(idauta) 
WHERE nazwisko='Pastewniak'; */








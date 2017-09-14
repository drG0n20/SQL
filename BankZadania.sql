USE BANK_v2;
#1
#SELECT * FROM pracownicy;

#2
#SELECT * FROM stanowiska;

#3
#SELECT * FROM dzialy;

#4
#SELECT imie, nazwisko, pensja FROM pracownicy;

#5
#SELECT imie, nazwisko, pensja+dodatki FROM pracownicy;

#6
#SELECT imie, nazwisko, pensja+dodatki AS 'Wynagrodzenie całkowite' FROM pracownicy;

#7
/*
SELECT imie, nazwisko, pensja/30 AS 'Dniówka', pensja/4 AS 'Tygodniowka', 
pensja AS 'Pensja miesieczna', pensja*12 AS 'Pensja roczna'
FROM pracownicy;*/

#8 
#SELECT imie, nazwisko FROM pracownicy WHERE nazwisko LIKE 'M%'; 

#9
/*
SELECT imie, nazwisko FROM pracownicy 
JOIN dzialy USING(ID_dzialu) WHERE nazwa='logistyka' OR nazwa='informatyka'; */

#10
/*
SELECT p.imie AS 'Imie pracownika', p.nazwisko AS 'Nazwisko pracownika', s.imie AS 'Imie szefa', s.nazwisko AS 'Nazwisko szefa'
FROM pracownicy s 
JOIN pracownicy p ON s.ID_pracownika = p.ID_przelozonego
WHERE s.imie='Leopold' OR s.nazwisko='Banko'; */

#11
#Pokaż wszystkich pracowników którzy już nie pracują w banku. Wyniki przedstaw w postaci
#kolumn: Imię i nazwisko / Dział / Data Zakończenia Pracy.

SELECT imie, nazwisko, s.nazwa, d.nazwa, dataZatrudnienia FROM pracownicy 
LEFT JOIN stanowiska s USING(ID_stanowiska)
 LEFT JOIN dzialy d USING(ID_dzialu); 








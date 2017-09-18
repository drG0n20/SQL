use gwiazdy;

/*****************
 ***C*Z*Ę*S*C*1***
 *****************/
#1
#SELECT Imie,Nazwisko FROM aktor;

#2
#SELECT Tytul FROM film WHERE liczbaAktorow>10;

#3
#SELECT Tytul, Czas, wyprodukowano FROM film WHERE Premiera LIKE '%2010%' OR Gatunek='sensacyjny';

#4
/*
SELECT Imie,Nazwisko, Plec 
FROM  gwiazdyw
JOIN aktor ON NazwiskoGwiazdy = Nazwisko
WHERE plec='m' and TytulFilmu LIKE 'Przeminelo%'; */

#5
#SELECT Tytul ,Czas FROM film WHERE CZAS > (SELECT Czas FROM film WHERE Tytul='Przeminelo z wiatrem');

#6
#SELECT Tytul, liczbaAktorow FROM film ORDER BY liczbaAktorow DESC LIMIT 1;

#7
#SELECT ROUND(AVG(Czas),1) FROM film;

#8
#SELECT Tytul, Czas FROM film ORDER BY Czas DESC;

#9
#10

/*****************
 ***C*Z*Ę*S*C*2***
 *****************/
 
 #1
 #SELECT Tytul FROM film WHERE Tytul LIKE '%Harry%';
 
 #2
 /*
 SELECT Tytul,wyprodukowano FROM film WHERE nazwaStudia='Hollywood' 
 AND (wyprodukowano< 1990 OR wyprodukowano>2000 ); */

#3
/*
 SELECT Tytul,Nazwisko, DataUrodzenia 
 FROM gwiazdyw
 right JOIN film ON Tytul=TytulFilmu
 left JOIN aktor ON Nazwisko=NazwiskoGwiazdy;  */
 
 #4
 # SELECT ImieGwiazdy,NazwiskoGwiazdy,TytulFilmu FROM gwiazdyw where TytulFilmu!='Przeminelo z wiatrem';
 
 #5 Wypisz datę premiery oraz datę urodzenia dyrektora produkcji wszystkich filmów
 
 
 
 
 
 




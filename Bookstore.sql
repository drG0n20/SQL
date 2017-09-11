DROP DATABASE IF EXISTS Bookstore;

CREATE DATABASE Bookstore;
USE Bookstore;

CREATE TABLE Books(
`IdBook` INT NOT NULL AUTO_INCREMENT,
`AuthorName` TEXT CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`AuthorSurname` TEXT CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`Title` TEXT CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`Price` FLOAT,
PRIMARY KEY(`Idbook`))
DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1;

CREATE TABLE Customers(
`IdCustomer` INT NOT NULL AUTO_INCREMENT,
`customerName` TEXT CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`customerSurname` TEXT CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
`town` TEXT CHARACTER SET utf8 COLLATE utf8_polish_ci,  
PRIMARY KEY(`IdCustomer`))
DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1;

CREATE TABLE Orders(
`IdOrder` INT NOT NULL AUTO_INCREMENT,
`IdCustomer` INT NOT NULL,
`IdBook` INT NOT NULL,
`orderDate` DATE,
`Status` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
PRIMARY KEY(`IdOrder`))
DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci AUTO_INCREMENT=1;

INSERT INTO Books(AuthorName, AuthorSurname, Title, Price)
VALUES 
('Jan', 'Michalak', 'Zaawansowane programowanie w PHP', 47.29),
('Andrzej', 'Krzawczyk', 'Windows 10 PL. Zaawansowana administracja systemem', 49.99),
('Paweł', 'Jakubowski', 'HTML5. Tworzenie witryn', 53.65),
('Tomasz', 'Kowalski', 'Urządzenia techniki komputerowej', 34.15),
('Łukasz', 'Pasternak', 'Java: Tworzenie nowoczesnych stron WWW', 29.99);

INSERT INTO Customers(customerName, customerSurname, town)
VALUES
('Łukasz', 'Lewandowski', 'Poznań'),
('Jan', 'Nowak', 'Katowice'),
('Maciej', 'Wójcik', 'Bydgoszcz'), 
('Agnieszka', 'Jankowska', 'Lublin'),
('Tomasz', 'Mazur', 'Jelenia Góra'),
('Michał', 'Zieliński', 'Kraków'),
('Artur', 'Rutkowski', 'Kielce'),
('Mateusz', 'Skorupa', 'Gdańsk'),
('Jerzy', 'Rutkowski', 'Włóżmitu'),
('Anna', 'Karenna', 'Tumidaj');

INSERT INTO Orders(IdCustomer, IdBook, orderDate, Status )
VALUES
(2,4,'2017-10-08','Oczekiwanie'),
(7,1,'2017-09-05','Wysłano'),
(9,1,'2017-10-11','Wysłano'),
(2,2,'2017-10-15','Oczekiwanie'),
(3,2,'2017-10-20','Wysłano'),
(4,3,'2017-08-14','Wysłano'),
(8,1,'2017-08-19','Wysłano'),
(3,1,'2017-11-19','Wysłano'),
(9,2,'2017-12-28','Oczekiwanie');

#SELECT * FROM Books ORDER BY Title DESC;
#SELECT * FROM Books ORDER BY Price DESC;
#SELECT * FROM Orders WHERE Status= 'Wysłano';
#SELECT * FROM Customers WHERE customerSurname='Rutkowski';
#SELECT * FROM Books WHERE Title LIKE '%PHP%';
#SELECT * FROM Orders ORDER BY orderDate ASC;

#1. Wyjmij dla wszystkich zamówień: imię, nazwisko klienta zamawiającego, id zamówienia oraz datę zamówienia.

/*
SELECT o.IdCustomer, c.customerName, c.customerSurname, o.orderDate
FROM Orders AS o, Customers AS c
WHERE o.IdCustomer = c.IdCustomer */

#2. Wyjmij imię, nazwisko klientów, którzy kiedykolwiek zamówili książkę nr 2.

/*
SELECT c.customerName, c.customerSurname
FROM Orders AS o, Customers AS c
WHERE o.IdBook = 2 AND c.IdCustomer = o.IdCustomer; */



/*
SELECT b.AuthorName, b.AuthorSurname, b.Title
FROM Customers AS c, Books AS b, Orders AS o 
WHERE c.customerName='Jan' AND 
c.customerSurname='Nowak' AND
c.IdCustomer = o.IdCustomer AND
O.IdBook = b.IdBook; */


SELECT c.customerName, c.customerSurname, o.IdCustomer, o.orderDate, o.Status, b.Title
FROM Customers AS c, Books AS b, Orders AS o
WHERE 
c.customerSurname='Rutkowski' AND
c.IdCustomer = o.IdCustomer AND
O.IdBook = b.IdBook
ORDER BY
O.orderDate ASC;








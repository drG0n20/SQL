USE Bookstore;

#UPDATE Customers SET CustomerSurname='Psikuta' WHERE IdCustomer=4;
#SELECT * FROM Customers WHERE IdCustomer='4';

#UPDATE Customers SET IdCustomer='12' WHERE IdCustomer='3';

#SELECT * FROM Customers;
#aktualizacja zapytan hurtem
#UPDATE Books SET Price = ROUND(Price*1.1,2);

#SELECT * FROM Books ORDER BY Price DESC LIMIT 1;

#UPDATE Books SET Price = (Price-10) ORDER BY Price DESC LIMIT 1;

#SELECT * FROM Books WHERE Price = (SELECT MAX(Price) FROM Books);   

#UPDATE Customers SET CustomerName='Joanna', CustomerSurname='Dostojewska' WHERE IdCustomer=10;

#SELECT * FROM Customers;

#UPDATE Orders Set Status='Wysłano' WHERE IdOrder='4' OR IdOrder='5';

#SELECT * FROM Orders WHERE IdOrder='4' OR IdOrder='5';

/*
INSERT INTO Customers(customerName, customerSurname, town)
VALUES
('Franciszek', 'Janowski', 'Chorzów'); */

#SELECT * FROM Customers WHERE CustomerName='Artur' AND CustomerSurname='Rutkowski';
#SELECT * FROM Books WHERE Title LIKE '%HTML5%';

/*
INSERT INTO Orders(IdCustomer, IdBook, Status )
VALUES
(7,3,'Oczekiwanie'); */

#UPDATE Orders SET orderDate='2017-09-12'  WHERE IdOrder='10';

/*
INSERT INTO Books
VALUES 
( NULL, '','Grębosz', 'SymfoniaC++', NULL);  */


#SELECT * FROM Books;









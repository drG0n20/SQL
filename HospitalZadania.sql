USE Hospital;

#1
#SELECT Name FROM nurse WHERE Registered=0;
#2
#SELECT Name,Position FROM nurse WHERE Position='Head Nurse';
#3

/*
SELECT d.Name AS 'Departament name', p.Name AS 'Physician Name' FROM Department d,
physician p WHERE d.head = p.EmployeeID; */
#4
/*
SELECT COUNT(DISTINCT patient) AS 'More than 1 visit' from appointment;  */
#5
#SELECT RoomNumber, BlockFloor AS 'Floor' FROM room WHERE RoomNumber=212;
#6
#SELECT COUNT(RoomNumber) AS 'Free Rooms' FROM room WHERE Unavailable=0;
#7
#SELECT COUNT(RoomNumber) AS 'Occupied Rooms' FROM room WHERE Unavailable=1;

#8
/*
SELECT p.name AS 'Physician', d.name AS 'Department' FROM physician p
JOIN affiliated_with  a ON p.EmployeeID = a.physician 
JOIN department d ON a.department=d.DepartmentID;  */

##druga opcja: ##
/*
SELECT p.name AS 'Physician', d.name AS 'Department' FROM physician p, department d, affiliated_with a
WHERE p.EmployeeID = a.physician
AND a.department=d.DepartmentID; */

#9
/*
SELECT p.name AS'Phisician', c.name AS 'Treatment'
FROM physician p, procedures c, trained_in t 
WHERE t.physician=p.EmployeeID AND t.treatment=c.code; */
##LUB##
/*
SELECT p.name AS'Phisician', c.name AS 'Treatment'
FROM  trained_in t JOIN physician p ON t.physician=p.EmployeeID 
JOIN  procedures c ON t.treatment=c.code; */
 
#10
/*
SELECT p.name AS'Phisician', p.position, d.name AS 'Department'
FROM physician p 
JOIN affiliated_with a ON a.Physician = p.EmployeeID 
JOIN Department d ON a.Department = d.DepartmentID
WHERE PrimaryAffiliation=false; */
##LUB##
/*
SELECT name AS'Phisician'
FROM physician
JOIN affiliated_with ON Physician = EmployeeID WHERE PrimaryAffiliation=false; */

#11
/*
SELECT p.name AS'Phisician', p.position AS 'Designation'
FROM physician p 
LEFT JOIN trained_in t ON t.Physician = p.EmployeeID WHERE treatment IS null ORDER BY employeeID;  */

#12
/*
SELECT COUNT(DISTINCT patient) AS'Patient No.'
FROM appointment 
WHERE ExaminationRoom='C'; */

#13
/*
SELECT DISTINCT(name) AS'Nurse Name'
FROM nurse JOIN appointment ON PrepNurse = EmployeeID; */
/*
SELECT n.name AS'Nurse Name', a.ExaminationRoom AS 'Room No.'
FROM nurse n 
JOIN appointment a ON a.PrepNurse = n.EmployeeID; */

#14
/*
SELECT t.name AS 'Patient name', n.name AS 'Nurse', 
p.name AS 'Physician', a.ExaminationRoom AS 'Room No.', a.Start 
FROM patient t 
JOIN appointment a ON a.patient = t.ssn
JOIN nurse n ON a.PrepNurse = n.EmployeeID 
JOIN physician p ON p.EmployeeID = a.Physician 
WHERE a.start='2008-04-25 10:00:00'; */

#15
/*
SELECT t.name AS 'Patient', p.name AS 'Physician', m.name AS 'Medicine' 
FROM Patient t
JOIN prescribes s ON s.patient=t.ssn 
JOIN Physician p ON s.physician = p.employeeID 
JOIN medication m ON s.medication=m.code WHERE s.appointment IS NULL; */

#16
/*
SELECT BlockCode as'Block', COUNT(*) AS'No Room' 
FROM room 
WHERE Unavailable=0 
GROUP BY BlockCode
ORDER BY BlockCode;  */

#17
/*
SELECT BlockFloor as'Floor', COUNT(*) AS'No Rooms' 
FROM room 
WHERE Unavailable=0 
GROUP BY BlockFloor
ORDER BY BlockFloor;  */

#18
/*
SELECT BlockFloor as'Floor',BlockCode as'Block', COUNT(*) AS'No Rooms' 
FROM room 
WHERE Unavailable=0 
GROUP BY BlockFloor, BlockCode
ORDER BY BlockFloor, BlockCode;  */

#19
/*
SELECT BlockFloor as'Floor',BlockCode as'Block', COUNT(*) AS'No Rooms' 
FROM room 
WHERE Unavailable=1 
GROUP BY BlockFloor, BlockCode
ORDER BY BlockFloor, BlockCode; */

#20
/*
SELECT BlockFloor AS 'Floor', COUNT(*) AS 'Rooms No.'
FROM room
WHERE Unavailable=0 GROUP BY BlockFloor  HAVING COUNT(*)=
(SELECT MAX(liczba) AS 'Highest' FROM (
SELECT BlockFloor, COUNT(*) AS 'liczba' FROM room 
WHERE Unavailable=0 
GROUP BY BlockFloor) AS ZZZ) */

/*
SELECT MAX(liczba), yy AS 'Highest' FROM (
SELECT BlockFloor AS yy, COUNT(*) AS 
liczba FROM room 
WHERE Unavailable=0 
GROUP BY BlockFloor) AS ZZZ */

/*
SELECT BlockFloor AS 'Floor',
COUNT(*) AS 'No Rooms '  FROM room WHERE
Unavailable=0 GROUP BY BlockFloor ORDER BY BlockFloor LIMIT 1; */










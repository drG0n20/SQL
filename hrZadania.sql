#1
/*
SELECT e.first_name, e.last_name, e.department_id, d.department_name
FROM employees e LEFT JOIN departments d ON e.department_id = d.department_id; */

#2
/*
SELECT e.first_name, e.last_name, d.department_name, l.city, l.state_province
FROM employees e 
LEFT JOIN departments d ON d.department_id = e.department_id
LEFT JOIN locations l ON d.location_id = l.location_id; */

#4
/*
SELECT e.first_name, e.last_name, e.department_id, d.department_name
FROM employees e LEFT JOIN departments d ON e.department_id = d.department_id 
WHERE e.department_id=40 OR e.department_id=80; */

#5
/*
SELECT e.first_name, e.last_name, d.department_name, l.city, l.state_province
FROM employees e 
LEFT JOIN departments d ON d.department_id = e.department_id
LEFT JOIN locations l ON d.location_id = l.location_id 
WHERE e.first_name LIKE '%Z%'; */

#6
/*
SELECT e.first_name, e.last_name, e.department_id, d.department_name
FROM employees e RIGHT JOIN departments d ON e.department_id = d.department_id; */

#7
/*
SELECT first_name, last_name, salary FROM employees 
WHERE salary < (SELECT salary FROM employees WHERE employee_id=182); */
/*
SELECT e.first_name, e.last_name, e.salary FROM employees e 
JOIN  employees ee
ON e.salary < ee.salary WHERE ee.employee_id=182; */

#8
/*
SELECT e.first_name AS 'Pracownik', m.first_name AS 'Szef' FROM employees e
JOIN employees m ON e.manager_id = m.employee_id; */

#13
/*
SELECT j.job_title, d.department_name, e.first_name, e.last_name, jh.start_date
FROM job_history jh 
JOIN jobs j USING(job_id)
JOIN departments d USING(department_id)
JOIN employees e USING(employee_id)
WHERE jh.start_date >='1993-01-01' AND jh.start_date<='1997-08-31'; */

#14
/*
SELECT country_name, city, department_name
FROM departments
JOIN locations USING(location_id)
JOIN countries USING(country_id); */

#15
/*
SELECT department_name, first_name, last_name
FROM departments d
JOIN employees e ON (d.manager_ID = e.employee_ID); */

#16
/*
SELECT country_name, city, COUNT(department_id) AS 'Ilosc departamentow' 
FROM countries 
JOIN locations USING(country_id)
JOIN departments USING(location_id)
WHERE department_id IN (SELECT department_id FROM employees 
GROUP BY department_id HAVING COUNT(department_id)>=2 ) GROUP BY country_name, city; */

#17 Wypisz nazwę wydziału, dane kierownika i miasto
/*
SELECT department_name, first_name,last_name, city
FROM departments
JOIN employees USING(manager_id)
JOIN locations USING(location_id); */

#18
#Wyświetl dane pracownika, wynagrodzenie dla każdego pracownika pracującego w Londynie
/*
SELECT e.first_name, e.last_name, e.salary, l.location_id 
FROM  employees e
JOIN  locations l ON  e.employee_id = l.location_id 
WHERE city='Londyn';  */


















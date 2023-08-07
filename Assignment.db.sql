--Q1
SELECT * FROM employee WHERE id in ( SELECT  employee_id FROM awards);
--Q2
SELECT * FROM employee WHERE id NOT in ( SELECT employee_id FROM awards  ) ;
--Q3
SELECT * FROM employee WHERE role = "Developer" AND salary > (SELECT SUM(salary) FROM employee WHERE role = "Manager");
--Q4
SELECT * FROM employee WHERE role = "Developer" AND salary > (SELECT min(salary) FROM employee WHERE role = "Manager")
--Q5 
SELECT * FROM employee WHERE salary > (select avg(salary) from employee where role = "Developer" or "Manager");



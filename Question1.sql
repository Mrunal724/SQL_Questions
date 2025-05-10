CREATE TABLE employees(
id int PRIMARY KEY,
name varchar(50),
department varchar(50),
salary int
);

INSERT into employees(id, name, department, salary) values
(1, "Anjali", "HR", 50000),
(2, "Ramesh", "IT", 65000),
(3, "Priya", "HR", 70000),
(4, "Aryan", "IT", 80000),
(5, "Ritu", "Finance", 60000);

SELECT * FROM employees;

SELECT id, name FROM employees WHERE department="HR";
SELECT id,  name, salary FROM employees WHERE salary>"60000";

SELECT department, avg(salary) AS avg_salary
FROM employees GROUP BY department;

SELECT * from employees
WHERE 
salary = (SELECT max(salary) from employees);

/* Alternative approach */

SELECT * 
FROM employees 
ORDER BY salary DESC
LIMIT 1;


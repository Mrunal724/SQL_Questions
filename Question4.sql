-- 3. Aggregate Functions (MAX, MIN, AVG, COUNT, SUM) + GROUP BY
-- Questions:
-- Q3.1: Find the maximum salary among all employees.
-- Q3.2: Count the number of employees in each department.
-- Q3.3: Find the average salary of employees in each department.
-- Q3.4: Show the total salary paid to employees in the IT department (DeptID = 1).
-- Q3.5: Find departments with more than 1 employee.

CREATE TABLE Employees (
  EmpID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Salary INT DEFAULT 30000,
  DeptID INT,
  JoinDate DATE
);

INSERT INTO Employees (EmpID, Name, Salary, DeptID, JoinDate) VALUES
(101, 'Alice', 60000, 1, '2019-03-01'),
(102, 'Bob', 50000, 2, '2020-07-15'),
(103, 'Charlie', 55000, 1, '2021-01-20'),
(104, 'David', 45000, 3, '2021-05-10'),
(105, 'Eve', 70000, 2, '2018-11-25'),
(106, 'Frank', 48000, 1, '2022-02-11'),
(107, 'Grace', 51000, 2, '2020-06-08'),
(108, 'Hank', 65000, 3, '2019-09-15'),
(109, 'Ivy', 47000, 1, '2021-03-22'),
(110, 'Jack', 43000, 2, '2023-01-01'),
(111, 'Karen', 59000, 3, '2020-10-20'),
(112, 'Leo', 52000, 1, '2021-12-12'),
(113, 'Mona', 54000, 2, '2022-07-07'),
(114, 'Nina', 62000, 3, '2018-05-18'),
(115, 'Oscar', 40000, 1, '2019-11-11'),
(116, 'Paul', 46000, 2, '2020-04-24'),
(117, 'Queen', 61000, 3, '2023-03-03'),
(118, 'Rob', 44000, 1, '2020-08-08'),
(119, 'Sara', 58000, 2, '2021-09-09'),
(120, 'Tom', 45000, 3, '2019-02-14'),
(121, 'Uma', 49000, 1, '2020-10-05'),
(122, 'Vikram', 63000, 2, '2019-12-12'),
(123, 'Wendy', 47000, 3, '2021-04-04'),
(124, 'Xavier', 66000, 1, '2022-01-01'),
(125, 'Yara', 53000, 2, '2020-06-06'),
(126, 'Zack', 56000, 3, '2021-05-15'),
(127, 'Arjun', 43000, 1, '2023-01-15'),
(128, 'Bhavna', 55000, 2, '2019-03-03'),
(129, 'Chetan', 48000, 3, '2021-07-07'),
(130, 'Deepa', 69000, 1, '2018-10-10');

select max(salary) from Employees;
select name from Employees where salary=70000;

select Name 
from Employees 
where Salary = (select max(Salary) From Employees);

SELECT DeptID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DeptID;


SELECT DeptID, avg(salary)
FROM Employees
GROUP BY DeptID;

SELECT sum(Salary) from Employees
where DeptID = 1;

SELECT DeptID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DeptID
HAVING COUNT(*) > 1;


-- 2. Clauses (WHERE, SELECT, BETWEEN, IN, NOT IN, LIMIT, ORDER BY)
-- Questions:
-- Q2.1: Retrieve all employee names from the Employees table.
-- Q2.2: Get all employees with a salary between ₹45,000 and ₹60,000.
-- Q2.3: List employees whose DeptID is either 1 or 2.
-- Q2.4: Fetch the top 3 highest-paid employees.
-- Q2.5: Order employees by their name in descending order.

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


select Name, Salary
from Employees
where Salary BETWEEN 45000 and 60000;

select name, DeptID
from Employees
where DeptID IN(1,2);

select name , salary 
from Employees
ORDER BY salary desc 
LIMIT 3;

select * from Employees ORDER BY name desc;

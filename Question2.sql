
-- 1. Create Table + Constraints
-- Questions:
-- Q1.1: Create a table called Departments with the following columns:
-- •	DeptID (Primary Key)
-- •	DeptName (Unique, Not Null)
-- Q1.2: Create a table Employees with the following columns:
-- •	EmpID (Primary Key)
-- •	Name (Not Null)
-- •	Salary (Default value: 30000)
-- •	DeptID (Foreign Key referencing Departments table)
-- •	JoinDate (Date type)
-- Q1.3: Add a UNIQUE constraint to the Email column in the Employees table.
-- Q1.4: Add a CHECK constraint to ensure that Age in the Employees table is greater than 18.
-- Q1.5: Insert 3 sample rows into the Departments and Employees tables.
-- Sample Data:Departments Table:
-- DeptID	DeptName
-- 1	IT
-- 2	HR
-- 3	Finance
-- Employees Table:
-- EmpID	Name	Salary	DeptID	JoinDate
-- 101	Alice	60000	1	2019-03-01
-- 102	Bob	50000	2	2020-07-15
-- 103	Charlie	55000	1	2021-01-20
-- 104	David	45000	3	2021-05-10
-- 105	Eve	70000	2	2018-11-25

-- ANSWERS


create table Departments(
DeptID int primary key,
DeptName varchar(50) Unique not null
);
CREATE table Employees(
EmpId int primary key,
Name varchar(50) not null,
DeptID int,
Salary int default 30000,
JoinDate varchar(15),
FOREIGN key (DeptID) references Departments(DeptID)
);
ALTER TABLE Employees
ADD column Email varchar(100) UNIQUE;
ALTER TABLE Employees
ADD column Age int check (Age > 18);
insert into Departments
(DeptID, DeptName)
values
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');
insert into Employees
(EmpID, Name, Salary, DeptID, JoinDate)
values
(101, 'Alice', 60000, 1, '2019-03-01'),
(102, 'Bob', 50000, 2, '2020-07-15'),
(103, 'Charlie', 55000,, '2021-05-10'),
(105, 'Eve', 70000, 2, '2018-11-25');

select * from Employees;
select * from Departments ORDER BY DeptID asc;

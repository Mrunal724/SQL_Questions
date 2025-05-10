-- 4. Table Operations (ALTER, DROP, RENAME, TRUNCATE)
-- Questions:
-- Q4.1: Add a Mobile column to the Employees table.
-- Q4.2: Rename the DeptName column to DepartmentName in the Departments table.
-- Q4.3: Change the data type of the Salary column in the Employees table to BIGINT.
-- Q4.4: Remove the JoinDate column from the Employees table.
-- Q4.5: Truncate the Projects table to remove all rows.

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO Departments (DeptID, DeptName) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Salary INT DEFAULT 30000,
    DeptID INT,
    JoinDate DATE,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
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
(120, 'Tom', 45000, 3, '2019-02-14');

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    EmpID INT,
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID)
);

INSERT INTO Projects (ProjectID, ProjectName, EmpID) VALUES
(1, 'Inventory System', 101),
(2, 'HR Portal', 102),
(3, 'Finance Dashboard', 103),
(4, 'Recruitment App', 105),
(5, 'Data Analysis Tool', 106);

alter table Employees
ADD COLUMN Mobile double UNIQUE;

alter table Departments
CHANGE column DeptName DepartmentName varchar(50);

alter table Employees
MODIFY Salary bigint;

alter table Employees
drop column JoinDate;

TRUNCATE TABLE Projects;

select * from Employees;




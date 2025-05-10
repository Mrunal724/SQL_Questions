-- 5. Joins (INNER, LEFT, RIGHT, FULL, UNION, SELF JOIN)
-- Questions:
-- Q5.1: Display employee names with their department names using an INNER JOIN.
-- Q5.2: Get a list of all employees, even if they don’t have a department assigned (use LEFT JOIN).
-- Q5.3: Show all departments, including those without employees (use RIGHT JOIN).
-- Q5.4: Find all projects and their employees, using a FULL JOIN.
-- Q5.5: Use a SELF JOIN to find employees who share the same department.

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO Departments (DeptID, DeptName) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');


CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Salary INT DEFAULT 30000,
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

INSERT INTO Employees (EmpID, Name, Salary, DeptID) VALUES
(201, 'Aarav Mehta', 65000, 1),
(202, 'Diya Patel', 58000, 2),
(203, 'Kabir Verma', 72000, 1),
(204, 'Ishita Sharma', 55000, 3),
(205, 'Rohan Singh', 61000, 2),
(206, 'Sneha Iyer', 50000, 3),
(207, 'Ananya Rao', 64000, 4),
(208, 'Vivaan Joshi', 70000, 1),
(209, 'Priya Kapoor', 62000, NULL), -- No department
(210, 'Ayaan Gupta', 45000, 3),
(211, 'Meera Nair', 48000, 4),
(212, 'Dev Mishra', 57000, NULL),   -- No department
(213, 'Simran Kaur', 59000, 1),
(214, 'Yash Saxena', 52000, 2),
(215, 'Ira Bansal', 47000, 4),
(216, 'Rehan Das', 53000, 2),
(217, 'Kavya Desai', 56000, 1),
(218, 'Aditi Malhotra', 51000, 3),
(219, 'Arjun Reddy', 60000, 2),
(220, 'Nisha Jain', 49000, NULL);   -- No department


CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    EmpID INT,
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID)
);

INSERT INTO Projects (ProjectID, ProjectName, EmpID) VALUES
(1, 'E-Commerce Platform', 201),
(2, 'Payroll System', 202),
(3, 'CRM Tool', 204),
(4, 'Inventory App', 207),
(5, 'Recruitment System', 213),
(6, 'Finance Audit App', 210),
(7, 'Marketing Dashboard', 211),
(8, 'Support Portal', NULL); -- Project with no employee


SELECT EmpId, Name, DeptName 
from Employees AS a
INNER JOIN 
Departments AS b
ON 
a.DeptID = b.DeptID;

SELECT EmpID, Name from Employees as a 
left join 
Departments AS b 
ON 
a.DeptID = b.DeptID;

SELECT DeptName, name from Departments as a 
RIGHT JOIN 
Employees as B
ON 
a.DeptID = b.DeptID
ORDER BY DeptName asc;

SELECT p.ProjectName, e.Name AS EmployeeName
FROM Projects p
LEFT JOIN Employees e ON p.EmpID = e.EmpID
UNION
SELECT p.ProjectName, e.Name AS EmployeeName
FROM Projects p
RIGHT JOIN Employees e ON p.EmpID = e.EmpID;

SELECT Name, DeptName From Employees 
join Departments 
ON Employees.DeptID = Departments.DeptID;


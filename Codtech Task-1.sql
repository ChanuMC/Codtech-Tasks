/* =====================================================
   TASK 1 : JOINS PRACTICE
   Objective:
   Demonstrate INNER, LEFT, RIGHT and FULL JOIN operations
   between Employees and Departments tables.
   ===================================================== */
/* Create Department Table */
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

/* Create Employee Table */
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY (dept_id)
    REFERENCES Departments(dept_id)
);

/* Insert Department Records */
INSERT INTO Departments VALUES
(1,'HR'),
(2,'Finance'),
(3,'IT'),
(4,'Marketing');

/* Insert Employee Records */
INSERT INTO Employees VALUES
(101,'John',50000,1),
(102,'Emma',60000,2),
(103,'Michael',70000,3),
(104,'Sophia',55000,NULL);

/* =====================================================
   INNER JOIN
   Returns only matching records from both tables
   ===================================================== */

SELECT
    e.emp_id,
    e.emp_name,
    d.dept_name
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id;

/* =====================================================
   LEFT JOIN
   Returns all employees and matching departments
   ===================================================== */

SELECT
    e.emp_id,
    e.emp_name,
    d.dept_name
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id = d.dept_id;

/* =====================================================
   RIGHT JOIN
   Returns all departments and matching employees
   ===================================================== */

SELECT
    e.emp_name,
    d.dept_name
FROM Employees e
RIGHT JOIN Departments d
ON e.dept_id = d.dept_id;

/* =====================================================
   FULL OUTER JOIN
   MySQL does not support FULL JOIN directly.
   UNION of LEFT and RIGHT JOIN is used.
   ===================================================== */

SELECT
    e.emp_name,
    d.dept_name
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id = d.dept_id

UNION

SELECT
    e.emp_name,
    d.dept_name
FROM Employees e
RIGHT JOIN Departments d
ON e.dept_id = d.dept_id;
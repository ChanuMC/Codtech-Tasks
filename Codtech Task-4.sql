/* =====================================================
CODTECH SQL INTERNSHIP

TASK 4 : DATABASE BACKUP AND RECOVERY

Objective:
Demonstrate how to create a PostgreSQL database
backup and restore it in case of failure.

Tools Used:

* PostgreSQL
* pgAdmin / psql
* SQL

===================================================== */

---

## -- STEP 1 : CREATE DATABASE

CREATE DATABASE companydb;

---

## -- STEP 2 : CONNECT TO DATABASE

-- In psql:
-- \c companydb

---

## -- STEP 3 : CREATE EMPLOYEES TABLE

CREATE TABLE employees (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2)
);

---

## -- STEP 4 : INSERT SAMPLE DATA

INSERT INTO employees VALUES
(101,'John','HR',50000),
(102,'Emma','Finance',60000),
(103,'Michael','IT',70000),
(104,'Sophia','Marketing',55000);

---

## -- STEP 5 : VERIFY DATA

SELECT * FROM employees;

---

## -- STEP 6 : DATABASE BACKUP

/*
Run the following command in Command Prompt
or PostgreSQL Terminal:

pg_dump -U postgres -d companydb -F c -f companydb_backup.backup

Description:
Creates a compressed backup file containing
database schema and data.
*/

---

## -- STEP 7 : SIMULATE DATABASE FAILURE

DROP TABLE employees;

---

## -- STEP 8 : VERIFY TABLE DELETION

SELECT * FROM employees;

-- Expected:
-- ERROR: relation "employees" does not exist

---

## -- STEP 9 : DATABASE RESTORATION

/*
Restore backup using:

pg_restore -U postgres -d companydb companydb_backup.backup

Description:
Restores all database objects and records
from the backup file.
*/

---

## -- STEP 10 : VERIFY RECOVERY

SELECT * FROM employees;

---

## -- STEP 11 : VALIDATE RECOVERY

SELECT COUNT(*) AS total_employees
FROM employees;

---

## -- EXPECTED RESULT

/*
Total Employees = 4

Backup Status  : SUCCESSFUL
Recovery Status: SUCCESSFUL

Conclusion:
The PostgreSQL database was successfully
backed up using pg_dump and restored using
pg_restore without any data loss.
*/

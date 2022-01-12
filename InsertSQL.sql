USE employees;

DELETE FROM employees
WHERE 
		emp_no IN (999901,999902,999903);

SELECT * FROM employees LIMIT 10;

-- SELECT * FROM employees ORDER BY

DESCRIBE employees;

-- Insert
INSERT INTO 
	employees
		(emp_no, birth_date, first_name, last_name, gender, hire_date) 
VALUES 
		(999901, '1986-04-21', 'John', 'Smith', 'M', '2011-01-01');

SELECT
	*
FROM employees
ORDER BY emp_no DESC;
-- Insert
INSERT INTO 
	employees
		(emp_no, birth_date, first_name, last_name, gender, hire_date) 
VALUES 
		(999902, '1973-03-26', 'Patricia', 'Lawrence', 'F', '2005-01-01');       

SELECT
	*
FROM employees
ORDER BY emp_no DESC;

-- Insert with the same value in the order
 INSERT INTO 
	employees
VALUES 
		(999903, '1977-09-14', 'Johnathan', 'Creek', 'M', '1999-01-01');     

SELECT
	*
FROM employees
ORDER BY emp_no DESC;

-- Insert Excercise
SELECT
	*
FROM 
	titles
LIMIT 10;

INSERT INTO 
	titles
		(emp_no, title, from_date) 
VALUES 
		(999903, 'Senior Engineer', '1997-10-01');       

SELECT
	*
FROM 
	titles
ORDER BY 
	emp_no 
DESC
LIMIT 10;

-- Next Exer
SELECT * FROM dept_emp LIMIT 10;

INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES ('999903', 'd005', '1997-10-01', '9999-01-01');       

SELECT	* FROM 	dept_emp ORDER BY emp_no DESC LIMIT 10;

-- Next Exer
SELECT * FROM departments LIMIT 10;

INSERT INTO departments (dept_no, dept_name) VALUES ('d010', 'Business Analysis');       

SELECT	* FROM 	departments ORDER BY dept_no DESC LIMIT 10;

-- CREATE DUPLICATE --
######################
DROP TABLE IF EXISTS departments_dup;

CREATE TABLE departments_dup ( dept_no CHAR (4) NOT NULL, dept_name VARCHAR (40) NOT NULL);

SELECT * FROM departments_dup;

INSERT INTO departments_dup ( dept_no, dept_name) SELECT * FROM departments;

SELECT * FROM departments_dup;

-- Update --
######################
######################

SELECT * FROM employees WHERE emp_no = 999901;

UPDATE employees SET first_name = 'Stella', last_name = 'Parkinson', birth_date = '1990-12-31', gender = 'F' WHERE emp_no = 999901;

SELECT * FROM employees WHERE emp_no = 999901;

-- 

UPDATE employees SET first_name = 'Stella', last_name = 'Parkinson', birth_date = '1990-12-31', gender = 'F' WHERE emp_no = 999909;
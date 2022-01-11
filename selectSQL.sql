USE employees;

-- Select
SELECT 
	* 
FROM 
	employees;

-- SELECT specific columns
SELECT 
	first_name, last_name
FROM 
	employees;
    
-- Exercise 1: SELECT - FROM
SELECT 
	*
FROM 
	departments;
    
-- Exercise 2: SELECT - FROM
SELECT 
	dept_no
FROM 
	departments;

-- Exercise 3: SELECT - WHERE
SELECT 
	*
FROM 
	employees
WHERE
	first_name = 'Denis';
    
-- Exercise 4: SELECT - WHERE
SELECT 
	*
FROM 
	employees
WHERE
	first_name = 'Elvis';
    
-- Exercise 5: SELECT - WHERE - AND
SELECT 
	*
FROM 
	employees
WHERE
	first_name = 'Denis' AND gender = 'M';

-- Exercise 6: SELECT - WHERE - AND
SELECT 
	*
FROM 
	employees
WHERE
	first_name = 'Kellie' AND gender = 'F';
    
-- Exercise 7: SELECT - WHERE - OR
SELECT 
	*
FROM 
	employees
WHERE
	first_name = 'Denis' OR first_name = 'Elvis';    
    
-- Exercise 8: SELECT - WHERE - OR
SELECT 
	*
FROM 
	employees
WHERE
	first_name = 'Kellie' OR first_name = 'Aruna';    

-- Operator Precedence
##################################
# Regardless of which order
#
#
# Priority is with AND and then OR
# Select all male Denis and all Females

-- Select - Where - AND OR in a wrong way
SELECT 
	*
FROM 
	employees
WHERE
	last_name = 'Denis' AND gender = 'M' OR gender = 'F';    
-- as if the last statement is (last_name = 'Denis' AND gender = 'M' ) OR gender = 'F'

-- Select - where - AND OR in a right way
SELECT 
	*
FROM 
	employees
WHERE
	last_name = 'Denis' AND (gender = 'M' OR gender = 'F');    

-- Excersie 9- Select - where - AND OR in a right way
SELECT 
	*
FROM 
	employees
WHERE
	(first_name = 'Kellie' OR first_name = 'Arnuna') AND gender = 'F';    

-- In / Not In
SELECT 
	*
FROM 
	employees
WHERE
	first_name = 'Cathie'
		OR first_name = 'Mark'
        OR first_name = 'Nathan';

SELECT 
	*
FROM 
	employees
WHERE
	first_name IN ('Cathie', 'Mark', 'Nathan');
    
-- Excersie 10 - IN
SELECT 
	*
FROM 
	employees
WHERE
	first_name IN ('Denis', 'Elvis');
    
    -- Excersie 11 - NO IN
SELECT 
	*
FROM 
	employees
WHERE
	first_name NOT IN ('John', 'Mark', 'Jacob');
    
-- Like 
#############
# % means any number of characters
SELECT 
	*
FROM 
	employees
WHERE
	first_name Like ('Mar%');
    
-- Example - 
SELECT 
	*
FROM 
	employees
WHERE
	first_name Like ('ar%');
    
-- Exerscie 12 - 
SELECT 
	*
FROM 
	employees
WHERE
	first_name Like ('ar%');

-- Exerscie 13 - 
SELECT 
	*
FROM 
	employees
WHERE
	first_name Like ('%ar');    

-- Exerscie 14 - 
SELECT 
	*
FROM 
	employees
WHERE
	first_name Like ('%ar%');    
    
# _ sign means exactly one character after the word or before
#
SELECT 
	*
FROM 
	employees
WHERE
	first_name Like ('Mar_');    
    
-- Excersie with different shape
SELECT 
	*
FROM 
	employees
WHERE
	first_name Like ('%JACK%');    
SELECT 
	*
FROM 
	employees
WHERE
	first_name Like ('%jack%');    
SELECT 
	*
FROM 
	employees
WHERE
	first_name NOT Like ('%Jac%');    

-- Excerise 1 -- Like Not Like 
SELECT 
	*
FROM 
	employees
WHERE
	first_name NOT Like ('%Mar%');    

-- Excerise 2 -- Like Not Like 
SELECT 
	*
FROM 
	employees
WHERE
	first_name NOT Like ('%Mar%');   

-- Excerise 3 -- Like Not Like 
SELECT 
	*
FROM 
	employees
WHERE
	hire_date Like ('%2000%');
    
    -- Excerise 4 -- Like Not Like 
SELECT 
	*
FROM 
	employees
WHERE
	emp_no Like ('1000_');

###########
-- Between - AND
-- Between can be used for Date String and Numbers
-- Between is inclusive
SELECT 
	*
FROM 
	employees
WHERE
	hire_date BETWEEN '1990-01-01' AND '2000-01-01';
    
SELECT 
	*
FROM 
	employees
WHERE
	hire_date NOT BETWEEN '1990-01-01' AND '2000-01-01';    

-- Excersie 1 - Between
SELECT 
	*
FROM 
	salaries;
-- Excersie 2 - Between different salaries
SELECT 
	*
FROM 
	salaries
WHERE
	salary BETWEEN '66000' AND '70000'; 

-- Excersie 2 - Not Between different employee number
SELECT 
	*
FROM 
	salaries
WHERE
	emp_no NOT BETWEEN '10004' AND '10012';       
 
 --  Select Only specific 
SELECT 
	dept_name, dept_no
FROM 
	departments;
    
     --  Select Only specific colun has specific values
SELECT 
	dept_name, dept_no
FROM 
	departments
WHERE
	dept_no BETWEEN 'd003' AND 'd006';     

 --  Select Only specific colun with Null
SELECT 
	*
FROM 
	employees
WHERE
	first_name IS NOT NULL;     
    
 --  Select Only specific colun with Not Null
SELECT 
	*
FROM 
	employees
WHERE
	first_name IS NULL;
    
-- Excersie 1 - IS NULL 
SELECT 
	*
FROM 
	employees
WHERE
	emp_no IS NOT NULL;        
    
 ###################
 # Other Comparison Operators
 # = != <>
 
 -- Excersie 1
SELECT 
	*
FROM 
	employees
WHERE
	first_name = 'Mark';        

-- !=
SELECT 
	*
FROM 
	employees
WHERE
	first_name != 'Mark';        

-- <>
SELECT 
	*
FROM 
	employees
WHERE
	first_name <> 'Mark';        
-- >
SELECT 
	*
FROM 
	employees
WHERE
	hire_date > '2000-01-01';   
-- >=
SELECT 
	*
FROM 
	employees
WHERE
	hire_date >= '2000-01-01'; 
    -- <
SELECT 
	*
FROM 
	employees
WHERE
	hire_date <= '2000-01-01'; 

-- EXCERCISE 1 - >= 
SELECT 
	*
FROM 
	employees
WHERE
	gender = 'F' AND hire_date >= '2000-01-01';     

-- Excersie 2 -    
SELECT 
	*
FROM 
	salaries
WHERE
	salary > '150000';        

# SELECT DISTINCT 
-- DISTINCT select all distinct different data values    
 
 SELECT
	gender
FROM
	employees;

-- Distinct example
SELECT DISTINCT
	gender
From
	employees;

-- Distinct example 2
SELECT DISTINCT
	hire_date
From
	employees;

# Introduction to Aggregate Function
--
--
--
SELECT
	COUNT(emp_no)
FROM
	employees;
--

SELECT
	count(DISTINCT first_name)
FROM
	employees;

--    
SELECT
	count(*)
FROM
	salaries
WHERE salary >= '100000';

-- Order By
#######################
SELECT 
	* 
FROM
	employees
ORDER BY first_name;
       
SELECT 
	* 
FROM
	employees
ORDER BY first_name ASC;

SELECT 
	* 
FROM
	employees
ORDER BY first_name DESC;

SELECT 
	* 
FROM
	employees
ORDER BY first_name, last_name DESC;   

SELECT 
	* 
FROM
	employees
ORDER BY hire_date DESC;

# GROUP BY
---------------
SELECT 
	first_name
FROM
	employees
GROUP BY first_name;  

SELECT DISTINCT
	first_name
FROM
	employees;
    
 # How many times each name is repeated learn these
 SELECT
	first_name, COUNT(first_name)
FROM
	employees
GROUP BY first_name; 

 SELECT
	first_name, COUNT(first_name)
FROM
	employees
GROUP BY first_name 
ORDER BY first_name ASC; 

# Using Aliases (AS)
-- Hiding the function used when outputing
-- You can put the variable in a quotation if want
 SELECT
	first_name, COUNT(first_name) AS names_count
FROM
	employees
GROUP BY first_name 
ORDER BY first_name;

-- EXC
 SELECT
	salary , COUNT(emp_no) AS emps_with_same_salary
FROM
	salaries
WHERE salary > 80000  
GROUP BY salary 
ORDER BY salary ASC;

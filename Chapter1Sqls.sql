-- First Course in DB
-- How to create a database
CREATE DATABASE IF NOT EXISTS shopping; 

-- How to start using an existing database
USE shopping;

-- How to create a table with a Primary Key
-- Customers table can not be delted if it is referencesed by other tables
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS customers;
CREATE TABLE customers
(
	customers_id INT,
    first_name varchar(255),
    last_name varchar (255),
    email_address varchar(255),
PRIMARY KEY (customers_id)
);
DESCRIBE customers;

# How to make a Not null and Auto Increment Primary Key
# Customers table can not be deleted if it is referenced by other tables
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS customers;
CREATE TABLE customers
(
	customers_id INT NOT NULL AUTO_INCREMENT,
    first_name varchar(255),
    last_name varchar (255),
    email_address varchar(255),
PRIMARY KEY (customers_id)
);
DESCRIBE customers;

# How to make a unique 
# Customers table can not be deleted if it is referenced by other tables
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS customers;
CREATE TABLE customers
(
	customers_id INT NOT NULL AUTO_INCREMENT,
    first_name varchar(255),
    last_name varchar (255),
    email_address varchar(255),
    unique key (email_address),
PRIMARY KEY (customers_id)
);
DESCRIBE customers;

# How to create a primary key from two columns
DROP TABLE IF EXISTS companies;
CREATE TABLE companies (
	company_name VARCHAR(255) NOT NULL,
    headquarters_phone_number INT NOT NULL,
PRIMARY KEY (company_name, headquarters_phone_number)    
);


# How to drop a Primary Key when it composed two columns
DESCRIBE companies;
ALTER TABLE companies DROP PRIMARY KEY;
DESCRIBE companies;

# Create another version of the table
DROP TABLE IF EXISTS companies;
CREATE TABLE companies (
	company_id INT NOT NULL AUTO_INCREMENT,
	company_name VARCHAR(255),
    headquarters_phone_number INT,
PRIMARY KEY (company_id)    
);
DESCRIBE companies;

# How to set a default value for a column
DROP TABLE IF EXISTS items;
CREATE TABLE items(
	item_id INT NOT NULL AUTO_INCREMENT,
    item VARCHAR(255) DEFAULT "I donot know",
    unit_price NUMERIC DEFAULT 0,
    company_id VARCHAR (255),
    PRIMARY KEY (item_id)
);
DESCRIBE items;

# Numeric = decimal
# numberic (10, 2) means total 10 digits which contains 8 digits before the floating point and 2 digits after
DROP TABLE IF EXISTS items;
CREATE TABLE items(
	item_id INT NOT NULL AUTO_INCREMENT,
    item VARCHAR(255) DEFAULT "I donot know",
    unit_price NUMERIC (10,2) DEFAULT 34564328.02,
    company_id VARCHAR (255),
    PRIMARY KEY (item_id)
);
DESCRIBE items;

# How to drop the default value for existing table
ALTER TABLE items 
ALTER COLUMN unit_price DROP DEFAULT;
DESCRIBE items;

# How to add  a default value for a column in an existing table
ALTER TABLE items 
CHANGE COLUMN unit_price unit_price INT DEFAULT 0;
DESCRIBE items;

# An another approach to definie a primary key,
DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
	purchase_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(10) NOT NULL
);
DESCRIBE sales;

# How to create a one to one relationship from sales to customers
# Parent table  = referenced table = customers
# child table = referencing table = sales
# child table fk nyst have the same type and values as a parent table pk
# a child is any table that references the parent with a foreign key
DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
	purchase_id INT AUTO_INCREMENT PRIMARY KEY,
    date_of_purchase DATE,
    customers_id INT,
    item_code VARCHAR(10) NOT NULL,
    
    /* 
	Foriegn key ( customer_id) a column in customer
    u need to reference it from a table's primary key
    on delete cascade means to be remove if the parent is removed
	*/
    FOREIGN KEY (customers_id) REFERENCES customers (customers_id) ON DELETE CASCADE
);
DESCRIBE sales;

#

#
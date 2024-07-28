SHOW DATABASES -- Lists down all the databases
CREATE DATABASE IF NOT EXISTS techforallwithpriya -- Creates a database if it does not exists with the name techforallwithpriya
USE techforallwithpriya -- We get to use all the tables of this database

SELECT database() -- Shows the name of the database

-- Create a relation/table with column name, datatype, constraint
CREATE TABLE employee(
	EID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Salary INT NOT NULL,
    Location VARCHAR(50) NOT NULL
)
-- Auto_Increment increases the value by default by 1

DESC employee
DROP TABLE employee -- Shows the structure of the table

SHOW TABLES

-- Inserting the values into table "Employee"
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES("Priya", "Bhatia", 27, 200000, "Bengaluru");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES("Akhil", "George", 26, 100000, "Gurugram");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES("Kaneesha", "Brownlee", 27, 300000, "London");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES("Megha", "Meka", 24, 50000, "America");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES("Naga", "Sai", 30, 150000, "Bengaluru");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES("Prabhutwa", "Kakkar", 35, 70000, "Noida");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES("Yashswi", "Ghandak", 29, 90000, "Delhi");

SELECT * FROM employee -- Shows all the records of employee table

-- Filtering Records using WHERE Clause

-- Give me the emplyee details having salary mroe than 1,00,000
SELECT * FROM employee WHERE Salary > 100000;

-- Selective Filtering
SELECT FirstName,Age,Location FROM employee WHERE Salary > 100000;

-- what will be the flow of this command 
-- 1.FROM  2.WHERE  3.SELECT -> Output

-- Question_1 : Give me the record of the employee having the age more than 25?
SELECT * FROM employee WHERE Age > 25;

-- Question_2 : Update the Priya's LastName to Bhatt? 
UPDATE employee SET LastName = 'Bhatt' WHERE EID = 1;
SELECT * FROM employee WHERE EID = 1;
-- Note : use UPDATE commands with PRIMARY KEY only cause seletion must be done through unique identifiers for no future regrets!
-- We can delete the data using other columns by changing some settings, otherwise it shows warning for other tthan Primary Key

-- Question_3 : Difference B/W UPDATE and ALTER command?
-- Answer : UPDATE is DML(Data Manipulation Language) command and ALTER is DDL(Data Definition Language) command 
		 -- works of record level  |  works on schema level
         
-- Question_4 : Delet any record using EID?
DELETE FROM employee WHERE EID = 4;
SELECT * FROM employee WHERE EID = 4;
SELECT * FROM employee;


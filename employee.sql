--### **Step 5: employee table**

--In the employee.sql file, write out the code for the following problems:

--1. List all employee first and last names only that live in Calgary.
SELECT first_name, last_name FROM employee
WHERE city LIKE '%Calgary%';
--2. Find the birthdate for the youngest employee.
SELECT MAX(birth_date) FROM employee;

--3. Find the birthdate for the oldest employee.
SELECT MIN(birth_date) FROM employee;

--4. Find everyone that reports to Nancy Edwards (use the ReportsTo column). * You will need to query the employee table to find the id for Nancy Edwards
SELECT * FROM employee
WHERE reports_to = 2;

--5. Count how many people live in Lethbridge.
SELECT COUNT(city) AS city FROM employee
WHERE city IN('Lethbridge');
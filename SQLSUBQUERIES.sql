CREATE DATABASE SubqueryPracticeDB;
GO

USE SubqueryPracticeDB;
GO

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    city VARCHAR(30),
    salary INT
);

INSERT INTO Employees
    (emp_id, emp_name, department, city, salary)
VALUES
    (101, 'Aarav Sharma', 'IT', 'Pune', 50000),
    (102, 'Priya Patil', 'HR', 'Mumbai', 40000),
    (103, 'Rahul Shah', 'IT', 'Pune', 70000),
    (104, 'Sneha Joshi', 'HR', 'Mumbai', 60000),
    (105, 'Amit Kulkarni', 'Finance', 'Pune', 80000),
    (106, 'Neha Desai', 'IT', 'Mumbai', 55000),
    (107, 'Rohan More', 'Finance', 'Nashik', 45000),
    (108, 'Pooja Pawar', 'IT', 'Pune', 90000);

SELECT * FROM Employees

SELECT salary 
FROM Employees
WHERE emp_name = 'Aarav Sharma'

SELECT * FROM Employees
WHERE salary > 50000 

--Question 1: Aarav Sharma पेक्षा जास्त salary असलेले employees शोध.

SELECT * FROM 
Employees
WHERE salary >(SELECT salary
FROM Employees
WHERE emp_name ='Aarav Sharma');

--Question 2: Aarav Sharma ज्या city मध्ये काम करतो, त्याच city मधील employees शोध.
SELECT city FROM Employees
WHERE emp_name = 'Aarav Sharma'

SELECT * FROM Employees
WHERE city = 'Pune'

SELECT  * FROM Employees
WHERE city =(
SELECT  city FROM Employees
WHERE emp_name = 'Aarav Sharma');



SELECT * FROM Employees
WHERE salary > (

select AVG(salary) FROM Employees
WHERE department= 'IT'
);

SELECT department FROM Employees
WHERE emp_name = 'Aarav Sharma';
SELECT AVG(salary) FROM Employees
WHERE department =  'IT'

SELECT * FROM Employees
WHERE salary > (SELECT AVG(salary)
FROM Employees
WHERE department =(
SELECT department FROM Employees
WHERE emp_name = 'Aarav Sharma'));
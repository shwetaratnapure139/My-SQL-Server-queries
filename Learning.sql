CREATE DATABASE myDB
CREATE TABLE Employees
(
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);


INSERT INTO Employees
    (EmployeeID, EmployeeName, Department, Salary)
VALUES
    (1, 'Amit', 'IT', 30000),
    (2, 'Priya', 'HR', 25000),
    (3, 'Rahul', 'IT', 40000),
    (4, 'Sneha', 'HR', 35000),
    (5, 'Neha', 'IT', 50000);

SELECT * FROM dbo.Employees

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';


SELECT country,
avg(score) AS AVG_score
FROM  dbo.customers
WHERE score != 0
GROUP BY country
HAVING AVG(score) >430

--Distict Clause to get unique values from column
--TASK 16:Return Unique List of all countries
SELECT 
  DISTINCT country
  FROM dbo.customers

--TOP Clause: To get the top rows from the Table
-- TASK 17:TOP Return Only 3 Customers
SELECT
   TOP 3 *
   FROM dbo.customers

--TASK 18:Retrieve the top 3 Customers with the Highest Score
SELECT 
TOP 3 *
FROM dbo.customers ORDER BY score DESC

--TASK 19: Retrieve the Lowest 2 Customers based on the Scores
SELECT 
TOP 2 *
FROM dbo.customers 
ORDER BY score ASC

--TASK 20: Get the Two Most Recent Orders
SELECT TOP 2*
FROM dbo.orders
ORDER BY order_date DESC

-- TASK 21:ALL Together
--Calculate Average Scores for each country 
--Considering only
--Customers with a score not equal to 0 and 
--return only those counrtries with the average score
--greater than 430 and sort the result by the highest score first
SELECT 
country,
score,
AVG(score) AS AVG_Score
FROM dbo.customers
WHERE score !=0 
GROUP BY country, score
HAVING AVG(score) >430
ORDER BY score DESC

--TASK 22: EXCUTE Multiple QUeries at Once
SELECT * FROM dbo.customers;
SELECT * FROM dbo.orders

--Select static data:
--TASK 23:Select a static or
--constant value without accessing any table
SELECT  123 AS static_number;
 select 'Hello' AS Static_string


 --TASK 24:Assign a constant value to a column in a Query
 SELECT id,
 first_name,
'NEW Customer' 
AS CustomerType
 FROM dbo.customers

 --HAVING CLAUSE
 
 SELECT 
 country,
 SUM(score)
 FROM dbo.customers
 GROUP BY country
 HAVING SUM(score)>800


--
SELECT country,
SUM(score)
FROM dbo.customers
WHERE score>400
GROUP BY country
HAVING SUM(score)>800

SELECT DISTINCT
country
FROM dbo.customers

SELECT TOP 3 *
FROM dbo.customers

SELECT DISTINCT TOP 2
score,
SUM(score)
FROM dbo.customers
WHERE score > 800
GROUP BY score
HAVING SUM(score)>500
ORDER BY score


--ORDER OF EXECUTION /COADING ORDER
/*

FROM TABLE
WHERE 
GROUP BY
HAVING
ORDER BY
SELECT DINTINCT
TOP
*/
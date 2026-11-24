CREATE DATABASE Bank;
USE Bank;
CREATE TABLE worker(
id INT IDENTITY(1,101),
fname VARCHAR(50) NOT NULL,
lname VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
CONSTRAINT UQ_email UNIQUE(email),
departement VARCHAR(50) NOT NULL,
salary decimal(10,2),
date_join DATE NOT NULL DEFAULT CONVERT(DATE,GETDATE() ),
CONSTRAINT PK_id PRIMARY KEY(id)
);

INSERT INTO worker
(fname, lname, email, departement, salary)
VALUES
('Amit', 'Patil', 'amit@gmail.com', 'IT', 50000);

INSERT INTO worker
(fname, lname, email, departement, salary)
VALUES
('Sakshi', 'Pujari', 'sakshi@gmail.com', 'HR', 80000);

INSERT INTO worker
(fname, lname, email, departement, salary)
VALUES
('Pooja','Dwiwedi','pooja@gmail.com','IT',80000),
('Palak','Sharma','palaks@gmail.com','account',70000),
('Rahul','Takit','rahult@gmail.com','HR',50000),
('Vinay','Sabale','vinays@gmail.com','Manager',100000),
('Amit','Jain','amitj@gmail.com','Advisor',90000),
('Shobha','Mane','shobha@gmail.com','Account',89000);

DROP TABLE worker;

SELECT * FROM dbo.worker;

UPDATE worker
SET salary = 86000
WHERE fname='sakshi';

UPDATE worker
SET departement ='Finance'
WHERE fname ='Pooja';

UPDATE worker SET salary = 65000
WHERE fname='Rahul';

/*UPDATE worker SET email='amitsjain@gmail.com'
WHERE fname ='Amit';

SELECT *
FROM worker
WHERE email = 'amitj@gmail.com';
*/


/*Palak चा department IT आणि salary 75000 करा.*/

UPDATE worker
SET departement ='IT',
salary=75000
WHERE fname ='Palak';

--Vinay चा department Management आणि salary 110000 करा.
UPDATE worker
SET departement = 'Management',
salary=110000
WHERE fname='Vinay';

SELECT * FROM worker;

UPDATE worker
SET salary=89000
WHERE salary=80000;

UPDATE worker
SET salary = 55000
WHERE departement ='HR';

UPDATE worker 
SET salary = 75000
WHERE salary = 70000;

UPDATE worker
SET salary = 90000
WHERE departement ='Account';

UPDATE worker 
SET departement  = 'IT'
WHERE fname='Sakshi';

SELECT * FROM dbo.worker;

UPDATE worker SET 
salary = 95000
WHERE fname = 'Amit';

UPDATE worker SET
departement = 'Finance',
salary = 95000
WHERE fname ='Shobha';

--ज्या employees चा salary 80000 पेक्षा जास्त आहे, त्यांचा salary 10000 ने वाढवा.

UPDATE worker
SET salary = salary + 10000
WHERE salary > 80000;


-- Q5 HR department मधील employees चा salary 10% ने वाढवा.

UPDATE worker
SET salary= salary * 1.10
WHERE departement ='HR';

--ज्या employees चा salary 90000 पेक्षा कमी आहे त्यांचा salary 5000 ने वाढवा.


UPDATE worker 
SET salary = salary + 5000
WHERE salary < 90000;

UPDATE worker
SET salary = 60000
WHERE departement='HR'AND salary < 55000;








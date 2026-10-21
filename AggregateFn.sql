create database operations;
use operations;

create table departments (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50) NOT NULL,
location VARCHAR(50)
);
CREATE TABLE employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
dept_id INT,
salary INT,
hire_datem DATE,
manager_id INT,
FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
CREATE TABLE customers (
cust_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
city VARCHAR(50)
);
CREATE TABLE orders (
order_id INT PRIMARY KEY,
cust_id INT,
emp_id INT,
product VARCHAR(50),
quantity INT,
amount INT,
order_date DATE,
FOREIGN KEY (cust_id) REFERENCES customers(cust_id),
FOREIGN KEY (emp_id)  REFERENCES employees(emp_id)
);

INSERT INTO departments VALUES
(1, 'Sales',       'Chennai'),
(2, 'Engineering', 'Bangalore'),
(3, 'HR',          'Mumbai'),
(4, 'Marketing',   'Delhi'),
(5, 'Finance',     'Chennai'); 

INSERT INTO employees VALUES
(101, 'Arun',    2, 85000, '2019-03-15', NULL),
(102, 'Bala',    2, 72000, '2020-07-01', 101),
(103, 'Chitra',  1, 55000, '2021-01-10', 107),
(104, 'Deepak',  1, 48000, '2022-05-20', 107),
(105, 'Esha',    3, 60000, '2018-11-30', NULL),
(106, 'Farhan',  2, 95000, '2017-09-05', 101),
(107, 'Gita',    1, 70000, '2016-02-14', NULL),
(108, 'Hari',    4, 52000, '2021-08-23', 109),
(109, 'Indu',    4, 68000, '2019-12-01', NULL),
(110, 'Jay',     2, 64000, '2023-01-09', 101),
(111, 'Kavya',   NULL, 40000, '2023-06-15', NULL); 

INSERT INTO customers VALUES
(1, 'Acme Corp',    'Chennai'),
(2, 'Globex',       'Mumbai'),
(3, 'Initech',      'Bangalore'),
(4, 'Umbrella Ltd', 'Delhi'),
(5, 'Hooli',        'Chennai'),
(6, 'Stark Inc',    'Pune'); 

INSERT INTO orders VALUES
(1001, 1, 103, 'Laptop',   2, 120000, '2024-01-05'),
(1002, 1, 104, 'Mouse',   10,   5000, '2024-01-12'),
(1003, 2, 103, 'Monitor',  3,  45000, '2024-02-03'),
(1004, 3, 107, 'Laptop',   1,  60000, '2024-02-14'),
(1005, 4, 104, 'Keyboard',  5,   7500, '2024-02-20'),
(1006, 5, 107, 'Laptop',   4, 240000, '2024-03-02'),
(1007, 2, 103, 'Mouse',    8,   4000, '2024-03-15'),
(1008, 1, 107, 'Monitor',  2,  30000, '2024-03-28'),
(1009, 3, 104, 'Keyboard', 10,  15000, '2024-04-04'),
(1010, 5, 103, 'Monitor',  1,  15000, '2024-04-18'),
(1011, 4, 107, 'Laptop',   1,  60000, '2024-04-25'),
(1012, 2, 104, 'Laptop',   3, 180000, '2024-05-09');


--AGGREGATE FUNCTION--
SELECT COUNT(*)      AS total_employees,
       SUM(salary)   AS total_salary,
       AVG(salary)   AS avg_salary,
       MIN(salary)   AS lowest,
       MAX(salary)   AS highest
FROM employees;

-- COUNT(column) ignores NULLs, COUNT(*) counts all rows
SELECT COUNT(*) AS all_rows, COUNT(dept_id) AS rows_with_dept FROM employees;

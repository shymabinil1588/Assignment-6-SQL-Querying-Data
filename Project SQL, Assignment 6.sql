CREATE DATABASE Employee;
USE Employee;

CREATE TABLE Location (
    Location_id INT PRIMARY KEY,
    Location VARCHAR(50)
    );

    Create Table Department(
    Department_id int PRIMARY KEY,
    Department_Name Varchar(100));
    
   CREATE TABLE Employees (
    Employee_id INT,
    Employee_name VARCHAR(50),
    Gender ENUM('M', 'F'),
    Age INTEGER,
    Designation VARCHAR(100),
    Hire_date DATE,
    Salary DECIMAL(10 , 2 ),
    department_Id INT,
    Location_Id INT
);

ALTER TABLE Employees
ADD COLUMN Email varchar (100) unique;

ALTER TABLE Employees 
MODIFY COLUMN Designation VARCHAR(255);

ALTER TABLE Employees 
DROP COLUMN Age;

ALTER TABLE Employees 
RENAME COLUMN Hire_date TO date_of_joining;

RENAME TABLE Department TO Department_Info;

RENAME TABLE Location TO Locations;

TRUNCATE TABLE Employees;

DROP TABLE Employees;

DROP DATABASE Employee;

CREATE DATABASE Employee;
USE Employee;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE);
    
CREATE TABLE locations (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(100) NOT NULL UNIQUE);
    
    CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    department_id INT,
    location_id INT,
    designation varchar(100),
    salary int,
    CONSTRAINT foreignkey_employees_department FOREIGN KEY (department_id) REFERENCES departments(department_id),
    CONSTRAINT foreignkey_employees_location FOREIGN KEY (location_id) REFERENCES locations(location_id));
    
    
    USE employee;

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');


INSERT INTO locations (location_name) 
VALUES ('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');



INSERT INTO employees (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

select * from employees;
-- Constraints unique null values

select distinct Salary from Employees;

-- constraints used to give a temporary name to a acolum or a table

select age as Employees_age, salary as Employees_salary from employees;

-- constraints used to filter based on the conditions

select * from employees where salary > 50000 and hire_date < 2016-01-01;

select * from employees where designation is Null or designation=" Data scientist";

-- constraints to sort ascending or descending order

select * from employees Department_id order by Department_id asc;   
 
Select * from employees salary  order by salary desc;



select * from employees where year (hire_date) = 2018 order by hire_date asc limit 5;

-- constraints WHERE Department_Name in departments = Finance

SELECT SUM(e.salary) AS total_finance_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.Department_Name = 'Finance';

select min(age) as Min_Age
from employees;

-- constraints ON location_id in employees = location_id in locations
-- constraints GROUP BY location_name in locations

SELECT l.location_name, MAX(e.salary) AS Max_Salary
FROM employees e
JOIN locations l ON e.location_id = l.location_id
GROUP BY l.location_name;

-- constraints WHERE designation LIKE '%Analyst%' 
-- constraints GROUP BY designation

SELECT avg(salary) AS Average_Salary
FROM employees
WHERE designation like '%Analyst%'
group by designation;

-- constraints ON department_id in departments = department_id in employees
-- constraints GROUP BY Department_Name in departments
-- constraints COUNTemployee_id in employees < 3

SELECT d.Department_Name, COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.Department_Name
HAVING COUNT(e.employee_id) < 3;

-- constraints  employees.location_id = locations.location_id	
-- constraints WHERE employees.gender = 'Female' 
-- constraints location_name in locations
-- constraints HAVING average employees age < 30

SELECT l.location_name, AVG(e.age) AS avg_female_age
FROM employees e
JOIN locations l ON e.location_id = l.location_id
WHERE e.gender = 'Female'
GROUP BY l.location_name
HAVING AVG(e.age) < 30;

-- constraints    ON employees.department_id = departments.department_id	
-- constraints NOT NULL match
  
SELECT e.employee_name, e.designation, d.Department_Name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id;

-- constraints ON departments.department_id = employees.department_id	
-- constraints GROUP BY departments.Department_Name

SELECT departments.Department_Name, COUNT(employees.employee_id) AS total_employees
FROM departments
LEFT JOIN employees ON departments.department_id = employees.department_id
GROUP BY departments.Department_Name;

-- Constraints ON employees.location_id = locations.location_id

SELECT locations.location_name, employees.employee_name
FROM employees
RIGHT JOIN locations ON employees.location_id = locations.location_id;












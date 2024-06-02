-- Create the Departments table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Create the Employees table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);
-- Insert data into Departments table
INSERT INTO Departments (department_id, department_name) VALUES 
(1, 'Human Resources'),
(2, 'Engineering'),
(3, 'Marketing');

-- Insert data into Employees table
INSERT INTO Employees (employee_id, name, age, department_id) VALUES 
(1, 'Alice Johnson', 28, 2),
(2, 'Bob Smith', 34, 1),
(3, 'Carol White', 29, 2),
(4, 'David Brown', 42, 3),
(5, 'Eve Black', 25, 1),
(6, 'Frank Green', 30, 2);

-- Identify the distinct departments in which employees work
SELECT DISTINCT d.department_name
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id;

-- Count the total number of employees in each department
SELECT d.department_name, COUNT(e.employee_id) AS employee_count
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

-- Retrieve the details of employees whose ages fall between 25 and 30
SELECT e.name, e.age, d.department_name
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
WHERE e.age BETWEEN 25 AND 30;



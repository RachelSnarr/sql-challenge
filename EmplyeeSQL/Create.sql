DROP TABLE Department_Employee;
DROP TABLE Department_Manager;
DROP TABLE Salaries;
DROP TABLE Titles;
DROP TABLE Departments;
DROP TABLE Employees;

CREATE TABLE Employees (
	Employee_ID INT PRIMARY KEY 
	,Birth_Date VARCHAR(100)
	,First_Name VARCHAR(100)
	,Last_Name VARCHAR(100)
	,Gender VARCHAR(1)
	,Hire_Date VARCHAR(100)
)
;

CREATE TABLE Departments (
	Department_ID VARCHAR(100) PRIMARY KEY
	,Department_Name VARCHAR(100)
)
;

CREATE TABLE Department_Employee (
	Employee_ID INT  REFERENCES Employees(Employee_ID)
	,Department_ID VARCHAR(100) REFERENCES Departments(Department_ID)
	,From_Date VARCHAR(100)
	,To_Date VARCHAR(100)
)
;

CREATE TABLE Department_Manager (
	Department_ID VARCHAR(100) REFERENCES Departments(Department_ID)
	,Employee_ID INT REFERENCES Employees(Employee_ID)
	,From_Date VARCHAR(100)
	,To_Date VARCHAR(100)
)
;

CREATE TABLE Salaries (
	Employee_ID INT REFERENCES Employees(Employee_ID)
	,Salary MONEY 
	,From_Date VARCHAR(100)
	,To_Date VARCHAR(100)
)
;

CREATE TABLE Titles (
	Employee_ID INT REFERENCES Employees(Employee_ID)
	,Title VARCHAR(100) PRIMARY KEY
	,From_Date VARCHAR(100)
	,To_Date VARCHAR(100)
)
;
CREATE TABLE Employees (
	Employee_ID INT PRIMARY KEY 
	,Birth_Date VARCHAR(100)
	,First_Name VARCHAR(100)
	,Last_Name VARCHAR(100)
	,Gender BOOLEAN DEFAULT NULL
	,Hire_Date VARCHAR(100)
)
;

CREATE TABLE Departments (
	Department_ID INT PRIMARY KEY
	,Department_Name VARCHAR(100)
)
;

CREATE TABLE Department_Employee (
	Employee_ID INT PRIMARY KEY REFERENCES Employees(Employee_ID)
	,Department_ID INT REFERENCES Departments(Department_ID)
	,From_Date VARCHAR(100)
	,To_Date VARCHAR(100)
)
;

CREATE TABLE Department_Manager (
	Employee_ID INT PRIMARY KEY REFERENCES Employees(Employee_ID)
	,Department_ID INT REFERENCES Departments(Department_ID)
	,From_Date VARCHAR(100)
	,To_Date VARCHAR(100)
)
;

CREATE TABLE Salaries (
	Salary MONEY PRIMARY KEY
	,Employee_ID INT REFERENCES Employees(Employee_ID)
	,From_Date VARCHAR(100)
	,To_Date VARCHAR(100)
)
;

CREATE TABLE Titles (
	Title VARCHAR(100) PRIMARY KEY
	,Employee_ID INT REFERENCES Employees(Employee_ID)
	,From_Date VARCHAR(100)
	,To_Date VARCHAR(100)
)
;

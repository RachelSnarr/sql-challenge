SELECT employees.employee_id, employees.last_name, employees.first_name, 
	employees.gender, salaries.salary
	FROM employees
	INNER JOIN salaries
	ON salaries.employee_id = employees.employee_id
;

SELECT * FROM employees
	WHERE hire_date ~* '1986'
;

SELECT department_manager.department_id, departments.department_name,
	department_manager.employee_id, employees.last_name, employees.first_name, 
	department_manager.from_date, department_manager.to_date
	FROM department_manager
	INNER JOIN departments
	ON departments.department_id = department_manager.department_id
	INNER JOIN employees
	ON employees.employee_id = department_manager.employee_id
;

SELECT employees.employee_id, employees.last_name, employees.first_name,
	departments.department_name
	FROM employees
	LEFT JOIN department_employee
	ON department_employee.employee_id = employees.employee_id
	LEFT JOIN departments
	ON departments.department_id = department_employee.department_id
;

SELECT * FROM employees
	WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%'
;

SELECT employees.employee_id, employees.last_name, employees.first_name,
	departments.department_name
	FROM employees
	LEFT JOIN department_employee
	ON department_employee.employee_id = employees.employee_id
	LEFT JOIN departments
	ON departments.department_id = department_employee.department_id
	WHERE departments.department_name = 'Sales'
;

SELECT employees.employee_id, employees.last_name, employees.first_name,
	departments.department_name
	FROM employees
	LEFT JOIN department_employee
	ON department_employee.employee_id = employees.employee_id
	LEFT JOIN departments
	ON departments.department_id = department_employee.department_id
	WHERE departments.department_name = 'Sales'
	OR departments.department_name = 'Development'
;


SELECT last_name, COUNT (*) AS Frequency
	FROM Employees
	GROUP BY last_name
;


SELECT *
	FROM Employees
	WHERE employee_id=499942
; ---LOL @ this one---


























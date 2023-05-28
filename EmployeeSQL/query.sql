--Check table entries/data

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;


--List the employee number, last name, first name, sex, and salary of each employee
SELECT
	emp.emp_no,
	emp.last_name,
	emp.first_name,
	emp.sex,
	sal.salary
	FROM employees AS emp
	LEFT JOIN salaries AS sal
		ON emp.emp_no = sal.emp_no
;

--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT
	emp.first_name,
	emp.last_name,
	emp.hire_date
	FROM employees AS emp
		WHERE EXTRACT(YEAR FROM hire_date) = 1986
;

--List the manager of each department along with their department number, department name, employee number, last name, and first name

SELECT
	dm.dept_no,
	dept.dept_name,
	emp.emp_no,
	emp.last_name,
	emp.first_name
		
	FROM employees AS emp
		INNER JOIN dept_manager AS dm 
			ON emp.emp_no = dm.emp_no
		LEFT JOIN departments AS dept 
			ON dm.dept_no = dept.dept_no
;
	
--List the department number for each employee along with that employee’s employee number, last name, first name, and department name

SELECT
	de.dept_no,
	dept.dept_name,
	emp.emp_no,
	emp.last_name,
	emp.first_name
	FROM employees as emp
		LEFT JOIN dept_emp AS de
			ON emp.emp_no = de.emp_no
		LEFT JOIN departments AS dept
			ON de.dept_no = dept.dept_no
;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

SELECT
	emp.first_name,
	emp.last_name,
	emp.sex
	FROM employees AS emp
		WHERE 
			emp.first_name = 'Hercules'
		AND
			emp.last_name LIKE 'B%'		
;

--List each employee in the Sales department, including their employee number, last name, and first name

SELECT
--	dept.dept_name,
	emp.emp_no,
	emp.last_name,
	emp.first_name
	FROM employees AS emp
		LEFT JOIN dept_emp AS de
			ON emp.emp_no = de.emp_no
		LEFT JOIN departments AS dept
			ON de.dept_no = dept.dept_no
		WHERE dept.dept_name = 'Sales'
;

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name

SELECT
	emp.emp_no,
	emp.last_name,
	emp.first_name,
	dept.dept_name
	FROM employees AS emp
		LEFT JOIN dept_emp AS de
			ON emp.emp_no = de.emp_no
		LEFT JOIN departments AS dept
			ON de.dept_no = dept.dept_no
		WHERE 
			dept.dept_name = 'Sales'
		OR
			dept.dept_name = 'Development'
;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

SELECT
	last_name,
		COUNT(last_name) AS count
	FROM employees AS emp
		GROUP BY emp.last_name
		ORDER BY count DESC
;
		
	
	

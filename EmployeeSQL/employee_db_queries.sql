-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employees AS emp
INNER JOIN salaries AS sal
ON emp.emp_no = sal.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT depm.dept_no, dep.dept_name, emp.emp_no, emp.last_name, emp.first_name
FROM dept_manager AS depm
INNER JOIN departments AS dep
ON dep.dept_no = depm.dept_no
INNER JOIN employees AS emp
ON emp.emp_no = depm.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT d_emp.dept_no, emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM dept_emp AS d_emp
INNER JOIN departments AS dep
ON dep.dept_no = d_emp.dept_no
INNER JOIN employees AS emp
ON emp.emp_no = d_emp.emp_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE (LOWER(first_name) = 'hercules') AND (LOWER(last_name) LIKE 'b%');

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT d_emp.emp_no, emp.last_name, emp.first_name
FROM employees AS emp
INNER JOIN dept_emp AS d_emp
ON emp.emp_no = d_emp.emp_no
INNER JOIN departments AS dep
ON dep.dept_no = d_emp.dept_no
WHERE LOWER(dep.dept_name) = 'sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT d_emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees AS emp
INNER JOIN dept_emp AS d_emp
ON emp.emp_no = d_emp.emp_no
INNER JOIN departments AS dep
ON dep.dept_no = d_emp.dept_no
WHERE LOWER(dep.dept_name) = 'sales' OR LOWER(dep.dept_name) = 'development';

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER by last_name DESC;
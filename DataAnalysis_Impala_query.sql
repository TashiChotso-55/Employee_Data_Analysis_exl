<--A list showing employee number, last name, first name, sex, and salary for each employee1.-->
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;
<-- 2.A list showing first name, last name, and hire date for employees who were hired in 1986 -->
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986'
ORDER BY hire_date;

<--3. A list showing the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name. -->
SELECT department.dept_no, department.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM department
JOIN dept_manager
ON department.dept_no = dept_manager.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;


<--4. A list showing the department of each employee with the following information: employee number, last name, first name, and department name. -->
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, department.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN department
ON dept_emp.dept_no = department.dept_no;

<-- 5. A list showing first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B.“-->
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name Like 'B%'


<--6. A list showing all employees in the Sales department, including their employee number, last name, first name, and department name. -->
SELECT department.dept_name, employees.last_name, employees.first_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN department
ON dept_emp.dept_no = department.dept_no
WHERE department.dept_name = 'Sales';

<-- 7. A list showing all employees in the Sales and Development departments, including their employee number, last name,first name, and department name. -->
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN department
ON dept_emp.dept_no = department.dept_no
WHERE departments.dept_name = 'Sales' 
OR department.dept_name = 'Development';


<--7. A list showing the frequency count of employee last names, in descending order. ( i.e., how many employees share each last name -->
SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;


8. Histogram to show the salary distribution among the employees
9. Bar graph to show the Average salary per title (designation)
10. Calculate employee tenure & show the tenure distribution among the employees
11. Perform your own Analysis (based on the data understanding)
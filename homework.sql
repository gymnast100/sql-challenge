Select * from employees;
Select * from salaries;

-- 1.List the following details of each employee: employee number, last name, first name, gender, and salary.
Select e.emp_no , e.last_name, e.first_name ,e.gender, s.salary
From employees e
Join salaries s on e.emp_no =  s.emp_no;

--2.List employees who were hired in 1986.
Select e.emp_no, e.last_name,e.first_name, e.hire_date
From employees e
Where e.hire_date between '1986-01-01' and '1986-12-31';

-- List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
Select d.dept_no,d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
From departments d 
Join dept_manager m  on d.dept_no = m.dept_no
Join employees  e on e.emp_no = m.emp_no;

-- table named incorrectly and hence renamed  and constraint was renamed as well
ALTER TABLE "dept-emp"
RENAME TO dept_emp
ALTER TABLE if exists  "dept_emp" RENAME CONSTRAINT "fk_dept-emp_emp_no" TO "fk_dept_emp_emp_no";

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
Select de.emp_no, ep.last_name, ep.first_name, dp.dept_name
From dept_emp de
Join departments dp on  de.dept_no = dp.dept_no
Join employees ep on ep.emp_no = de.emp_no;

 --List all employees whose first name is "Hercules" and last names begin with "B."
Select first_name, last_name FROM employees WHERE first_name = 'Hercules' and last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select de.emp_no, e.last_name, e.first_name, d.dept_name 
From dept_emp de 
Join departments d on d.dept_no = de.dept_no 
Join employees e ON e.emp_no = de.emp_no
WHERE d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select de.emp_no, e.last_name, e.first_name, d.dept_name 
From dept_emp de 
Join departments d on d.dept_no = de.dept_no 
Join employees e ON e.emp_no = de.emp_no
WHERE d.dept_name = 'Development' or d.dept_name = 'Sales';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name. 
Select last_name , COUNT ( last_name)AS Frequency From employees 
Group By last_name
Order By 2 desc;

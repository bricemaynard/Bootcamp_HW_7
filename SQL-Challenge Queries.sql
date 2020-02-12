--SQL QUERY 1
SELECT Employees.Emp_No,
	Employees.Last_Name,
	Employees.First_Name,
	Employees.Gender,
	Salaries.Salary
from Employees
INNER JOIN Salaries on Employees.Emp_No = Salaries.Emp_No;

--SQL QUERY 2
SELECT Employees.Emp_No,
	Employees.Last_Name,
	Employees.First_Name,
	Employees.Hire_Date
FROM Employees WHERE Hire_Date > '1985-12-31' and Hire_Date < '1987-01-01'

--SQL QUERY 3
SELECT department_managers.emp_no,
	department_managers.dept_no,
	departments.dept_name,
	employees.last_name,
	employees.first_name,
	department_managers.from_date,
	department_managers.to_date
from department_managers
inner join employees on department_managers.emp_no = employees.emp_no
inner join departments on department_managers.dept_no = departments.dept_no;

--SQL QUERY 4
SELECT Employees.Emp_No,
	Employees.First_Name,
	Employees.Last_Name,
	Departments.Dept_Name
from Employees
INNER JOIN department_employees on Employees.Emp_No = department_employees.Emp_No
INNER JOIN departments on department_employees.Dept_No = departments.Dept_No;

--SQL QUERY 5
SELECT Employees.First_Name,
	Employees.Last_Name
FROM Employees
WHERE First_Name = 'Hercules' AND Last_Name LIKE 'B%';

--SQL QUERY 6
SELECT Employees.Emp_No,
	Employees.First_Name,
	Employees.Last_Name,
	Departments.Dept_Name
FROM Employees
INNER JOIN department_employees on Employees.Emp_No = department_employees.Emp_No
INNER JOIN departments on department_employees.Dept_No = departments.Dept_No
WHERE departments.Dept_Name = 'Sales';

--SQL QUERY 7
SELECT Employees.Emp_No,
	Employees.First_Name,
	Employees.Last_Name,
	Departments.Dept_Name
FROM Employees
INNER JOIN department_employees on Employees.Emp_No = department_employees.Emp_No
INNER JOIN departments on department_employees.Dept_No = departments.Dept_No
WHERE departments.Dept_Name = 'Sales' or departments.Dept_Name = 'Development';

--SQL QUERY 8
SELECT Employees.Last_Name,
count(Last_Name) as namecount
from Employees
group by Last_Name
order by namecount desc;

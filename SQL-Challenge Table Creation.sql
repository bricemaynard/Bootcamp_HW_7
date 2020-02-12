Create TABLE departments(
	Dept_No VARCHAR(4),
	Dept_Name VARCHAR(50),
	PRIMARY KEY (Dept_No)
);

CREATE TABLE department_employees(
	Emp_No INTEGER,
	Dept_No VARCHAR(4),
	From_Date DATE,
	To_Date DATE,
	PRIMARY KEY (Emp_No),
	FOREIGN KEY (Dept_No) REFERENCES departments(Dept_No)
);

CREATE TABLE department_managers(
	Dept_No VARCHAR(4),
	Emp_No INTEGER,
	From_Date DATE,
	To_Date DATE,
	PRIMARY KEY (Emp_No),
	FOREIGN KEY (Dept_No) REFERENCES departments(Dept_No)
);

CREATE TABLE employees(
	Emp_No INTEGER,
	Birth_Date DATE,
	First_Name VARCHAR(50),
	Last_Name VARCHAR(50),
	Gender VARCHAR(1),
	Hire_Date DATE,
	PRIMARY KEY (Emp_No)
);

CREATE TABLE salaries(
	Emp_No INTEGER,
	Salary INTEGER,
	From_Date DATE,
	To_Date DATE,
	PRIMARY KEY (Emp_No),
	FOREIGN KEY (Emp_No) REFERENCES employees(Emp_No)
);

Create TABLE titles(
	Emp_No INTEGER,
	Title VARCHAR(100),
	From_Date DATE,
	To_Date DATE,
	PRIMARY KEY (Emp_No, From_Date),
	FOREIGN KEY (Emp_No) REFERENCES employees(Emp_No)
);

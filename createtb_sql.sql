DROP TABLE IF EXISTS department;
CREATE TABLE department(
	dept_no varchar(10)  NOT NULL ,
	dept_name varchar(30) NOT NULL,
	PRIMARY KEY (dept_no)
);
LOAD DATA LOCAL INFILE  '/home/anabig114245/department.csv'
INTO TABLE department
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 ROWS;

DROP TABLE IF EXISTS titles;
CREATE TABLE titles(
	title_id varchar(20) NOT NULL,
	title varchar(20) NOT NULL,
	PRIMARY KEY(title_id)
);
LOAD DATA LOCAL INFILE  '/home/anabig114245/titles.csv'
INTO TABLE titles
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 ROWS;

DROP TABLE IF EXISTS employees;
CREATE TABLE employees(emp_no int NOT NULL,emp_title_id VARCHAR(10),birth_date VARCHAR(12),
			first_name VARCHAR(15),last_name VARCHAR(15),sex CHAR(2),
			hire_date VARCHAR(12),no_of_projects int,Last_performance_rating VARCHAR(5)
			,left_ VARCHAR(10),last_date VARCHAR(12),PRIMARY KEY(emp_no)
			
);
LOAD DATA LOCAL INFILE  '/home/anabig114245/employees.csv'
INTO TABLE employees
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 ROWS;

DROP TABLE IF EXISTS dept_managers;
CREATE TABLE dept_managers(
	dept_no varchar(10) NOT NULL,
	emp_no int NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES department(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
); 
LOAD DATA LOCAL INFILE  '/home/anabig114245/dept_manager.csv'
INTO TABLE dept_managers
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 ROWS;

DROP TABLE IF EXISTS dept_emp;
CREATE TABLE dept_emp(
	emp_no int NOT NULL,
	dept_no varchar(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)
); 
LOAD DATA LOCAL INFILE  '/home/anabig114245/dept_emp.csv'
INTO TABLE dept_emp
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 ROWS;

DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries(
	emp_no int NOT NULL,
	Salary bigint NOT NULL, 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

LOAD DATA LOCAL INFILE  '/home/anabig114245/salaries.csv'
INTO TABLE salaries
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 ROWS;


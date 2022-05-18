

CREATE EXTERNAL TABLE department(dept_no varchar(10) ,dept_name varchar(30))
STORED AS PARQUET LOCATION "/user/anabig114245/Projectexl/department";


CREATE EXTERNAL TABLE  titles(title_id varchar(20),title varchar(20))
STORED AS PARQUET LOCATION "/user/anabig114245/Projectexl/titles";


CREATE EXTERNAL TABLE employees(emp_no int,emp_title_id VARCHAR(10),birth_date VARCHAR(12),
first_name VARCHAR(15),last_name VARCHAR(15),sex CHAR(2),
hire_date VARCHAR(12),no_of_projects int,Last_performance_rating VARCHAR(5),
left_ VARCHAR(10),last_date VARCHAR(12))
STORED AS PARQUET LOCATION "/user/anabig114245/Projectexl/employees";



CREATE EXTERNAL TABLE dept_managers(dept_no varchar(10),emp_no int)
STORED AS PARQUET LOCATION "/user/anabig114245/Projectexl/dept_managers"; 


CREATE EXTERNAL TABLE dept_emp(emp_no int,dept_no varchar(10))
STORED AS PARQUET LOCATION "/user/anabig114245/Projectexl/dept_emp"; 


CREATE EXTERNAL TABLE salaries(emp_no int,Salary bigint)
STORED AS PARQUET LOCATION "/user/anabig114245/Projectexl/salaries";


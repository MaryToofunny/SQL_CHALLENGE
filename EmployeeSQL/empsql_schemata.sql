DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS dept;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS title;


--1.create table of employees
CREATE TABLE employees(
	emp_no INT,
	emp_title_id VARCHAR NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date VARCHAR NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES title (title_id)
);

--2.create table of title
CREATE TABLE title (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
	
);
--3.create table of salaries
CREATE TABLE salaries (
	
	emp_no INT,
	salary INT,
	PRIMARY KEY (emp_no INT )
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
--4.create table of department
CREATE TABLE dept (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
);
--5.create table of deptartment_employees
CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR NOT NULL,
	PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES dept (dept_no)
);
--6.create table of department_manager
CREATE TABLE dept_manager(
	emp_no INT,
	dept_no VARCHAR NOT NULL,
	PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES dept (dept_no)
);

select * from employees;
select * from dept;
select * from dept_emp;
select * from dept_manager;
select * from salaries;
select * from title;
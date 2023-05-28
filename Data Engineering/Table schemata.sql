-- DROP TABLE IF EXISTS salaries;
-- DROP TABLE IF EXISTS dept_manager;
-- DROP TABLE IF EXISTS dept_emp;
-- DROP TABLE IF EXISTS employees;
-- DROP TABLE IF EXISTS titles;
-- DROP TABLE IF EXISTS departments;

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/n1tW2o
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

--Was edited in VSCode before copying into Postgres query


-- import first
CREATE TABLE departments (
    dept_no varchar(30) PRIMARY KEY,
    dept_name varchar(30) 
);

-- import second
CREATE TABLE titles (
    title_id varchar(30)   NOT NULL PRIMARY KEY,
    title varchar(30)   NOT NULL
);

-- import third
CREATE TABLE employees (
    emp_no int   NOT NULL PRIMARY KEY,
    emp_title_id varchar(30)   NOT NULL REFERENCES titles(title_id),
    birth_date date   NOT NULL,
    first_name varchar(30)   NOT NULL,
    last_name varchar(30)   NOT NULL,
    sex varchar(30)   NOT NULL,
    hire_date date   NOT NULL
);

-- import forth
CREATE TABLE dept_emp (
    emp_no int   NOT NULL REFERENCES employees(emp_no),
    dept_no varchar(30)   NOT NULL REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no,dept_no)
);

-- import fifth
CREATE TABLE dept_manager (
    dept_no varchar(30)   NOT NULL REFERENCES departments(dept_no),
    emp_no int   NOT NULL REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no,emp_no)
);

-- import sixth
CREATE TABLE salaries (
    emp_no int   NOT NULL PRIMARY KEY,
    salary int   NOT NULL
);

-- I had issues with the COPY command to read CSV files into the SQL tables...So I used the Postgres UI to import the data.
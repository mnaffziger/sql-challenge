-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/n1tW2o
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE departments (
    dept_no varchar(30)   NOT NULL PRIMARY KEY,
    dept_name varchar(30)   NOT NULL
);

CREATE TABLE titles (
    title_id varchar(30)   NOT NULL PRIMARY KEY,
    title varchar(30)   NOT NULL
);

CREATE TABLE employees (
    emp_no int   NOT NULL PRIMARY KEY,
    emp_title_id varchar(30)   NOT NULL REFERENCES titles(title_id),
    birth_date date   NOT NULL,
    first_name varchar(30)   NOT NULL,
    last_name varchar(30)   NOT NULL,
    sex varchar(30)   NOT NULL,
    hire_date date   NOT NULL
);

CREATE TABLE dept_emp (
    emp_no int   NOT NULL PRIMARY KEY REFERENCES employees(emp_no),
    dept_no varchar(30)   NOT NULL PRIMARY KEY REFERENCES departments (dept_no)
);

CREATE TABLE salaries (
    emp_no int   NOT NULL PRIMARY KEY,
    salary int   NOT NULL
);


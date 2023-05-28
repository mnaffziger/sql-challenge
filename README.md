# sql-challenge
---
Module 9 Challenge: sql
---

### ERD Diagrams
* ERD was created on QuickDBD (quickdatabasediagrams.com)
* Foreign keys were created with QuickDBD, but upon direct copy paste into Postgres query, there were relationship issues arrizing from the multiple primary keys and foreign keys.  
* Using VSCode, I edited the foreign keys to a REFERENCES statement.
* Tables with non-unique table primary keys were identified as PRIMARY KEYS('key1', 'key2',etc) at the end of the CREATE TABLE block
* Table schemata SQL code is saved in the "Data Engineering" directory as "Table Schemata.sql"
* ERD was saved as a a .png file and located in the "EmployeeSQL" directory as "ERD_employees.png"

### Data Import
* I had some difficulties attempting to write SQL code up copy/CSV read the data from the "src" directory (where the sstarting CSV files are located)
* Originaly I tried a COPY command
    - Using a relative file path only provided "directoy does not exist" errors
    - Writing a complete/absolute path provided permission errors
* I resorted to using Postgres' UI to import the data into the appropiate table

### Employment Queries
* Query scrpits are saved within the "EmployeeSQL" directory as "employment_query.sql"


### Additional Help
* Most of the work was derived from class activities
* Guidence was consulted on stratagies linking multiple JOIN and WHERE commands together
    - Stack overflow was mostly used for this and the references for this search thread are many

# sql-challenge
---
Module 9 Challenge: sql
---

### ERD Diagrams
* ERD was created on QuickDBD (quickdatabasediagrams.com)
* Foreign keys were created with QuickDBD, but upon direct copy paste into Postgres query, there were relationship issues arrizing from the multiple primary keys and foreign keys.  
* Using VSCode, I edited the foreign keys to a REFERENCES statement.
* Tables with non-unique table primary keys were identified as PRIMARY KEYS('key1', 'key2',etc) at the end of the CREATE TABLE block

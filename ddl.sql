-- DDL -- Data Definition Language

-- 1. Create Database
create database mydb;
create database urdb;
create database cfamily;

use mydb;

-- 2. Create tables
create table first(
	empno	int,
    ename	varchar(20)
);

-- 3. Describe table
describe first;
desc first;
DESC first;

-- ALTER Definition:-
-- Add a new column - Add address column
alter table first add(
	address	varchar(50)
);
desc first;

-- Add sal column with int datatype
alter table first add(
	sal	int
);
desc first;

-- Increase datatype size of ename column.
alter table first modify ename varchar(50);
desc first;

-- Change sal column datatype from int to floating point datatype(decimal)
alter table first modify sal decimal(7,2);
desc first;
		-- or
alter table first modify ename varchar(50), modify sal decimal(7,2);        

-- Drop address column
desc first;
alter table first drop address;
desc first;
alter table first drop column address,drop column sal;
alter table first drop sal;
desc first;

-- Drop a table first
show tables;
drop table first;
show tables;

-- Drop MyDB Database
show databases;
drop database mydb;
show databases;

use urdb;
create table test(id int);
create table tab1(id int);
show tables;
drop database urdb;
show databases;

-- Truncate table
use cfamily;
create table emp(empno int,ename varchar(30),sal int,gender varchar(6),dno int);
select * from emp;
truncate table emp;
select * from emp;

-- Rename Command
-- Rename Table 
show tables;
rename table abc to test;
show tables;

-- Rename Column emp table sal column to salary column
desc emp;
alter table emp rename column sal to salary;
desc emp;

alter table emp change salary sal int, change empno id int;
desc emp;















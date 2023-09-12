CREATE TABLE EMPLOYEE (
eid int,
ename varchar2(20),
gender varchar2(5) check (gender in('M','F','Male','Female')), 
email varchar2(25) check (email like '%@%'),
join_date varchar2(20) , 
PRIMARY KEY(eid));

insert into employee values (1, 'Hashmita', 'M','hashmita@gamil.com', '1/1/2016');
insert into employee values (2, 'Samia','F', 'samia@gamil.com', '1/1/2016');
insert into employee values (3, 'Muna','F', 'muna@gmail.com', '1/1/2016');
insert into employee values (4, 'Yashita','M', 'yashita@gamil.com', '1/1/2016');
insert into employee values (5, 'Apoorva','M', 'apoorv@yahoo.com', '1/1/2016');


CREATE TABLE SALARY(
sid int, 
basic int,
allowance int, 
PRIMARY KEY(sid)); 

insert into salary values(1, 18000,5000);
insert into salary values(2, 20000,5000);
insert into salary values(3, 22000,6000);
insert into salary values(4, 35000,6500);
insert into salary values(5, 50000,7000);


CREATE TABLE EMPLOYEE_SALARY(
eid int, 
sid int,
FOREIGN KEY(eid) REFERENCES EMPLOYEE(eid), 
FOREIGN KEY(sid) REFERENCES SALARY(sid));

insert into employee_salary values(1,1);
insert into employee_salary values(2, 3);
insert into employee_salary values(3,5);
insert into employee_salary values(4,2);
insert into employee_salary values(5,1);


CREATE TABLE LEAVE(
lid int,
eid int,
l_month varchar2(15), 
l_day int,
PRIMARY KEY(lid));

insert into leave values(1,1, 'Jan/16', 3);
insert into leave values(2,3, 'Jan/16', 4);
insert into leave values(3,2, 'Jan/16', 5);
insert into leave values(4,6, 'Jan/16', 3);
insert into leave values(5,4, 'Jan/16', 1);


CREATE TABLE TRANSECTION (
tid int,
eid int,
ammount int,
t_date date,
s_month varchar2(15), 
PRIMARY KEY(tid),
FOREIGN KEY(eid) REFERENCES EMPLOYEE(eid));

CREATE TABLE FUND (
fid int,
fund_amnt int, 
PRIMARY KEY(fid));

CREATE TABLE FUND_Audit (
amnt_new int, 
amnt_old int,
Update_date varchar2(30));

CREATE TABLE EMPLOYEE_SALARY_Audit(
new_sid int, 
old_sid int,
Changing_date varchar2(30));
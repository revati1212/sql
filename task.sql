create database today;
use today;
create table dept(deptid int primary key,deptname varchar(30),location varchar(30));
CREATE TABLE employee (employeeid INT PRIMARY KEY,name VARCHAR(30) NOT NULL,email VARCHAR(30) UNIQUE NOT NULL,phone VARCHAR(15),dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(deptid)
);
insert into dept(deptid,deptname,location) values
(1,'manager','india'),(2,'HR','prance'),(3,'CEO','landon'),(4,'associate engg','pakistan'),(5,'intern','iran'),(6,'engg','china'),(7,'trainer','newyork'),
(8,'recruiter','japan'),(9,'trainee','southafrica'),(10,'pr','westindies');
select * from dept; 
insert into employee (employeeid,name,email,phone,deptid) values
(101,'revati','revatiahirasang56@gmail.com',8660058812,1),
(102,'teji','teji@gmail.com',8660058813,2),
(103,'nidhi','nidhi@gmail.com',8660058814,3),
(104,'pinky','pinky@gmail.com',8660058815,1),
(105,'pooja','pooja@gmail.com',8660058816,2),
(106,'rohini','rohini@gmail.com',8660058817,3),
(107,'megh','megh@gmail.com',8660058815,1),
(108,'jyoti','jyoti@gmail.com',8660058815,2),
(109,'anjali','anjali@gmail.com',8660058815,3),
(110,'rohit','rohit@gmail.com',8660058815,1);
 select * from today;
alter table dept;
alter table dept add constraint deptid_chk check( deptid>0);


alter table employee;
alter table employee add constraint emploteeid_chk check( employeeid>=0);

alter table employee add constraint phone_chk check( phone>=0);

select * from dept where deptid between 1 AND 3;

select * from dept where deptname like 'r%';

select* from dept order by deptname;







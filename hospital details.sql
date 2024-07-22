create database details_of_hospital;
use details_of_hospital;
create table hospital_details (id int,hos_name varchar(50),hos_add varchar(20),no_of_nurse int,
no_of_doctor int,no_of_paitient int,dai_charge bigint,sal_doc bigint,appointment varchar(30),
tablet_name varchar(30));
insert into hospital_details values(1,'bims','belagavi',100,5854,4878,5445,54584,'18july','dolo');
insert into hospital_details values(2,'divya','gkk',200,142,548,7948,48455,'may','abc');
insert into hospital_details values(3,'shrikant','bgm',300,551,255,5894,60000,'june','parasitamol');
insert into hospital_details values(4,'deeepak','bangalure',562,259,549,5494,49794,'jan','xyz');
insert into hospital_details values(5,'kalpana','bgk',500,659,500,4645,50000,'aug','omez');
insert into hospital_details values(6,'darshan','athani',600,579,500,1000,50000,'18july','painkiller');
insert into hospital_details values(7,'arun','chikodi',700,100,579,1000,50000,'feb','dolo');
insert into hospital_details values(8,'madhu','savdati',800,100,500,4787,795144,'18july','dolo');
insert into hospital_details values(9,'kiran','na.ragunda',900,5787,500,1000,47875,'sep','painkiller');
insert into hospital_details values(10,'kushi','badami',100,774,500,57487,50000,'18july','dolo');
insert into hospital_details values(11,'rishi','mumbai',200,100,500,1000,47875,'nov','osr');
insert into hospital_details values(12,'bhagya','rajajinagar',300,100,500,1000,50000,'mar','calpol');
insert into hospital_details values(13,'laxmi','btm',400,100,45785,1000,5058000,'may','dolo');
insert into hospital_details values(14,'pooja','mysore',500,100,500,44784,50000,'jan ','calpol');
insert into hospital_details values(15,'sanjana','mangalore',600,100,500,1000,50000,'dec','strepsile');
insert into hospital_details values(16,'sudha','belagavi',700,100,500,4784,50000,'18july','bandage');
insert into hospital_details values(17,'annapurna','gkk',500,100,500,1000,57845,'aug','oil');
insert into hospital_details values(18,'kle','nippani',200,100,500,58445,587844,'jan','detole');
insert into hospital_details values(19,'gvt','bangalore',890,59,578,1000,50000,'feb','650dolo');
insert into hospital_details values(20,'ganga','jamakandi',589,100,500,1000,44485,'sep','dolo');
select * from hospital_details;
desc hospital_details;
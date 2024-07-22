create database details_of_tourist;
use details_of_tourist;
create table tourist_details (id int,tourist_place varchar(50),vehicle_name varchar(20),pasengers int,
driver int,pertrol_per_km int,no_places bigint,amount_spent bigint,ratings int,
feedback varchar(30));
insert into tourist_details values(1,'gkk falls ','bus',50,1,4878,5445,54584,5,'good');
insert into tourist_details values(2,'nandi hills','bike',20,1,548,7948,48455,2,'avg');
insert into tourist_details values(3,'aihole','bus',30,1,1,5894,60000,3,'bad');
insert into tourist_details values(4,'hampi','zeep',56,1,549,5494,49794,2,'mdm');
insert into tourist_details values(5,'gokarna','bus',50,1,500,4645,50000,2,'good');
insert into tourist_details values(6,'udapi','bike',60,1,500,1000,50000,3,'verygood');
insert into tourist_details values(7,'belur','car',70,1,579,1000,50000,3,'avg');
insert into tourist_details values(8,'halebidu','car',80,1,500,4787,795144,1,'good');
insert into tourist_details values(9,'jog falls','bus',90,1,500,1000,47875,3,'nice');
insert into tourist_details values(10,'badami','train',100,1,500,57487,50000,6,'good');
insert into tourist_details values(11,'dandeli','train',200,1,500,1000,47875,9,'mdm');
insert into tourist_details values(12,'bijapur','truck',30,1,500,1000,50000,9,'avg');
insert into tourist_details values(13,'karwar','bike',1,1,45785,1000,5058000,10,'nice');
insert into tourist_details values(14,'taj mahal','taxi',5,1,500,44784,50000,2,'good');
insert into tourist_details values(15,'varnasi','bus',60,1,500,1000,50000,4,'good');
insert into tourist_details values(16,'jaipur','train',70,1,500,4784,50000,3,'exl');
insert into tourist_details values(17,'goa','taxi',5,1,500,1000,57845,9,'beauifull');
insert into tourist_details values(18,'manali','car',2,1,500,58445,587844,6,'bad');
insert into tourist_details values(19,'ajanta','car',8,1,578,1000,50000,3,'nice');
insert into tourist_details values(20,'ganga','auto',5,1,500,1000,44485,1,'bad');
select * from tourist_details;
desc tourist_details;
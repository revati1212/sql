create database RTO;
use RTO;
create table LLR_info(LLR_ID int primary key, name varchar(30),age int,address varchar(30),
phone varchar(15),email varchar(30),city varchar(30),LLR_date Date);
insert into LLR_info(LLR_ID,name,age,address,phone,email,city,LLR_date) values
(1,'revati',22,'rajajinagar',8660058812,'revatiahirasang@gmail.com','banglore','2024-08-01'),
(2,'rohini',22,'kengeri',8660058813,'rohini@gmail.com','belagavi','2024-08-02'),
(3,'pooja',24,'sadashiv nagar',8660058814,'pooja@gmail.com','hubli','2024-08-03'),
(4,'keerthi',23,'vedavnagar',8660058815,'keerthi@gmail.com','hubli','2024-08-04'),
(5,'akshii',21,'laalbag',8660058816,'akshii@gmail.com','banglore','2024-08-05'),
(6,'divya',22,'mejastic',8660058817,'divya@gmail.com','gokak','2024-08-06'),
(7,'laxmi',22,'ramnagar',8660058818,'laxmi@gmail.com','athni','2024-08-07'),
(8,'bhagya',25,'shreenagar',8660058819,'bhagya@gmail.com','bagalkot','2024-08-08'),
(9,'ashwini',22,'shivagicircle',8660058820,'ashwini@gmail.com','bijapur','2024-08-09'),
(10,'kiran',22,'channamma',8660058821,'kiran@gmail.com','pune','2024-08-10'),
(11,'raam',25,'layout',8660058822,'raam@gmail.com','maysuru','2024-08-11'),
(12,'priya',27,'chikkpete',8660058823,'priya@gmail.com','davangere','2024-08-12'),
(13,'sanju',26,'badami',8660058824,'sanju@gmail.com','dharwad','2024-08-13'),
(14,'akash',21,'vkp',8660058825,'akash@gmail.com','kolar','2024-08-14'),
(15,'vickya',20,'kolhapur',8660058826,'vicky@gmail.com','goa','2024-08-15'),
(16,'sumita',24,'halfway',8660058827,'sumita@gmail.com','sikkim','2024-08-16'),
(17,'raj',30,'gpt',8660058828,'raj@gmail.com','kalburgi','2024-08-29'),
(18,'chaya',26,'kelpenagar',8660058829,'chaya@gmail.com','delhi','2024-08-26'),
(19,'manju',29,'hangasi',8660058830,'manju@gmail.com','dubai','2024-08-25'),
(20,'jay',50,'rani',8660058831,'jay@gmail.com','wayanad','2024-08-23');

create table LLR_TEST_INFO(TEST_ID INT primary key,test_date DATE,score INT,result VARCHAR(50),test_center VARCHAR(30),
tester_name VARCHAR(30),vehicle_type VARCHAR(50),LLR_ID int, FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID)); 

insert into LLR_TEST_INFO(TEST_ID,test_date,score,result,test_center,tester_name,vehicle_type,LLR_ID) values

(101,'2024-08-01', 85,'Pass','CenterA','revati','Car', 1),
(102,'2024-08-02', 78,'Pass','CenterB','rohini','Bike', 2),
(103,'2024-08-03', 92,'Pass','CenterC','pooja','Car',3),
(104, '2024-08-04',88,'Pass','CenterD','akshuu','Truck', 4),
(105, '2024-08-05', 80, 'Pass', 'CenterE', 'keerthi', 'Car', 5),
(106, '2024-08-06', 77, 'Fail', 'CenterF', 'raamu', 'Bike', 6),
(107, '2024-08-07', 85, 'Pass', 'CenterG', 'vicky', 'Car', 7),
(108, '2024-08-08', 90, 'Pass', 'CenterH', 'manju', 'Truck', 8),
(109, '2024-08-09', 82, 'Pass', 'CenterI', 'shweta', 'Car', 9),
(110, '2024-08-10', 89, 'Pass', 'CenterJ', 'gani', 'Bike', 10),
(111, '2024-08-11', 84, 'Pass', 'CenterK', 'divya', 'Car', 11),
(112, '2024-08-12', 90, 'Pass', 'CenterL', 'laxmi', 'Bike', 12),
(113, '2024-08-13', 76, 'Fail', 'CenterM', 'shashi', 'Car', 13),
(114, '2024-08-14', 88, 'Pass', 'CenterN', 'jaya', 'Truck', 14),
(115, '2024-08-15', 91, 'Pass', 'CenterO', 'akash', 'Car', 15),
(116, '2024-08-16', 82, 'Pass', 'CenterP', 'ved', 'Bike', 16),
(117, '2024-08-17', 79, 'Fail', 'CenterQ', 'kushi', 'Car', 17),
(118, '2024-08-18', 87, 'Pass', 'CenterR', 'prema', 'Truck', 18),
(119, '2024-08-19', 84, 'Pass', 'CenterS', 'kiran', 'Car', 19),
(120, '2024-08-20', 80, 'Pass', 'CenterT', 'ashwini', 'Bike', 20);
 
 create table driving_licence_info( DL_ID INT PRIMARY KEY,LLR_ID INT,TEST_ID INT,issue_date DATE,expiry_date DATE,
 license_number VARCHAR(20), holder_name VARCHAR(30), address VARCHAR(30),vehicle_class VARCHAR(50), status VARCHAR(20),
 FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID), FOREIGN KEY (TEST_ID) REFERENCES LLR_TEST_INFO(TEST_ID));
 
insert into driving_licence_info(DL_ID,LLR_ID,issue_date,expiry_date,license_number,holder_name,address,vehicle_class,status) values
(1, 1, '2024-08-01', '2034-08-01', 'DL1234567890', 'Revati Sharma', 'Rajajinagar, Bangalore', 'Car', 'Active'),
(2, 2, '2024-08-02', '2034-08-02', 'DL1234567891', 'Rohini Patel', 'Kengeri, Belagavi', 'Bike', 'Active'),
(3, 3, '2024-08-03', '2034-08-03', 'DL1234567892', 'Pooja Reddy', 'Sadashiv Nagar, Hubli', 'Car', 'Active'),
(4, 4, '2024-08-04', '2034-08-04', 'DL1234567893', 'Keerthi Rao', 'Vedavnagar, Hubli', 'Truck', 'Active'),
(5, 5, '2024-08-05', '2034-08-05', 'DL1234567894', 'Akshii Kumar', 'Laalbag, Bangalore', 'Car', 'Active'),
(6, 6, '2024-08-06', '2034-08-06', 'DL1234567895', 'Divya Singh', 'Mejastic, Gokak', 'Bike', 'Active'),
(7, 7, '2024-08-07', '2034-08-07', 'DL1234567896', 'Laxmi Gupta', 'Ramnagar, Athni', 'Car', 'Active'),
(8, 8, '2024-08-08', '2034-08-08', 'DL1234567897', 'Bhagya Desai', 'Shreenagar, Bagalkot', 'Truck', 'Active'),
(9, 9, '2024-08-09', '2034-08-09', 'DL1234567898', 'Ashwini Nair', 'Shivagi Circle, Bijapur', 'Car', 'Active'),
(10, 10, '2024-08-10', '2034-08-10', 'DL1234567899', 'Kiran M', 'Channamma, Pune', 'Bike', 'Active'),
(11, 11, '2024-08-11', '2034-08-11', 'DL1234567800', 'Raam Verma', 'Layout, Mysuru', 'Car', 'Active'),
(12, 12, '2024-08-12', '2034-08-12', 'DL1234567801', 'Priya R', 'Chikkpete, Davangere', 'Car', 'Active'),
(13, 13, '2024-08-13', '2034-08-13', 'DL1234567802', 'Sanju Mehta', 'Badami, Dharwad', 'Truck', 'Active'),
(14, 14, '2024-08-14', '2034-08-14', 'DL1234567803', 'Akash Verma', 'VKP, Kolar', 'Car', 'Active'),
(15, 15, '2024-08-15', '2034-08-15', 'DL1234567804', 'Vicky Arora', 'Kolhapur, Goa', 'Bike', 'Active'),
(16, 16, '2024-08-16', '2034-08-16', 'DL1234567805', 'Sumita Joshi', 'Halfway, Sikkim', 'Car', 'Active'),
(17, 17, '2024-08-17', '2034-08-17', 'DL1234567806', 'Raj Singh', 'GPT, Kalburgi', 'Truck', 'Active'),
(18, 18, '2024-08-18', '2034-08-18', 'DL1234567807', 'Chaya Rao', 'Kelpenagar, Delhi', 'Car', 'Active'),
(19, 19, '2024-08-19', '2034-08-19', 'DL1234567808', 'Manju Patel', 'Hangasi, Dubai', 'Bike', 'Active'),
(20, 20, '2024-08-20', '2034-08-20', 'DL1234567809', 'Jay Kumar', 'Rani, Wayanad', 'Car', 'Active');

 
create table driving_licence_info_test_info(DL_ID INT PRIMARY KEY,TEST_ID INT,LLR_ID INT, test_date DATE,                          
test_score INT, result VARCHAR(30), test_center VARCHAR(30),officer_name VARCHAR(30), vehicle_type VARCHAR(30),issue_date DATE,                         
FOREIGN KEY (TEST_ID) REFERENCES LLR_TEST_INFO(TEST_ID), FOREIGN KEY (LLR_ID) REFERENCES LLR_INFO(LLR_ID));

 insert into driving_licence_info_test_info(DL_ID,TEST_ID,LLR_ID,test_date,test_score,result,test_center,officer_name,vehicle_type,issue_date) values 
(1, 101, 1, '2024-08-01', 85, 'Pass', 'CenterA', 'Revati Sharma', 'Car', '2024-08-01'),
(2, 102, 2, '2024-08-02', 78, 'Pass', 'CenterB', 'Rohini Patel', 'Bike', '2024-08-02'),
(3, 103, 3, '2024-08-03', 92, 'Pass', 'CenterC', 'Pooja Reddy', 'Car', '2024-08-03'),
(4, 104, 4, '2024-08-04', 88, 'Pass', 'CenterD', 'Keerthi Rao', 'Truck', '2024-08-04'),
(5, 105, 5, '2024-08-05', 80, 'Pass', 'CenterE', 'Akshii Kumar', 'Car', '2024-08-05'),
(6, 106, 6, '2024-08-06', 77, 'Fail', 'CenterF', 'Divya Singh', 'Bike', '2024-08-06'),
(7, 107, 7, '2024-08-07', 85, 'Pass', 'CenterG', 'Laxmi Gupta', 'Car', '2024-08-07'),
(8, 108, 8, '2024-08-08', 90, 'Pass', 'CenterH', 'Bhagya Desai', 'Truck', '2024-08-08'),
(9, 109, 9, '2024-08-09', 82, 'Pass', 'CenterI', 'Ashwini Nair', 'Car', '2024-08-09'),
(10, 110, 10, '2024-08-10', 89, 'Pass', 'CenterJ', 'Kiran M', 'Bike', '2024-08-10'),
(11, 111, 11, '2024-08-11', 84, 'Pass', 'CenterK', 'Raam Verma', 'Car', '2024-08-11'),
(12, 112, 12, '2024-08-12', 90, 'Pass', 'CenterL', 'Priya R', 'Bike', '2024-08-12'),
(13, 113, 13, '2024-08-13', 76, 'Fail', 'CenterM', 'Sanju Mehta', 'Car', '2024-08-13'),
(14, 114, 14, '2024-08-14', 88, 'Pass', 'CenterN', 'Akash Verma', 'Truck', '2024-08-14'),
(15, 115, 15, '2024-08-15', 91, 'Pass', 'CenterO', 'Vicky Arora', 'Car', '2024-08-15'),
(16, 116, 16, '2024-08-16', 82, 'Pass', 'CenterP', 'Sumita Joshi', 'Bike', '2024-08-16'),
(17, 117, 17, '2024-08-17', 79, 'Fail', 'CenterQ', 'Raj Singh', 'Car', '2024-08-17'),
(18, 118, 18, '2024-08-18', 87, 'Pass', 'CenterR', 'Chaya Rao', 'Truck', '2024-08-18'),
(19, 119, 19, '2024-08-19', 84, 'Pass', 'CenterS', 'Manju Patel', 'Car', '2024-08-19'),
(20, 120, 20, '2024-08-20', 80, 'Pass', 'CenterT', 'Jay Kumar', 'Bike', '2024-08-20')
ON DUPLICATE KEY UPDATE
    test_date = VALUES(test_date),
    test_score = VALUES(test_score),
    result = VALUES(result),
    test_center = VALUES(test_center),
    officer_name = VALUES(officer_name),
    vehicle_type = VALUES(vehicle_type),
    issue_date = VALUES(issue_date);










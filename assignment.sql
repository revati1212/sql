CREATE DATABASE ASSIGNMENT;
USE ASSIGNMENT;
CREATE TABLE state_info (state_code INT,state_name VARCHAR(50),capital_city VARCHAR(50),population_count BIGINT,total_area BIGINT,literacy_rate FLOAT,primary_language VARCHAR(50),gdp_inr_per_capita FLOAT,districts_count SMALLINT,birth_year VARCHAR(4));
CREATE TABLE scam_info (scam_id INT,scam_title VARCHAR(100),affected_state VARCHAR(50),incident_year VARCHAR(4),money_involved_inr FLOAT,people_count SMALLINT,mastermind VARCHAR(100), current_status VARCHAR(50),scam_category VARCHAR(50), additional_info TEXT);
ALTER TABLE state_info ADD (governor_name VARCHAR(50));
ALTER TABLE state_info ADD (chief_minister_name VARCHAR(50));
ALTER TABLE state_info ADD (assembly_seats INT);
ALTER TABLE state_info ADD (high_court_name VARCHAR(50));
ALTER TABLE state_info ADD (tourist_attraction  TEXT);
ALTER TABLE scam_info ADD (reported_by VARCHAR(100));
ALTER TABLE scam_info ADD (investigating_agency VARCHAR(100));
ALTER TABLE scam_info ADD (case_verdict VARCHAR(50));
ALTER TABLE scam_info ADD (punishment_details TEXT);
ALTER TABLE scam_info ADD (compensation_awarded FLOAT);
ALTER TABLE state_info RENAME COLUMN primary_language TO official_language;
ALTER TABLE state_info RENAME COLUMN birth_year TO founding_year;
ALTER TABLE state_info RENAME COLUMN gdp_inr_per_capita TO per_capita_gdp_inr;
ALTER TABLE state_info RENAME COLUMN literacy_rate TO literacy_percentage;
ALTER TABLE state_info RENAME COLUMN districts_count TO district_total;
ALTER TABLE scam_info RENAME COLUMN mastermind TO main_conspirator;
ALTER TABLE scam_info RENAME COLUMN people_count TO individuals_involved;
ALTER TABLE scam_info RENAME COLUMN money_involved_inr TO scam_amount_inr;
ALTER TABLE scam_info RENAME COLUMN incident_year TO year_of_scam;
ALTER TABLE scam_info RENAME COLUMN additional_info TO extra_details;
ALTER TABLE state_info MODIFY COLUMN population_count BIGINT;
ALTER TABLE state_info MODIFY COLUMN total_area BIGINT;
ALTER TABLE state_info MODIFY COLUMN founding_year VARCHAR(4);
ALTER TABLE state_info MODIFY COLUMN literacy_percentage FLOAT;
ALTER TABLE state_info MODIFY COLUMN district_total SMALLINT;
ALTER TABLE scam_info MODIFY COLUMN year_of_scam VARCHAR(4);
ALTER TABLE scam_info MODIFY COLUMN scam_amount_inr FLOAT;
ALTER TABLE scam_info MODIFY COLUMN individuals_involved SMALLINT;
ALTER TABLE scam_info MODIFY COLUMN punishment_details TEXT;
ALTER TABLE scam_info MODIFY COLUMN compensation_awarded FLOAT;
INSERT INTO state_info VALUES
(1, 'Maharashtra', 'Mumbai', 112374333, 307713, 82.34, 'Marathi', 249000, 36, '1960', 'Bhagat Singh Koshyari', 'Eknath Shinde', 288, 'Bombay High Court', 'Gateway of India, Ajanta Caves'),
(2, 'Uttar Pradesh', 'Lucknow', 199812341, 243286, 67.68, 'Hindi', 104000, 75, '1950', 'Anandiben Patel', 'Yogi Adityanath', 403, 'Allahabad High Court', 'Taj Mahal, Varanasi Ghats'),
(3, 'Gujarat', 'Gandhinagar', 60439692, 196024, 78.03, 'Gujarati', 135000, 33, '1960', 'Acharya Devvrat', 'Bhupendra Patel', 182, 'Gujarat High Court', 'Statue of Unity, Somnath Temple'),
(4, 'West Bengal', 'Kolkata', 91276115, 88752, 77.08, 'Bengali', 150000, 23, '1947', 'Jagdeep Dhankhar', 'Mamata Banerjee', 294, 'Calcutta High Court', 'Victoria Memorial, Sundarbans'),
(5, 'Tamil Nadu', 'Chennai', 72147030, 130058, 80.09, 'Tamil', 165000, 38, '1956', 'R. N. Ravi', 'M. K. Stalin', 234, 'Madras High Court', 'Marina Beach, Meenakshi Temple'),
(6, 'Karnataka', 'Bengaluru', 61095297, 191791, 75.36, 'Kannada', 145000, 30, '1956', 'Thawar Chand Gehlot', 'Siddaramaiah', 224, 'Karnataka High Court', 'Mysore Palace, Hampi'),
(7, 'Rajasthan', 'Jaipur', 68548437, 342239, 66.11, 'Hindi', 120000, 33, '1949', 'Kalraj Mishra', 'Ashok Gehlot', 200, 'Rajasthan High Court', 'Hawa Mahal, Jaisalmer Fort'),
(8, 'Bihar', 'Patna', 104099452, 94163, 61.80, 'Hindi', 52000, 38, '1912', 'Phagu Chauhan', 'Nitish Kumar', 243, 'Patna High Court', 'Mahabodhi Temple, Nalanda University'),
(9, 'Punjab', 'Chandigarh', 27743338, 50362, 75.84, 'Punjabi', 110000, 22, '1966', 'Banwarilal Purohit', 'Bhagwant Mann', 117, 'Punjab and Haryana High Court', 'Golden Temple, Wagah Border'),
(10, 'Haryana', 'Chandigarh', 25351462, 44212, 76.64, 'Hindi', 90000, 22, '1966', 'Bandaru Dattatreya', 'Manohar Lal Khattar', 90, 'Punjab and Haryana High Court', 'Sultanpur Bird Sanctuary, Surajkund Mela'),
(11, 'Kerala', 'Thiruvananthapuram', 33406061, 38863, 94.00, 'Malayalam', 170000, 14, '1956', 'Arif Mohammad Khan', 'Pinarayi Vijayan', 140, 'Kerala High Court', 'Backwaters, Kovalam Beach'),
(12, 'Telangana', 'Hyderabad', 35193978, 112077, 72.80, 'Telugu', 125000, 33, '2014', 'Tamilisai Soundararajan', 'K. Chandrashekar Rao', 119, 'Telangana High Court', 'Charminar, Golconda Fort'),
(13, 'Odisha', 'Bhubaneswar', 41974218, 155707, 72.87, 'Odia', 80000, 30, '1950', 'Ganeshi Lal', 'Naveen Patnaik', 147, 'Orissa High Court', 'Jagannath Temple, Chilika Lake'),
(14, 'Andhra Pradesh', 'Amaravati', 49386799, 162968, 67.41, 'Telugu', 85000, 13, '1956', 'Biswa Bhusan Harichandan', 'Y. S. Jagan Mohan Reddy', 175, 'Andhra Pradesh High Court', 'Tirupati, Araku Valley'),
(15, 'Assam', 'Dispur', 31205576, 78438, 72.19, 'Assamese', 65000, 33, '1947', 'Jagdish Mukhi', 'Himanta Biswa Sarma', 126, 'Gauhati High Court', 'Kaziranga National Park, Kamakhya Temple'),
(16, 'Jharkhand', 'Ranchi', 32988134, 79716, 66.41, 'Hindi', 70000, 24, '2000', 'C. P. Radhakrishnan', 'Hemant Soren', 81, 'Jharkhand High Court', 'Betla National Park, Hundru Falls'),
(17, 'Chhattisgarh', 'Raipur', 25545198, 135192, 71.04, 'Hindi', 60000, 27, '2000', 'Anusuiya Uikey', 'Bhupesh Baghel', 90, 'Chhattisgarh High Court', 'Chitrakote Falls, Bastar Palace'),
(18, 'Uttarakhand', 'Dehradun', 10086292, 53483, 78.82, 'Hindi', 85000, 13, '2000', 'Lt Gen Gurmit Singh', 'Pushkar Singh Dhami', 70, 'Uttarakhand High Court', 'Jim Corbett National Park, Nainital'),
(19, 'Himachal Pradesh', 'Shimla', 6864602, 55673, 82.80, 'Hindi', 75000, 12, '1971', 'Shiv Pratap Shukla', 'Sukhvinder Singh Sukhu', 68, 'Himachal Pradesh High Court', 'Rohtang Pass, Shimla Mall Road'),
(20, 'Tripura', 'Agartala', 3673917, 10486, 87.22, 'Bengali', 50000, 8, '1972', 'Satyadeo Narain Arya', 'Manik Saha', 60, 'Tripura High Court', 'Ujjayanta Palace, Neermahal');
SELECT * FROM state_info;
SELECT * FROM scam_info;
INSERT INTO scam_info  VALUES
(1, '2G Spectrum Scam', 'Tamil Nadu', '2008', 176000000000.00, 17, 'A. Raja', 'Closed', 'Telecom', 'One of the largest scams in India, involving telecom licenses', 'CBI', 'CBI', 'Guilty', 'Imprisonment and fines', 1000000000.00),
(2, 'Commonwealth Games Scam', 'Delhi', '2010', 70000000000.00, 10, 'Suresh Kalmadi', 'Closed', 'Sports', 'Irregularities in the Commonwealth Games budget and execution', 'Media', 'CBI', 'Guilty', 'Imprisonment and fines', 500000000.00),
(3, 'Satyam Scam', 'Andhra Pradesh', '2009', 14000000000.00, 7, 'Ramalinga Raju', 'Closed', 'Corporate', 'Corporate fraud involving the manipulation of accounts', 'Employees', 'CBI', 'Guilty', 'Imprisonment and fines', 200000000.00),
(4, 'VVIP Chopper Scam', 'Delhi', '2013', 3600000000.00, 5, 'Christian Michel', 'Ongoing', 'Defense', 'Bribery and corruption in the procurement of VVIP helicopters', 'Media', 'CBI', 'Pending', 'N/A', 0.00),
(5, 'Coal Allocation Scam', 'Multiple', '2012', 186000000000.00, 8, 'Manmohan Singh', 'Closed', 'Natural Resources', 'Irregularities in the allocation of coal blocks', 'Media', 'CBI', 'Guilty', 'Imprisonment and fines', 1500000000.00),
(6, 'Telgi Stamp Paper Scam', 'Maharashtra', '2002', 20000000000.00, 12, 'Abdul Karim Telgi', 'Closed', 'Forgery', 'Counterfeiting of stamp papers across multiple states', 'Police', 'CBI', 'Guilty', 'Imprisonment and fines', 300000000.00),
(7, 'Fodder Scam', 'Bihar', '1996', 950000000.00, 34, 'Lalu Prasad Yadav', 'Closed', 'Agriculture', 'Misappropriation of funds in the animal husbandry department', 'Employees', 'CBI', 'Guilty', 'Imprisonment and fines', 100000000.00),
(8, 'Vyapam Scam', 'Madhya Pradesh', '2013', 200000000.00, 50, 'Shivraj Singh Chouhan', 'Ongoing', 'Education', 'Admission and recruitment scam in Madhya Pradesh', 'Media', 'CBI', 'Pending', 'N/A', 0.00),
(9, 'PNB Fraud', 'Punjab', '2018', 11400000000.00, 2, 'Nirav Modi', 'Ongoing', 'Banking', 'Fraudulent transactions in Punjab National Bank', 'Bank Officials', 'CBI', 'Pending', 'N/A', 0.00),
(10, 'AgustaWestland Scam', 'Delhi', '2013', 3600000000.00, 5, 'Christian Michel', 'Ongoing', 'Defense', 'Bribery and corruption in the procurement of VVIP helicopters', 'Media', 'CBI', 'Pending', 'N/A', 0.00),
(11, 'Sahara Scam', 'Uttar Pradesh', '2014', 24000000000.00, 3, 'Subrata Roy', 'Ongoing', 'Finance', 'Illegal collection of deposits from investors', 'Investors', 'SEBI', 'Pending', 'N/A', 0.00),
(12, 'Saradha Chit Fund Scam', 'West Bengal', '2013', 24500000000.00, 20, 'Sudipta Sen', 'Closed', 'Finance', 'Ponzi scheme involving a large chit fund company', 'Investors', 'CBI', 'Guilty', 'Imprisonment and fines', 500000000.00),
(13, 'NSEL Scam', 'Maharashtra', '2013', 5600000000.00, 15, 'Jignesh Shah', 'Ongoing', 'Finance', 'Fraud in the National Spot Exchange Limited', 'Employees', 'ED', 'Pending', 'N/A', 0.00),
(14, 'Bank Loan Fraud', 'Multiple', '2018', 13000000000.00, 10, 'Vijay Mallya', 'Ongoing', 'Banking', 'Default on bank loans and money laundering', 'Banks', 'ED', 'Pending', 'N/A', 0.00),
(15, 'Adarsh Housing Scam', 'Maharashtra', '2010', 400000000.00, 6, 'Ashok Chavan', 'Closed', 'Real Estate', 'Misallocation of land meant for war widows', 'Residents', 'CBI', 'Guilty', 'Imprisonment and fines', 100000000.00),
(16, 'IPL Spot-Fixing', 'Multiple', '2013', 200000000.00, 3, 'S. Sreesanth', 'Closed', 'Sports', 'Spot-fixing in the Indian Premier League', 'Players', 'BCCI', 'Guilty', 'Lifetime ban', 0.00),
(17, 'CWG Scam', 'Delhi', '2010', 70000000000.00, 10, 'Suresh Kalmadi', 'Closed', 'Sports', 'Duplicate entry for testing', 'Media', 'CBI', 'Guilty', 'Imprisonment and fines', 500000000.00),
(18, 'Coal Scam', 'Multiple', '2012', 186000000000.00, 8, 'Manmohan Singh', 'Closed', 'Natural Resources', 'Duplicate entry for testing', 'Media', 'CBI', 'Guilty', 'Imprisonment and fines', 1500000000.00),
(19, 'Stamp Paper Scam', 'Maharashtra', '2002', 20000000000.00, 12, 'Abdul Karim Telgi', 'Closed', 'Forgery', 'Duplicate entry for testing', 'Police', 'CBI', 'Guilty', 'Imprisonment and fines', 300000000.00),
(20, 'Animal Husbandry Scam', 'Bihar', '1996', 950000000.00, 34, 'Lalu Prasad Yadav', 'Closed', 'Agriculture', 'Duplicate entry for testing', 'Employees', 'CBI', 'Guilty', 'Imprisonment and fines', 100000000.00);
UPDATE state_info SET governor_name = 'Koshyari', chief_minister_name = 'Shinde' WHERE state_code = 1;
UPDATE state_info SET governor_name = 'Patel', chief_minister_name = 'Adityanath' WHERE state_code = 2;
UPDATE state_info SET governor_name = 'Devvrat', chief_minister_name = 'Patel' WHERE state_code = 3;
UPDATE state_info SET governor_name = 'Dhankhar', chief_minister_name = 'Banerjee' WHERE state_code = 4;
UPDATE state_info SET governor_name = 'Ravi', chief_minister_name = 'Stalin' WHERE state_code = 5;
UPDATE state_info SET governor_name = 'Gehlot', chief_minister_name = 'Siddaramaiah' WHERE state_code = 6;
UPDATE state_info SET governor_name = 'Mishra', chief_minister_name = 'Gehlot' WHERE state_code = 7;
UPDATE state_info SET governor_name = 'Chauhan', chief_minister_name = 'Kumar' WHERE state_code = 8;
UPDATE state_info SET governor_name = 'Purohit', chief_minister_name = 'Mann' WHERE state_code = 9;
UPDATE state_info SET governor_name = 'Dattatreya', chief_minister_name = 'Khattar' WHERE state_code = 10;
UPDATE scam_info SET reported_by = 'CBI', investigating_agency = 'CBI' WHERE scam_id = 1;
UPDATE scam_info SET reported_by = 'Media', investigating_agency = 'CBI' WHERE scam_id = 2;
UPDATE scam_info SET reported_by = 'Employees', investigating_agency = 'CBI' WHERE scam_id = 3;
UPDATE scam_info SET reported_by = 'Media', investigating_agency = 'CBI' WHERE scam_id = 4;
UPDATE scam_info SET reported_by = 'Media', investigating_agency = 'CBI' WHERE scam_id = 5;
UPDATE scam_info SET reported_by = 'Police', investigating_agency = 'CBI' WHERE scam_id = 6;
UPDATE scam_info SET reported_by = 'Employees', investigating_agency = 'CBI' WHERE scam_id = 7;
UPDATE scam_info SET reported_by = 'CBI', investigating_agency = 'CBI' WHERE scam_id = 8;
UPDATE scam_info SET reported_by = 'Employees', investigating_agency = 'CBI' WHERE scam_id = 9;
UPDATE scam_info SET reported_by = 'Media', investigating_agency = 'CBI' WHERE scam_id = 10;
DELETE FROM state_info WHERE state_code = 11;
DELETE FROM state_info WHERE state_code = 12;
DELETE FROM state_info WHERE state_code = 13;
DELETE FROM scam_info WHERE scam_id = 19;
DELETE FROM scam_info WHERE scam_id = 18;
DELETE FROM scam_info WHERE scam_id = 16;
SELECT * FROM state_info WHERE per_capita_gdp_inr > 100000 AND literacy_percentage > 75.0;
SELECT * FROM state_info WHERE state_name = 'Maharashtra' OR state_name = 'Gujarat';
SELECT * FROM scam_info WHERE affected_state IN ('Tamil Nadu', 'Andhra Pradesh');
SELECT * FROM scam_info WHERE affected_state NOT IN ('Delhi', 'Maharashtra');
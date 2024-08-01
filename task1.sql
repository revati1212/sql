CREATE DATABASE XWORKS1;
USE XWORKS1;
CREATE TABLE show_room (id INT,name VARCHAR(50),location VARCHAR(100),manager VARCHAR(50),capacity INT,opening_date DATE,last_renovation DATE,
    phone_number VARCHAR(20),email VARCHAR(50),website VARCHAR(100));
    
CREATE TABLE chat_center (id INT,name VARCHAR(50),location VARCHAR(100),contact_person VARCHAR(50),total_agents INT,operational_hours VARCHAR(50),
last_update DATE,phone_number VARCHAR(20),email VARCHAR(50),chat_platform VARCHAR(50));

CREATE TABLE temple_info (id INT,temple_name VARCHAR(100),location VARCHAR(100),chief_priest VARCHAR(50),construction_year INT,visitors_per_day INT,
main_deity VARCHAR(50),phone_number VARCHAR(20),email VARCHAR(50),website VARCHAR(100));

CREATE TABLE market_info (id INT,market_name VARCHAR(100),location VARCHAR(100),manager VARCHAR(50),opening_hours VARCHAR(50),
number_of_stalls INT,market_type VARCHAR(50),phone_number VARCHAR(20),email VARCHAR(50),website VARCHAR(100));

CREATE TABLE metro_info (id INT,station_name VARCHAR(100),location VARCHAR(100),line VARCHAR(50),platform_count INT,opening_year INT,
last_upgrade DATE,phone_number VARCHAR(20),email VARCHAR(50),website VARCHAR(100));

ALTER TABLE show_room
    ADD CONSTRAINT chk_capacity CHECK (capacity > 0);

ALTER TABLE chat_center
    ADD CONSTRAINT chk_total_agents CHECK (total_agents >= 0),
    ADD CONSTRAINT chk_operational_hours CHECK (operational_hours != '');
    

ALTER TABLE market_info
    ADD CONSTRAINT chk_number_of_stalls CHECK (number_of_stalls >= 0),
    ADD CONSTRAINT chk_opening_hours CHECK (opening_hours != '');
ALTER TABLE metro_info
    ADD CONSTRAINT chk_platform_count CHECK (platform_count >= 0),
    ADD CONSTRAINT chk_opening_year CHECK (opening_year > 0);
    
    ALTER TABLE show_room
    ADD CONSTRAINT unique_email UNIQUE (email),
    ADD CONSTRAINT unique_phone_number UNIQUE (phone_number);


ALTER TABLE chat_center
    ADD CONSTRAINT unique_email UNIQUE (email),
    ADD CONSTRAINT unique_phone_number UNIQUE (phone_number);


ALTER TABLE temple_info
    ADD CONSTRAINT unique_email UNIQUE (email),
    ADD CONSTRAINT unique_phone_number UNIQUE (phone_number);

ALTER TABLE market_info
    ADD CONSTRAINT unique_email UNIQUE (email),
    ADD CONSTRAINT unique_phone_number UNIQUE (phone_number);

ALTER TABLE metro_info
    ADD CONSTRAINT unique_email UNIQUE (email),
    ADD CONSTRAINT unique_phone_number UNIQUE (phone_number);

INSERT INTO show_room (id, name, location, manager, capacity, opening_date, last_renovation, phone_number, email, website)
VALUES
    (1, 'Show Room A', 'Location A', 'Manager A', 100, '2024-01-01', '2024-01-01', '1234567890', 'emailA@example.com', 'www.exampleA.com'),
   
    (20, 'Show Room T', 'Location T', 'Manager T', 200, '2024-07-01', '2024-07-01', '0987654321', 'emailT@example.com', 'www.exampleT.com');


INSERT INTO chat_center (id, name, location, contact_person, total_agents, operational_hours, last_update, phone_number, email, chat_platform)
VALUES
    (1, 'Chat Center A', 'Location A', 'Person A', 50, '24/7', '2024-01-01', '1234567890', 'emailA@example.com', 'PlatformA'),
   
    (20, 'Chat Center T', 'Location T', 'Person T', 30, '09:00-18:00', '2024-07-01', '0987654321', 'emailT@example.com', 'PlatformT');


INSERT INTO temple_info (id, temple_name, location, chief_priest, construction_year, visitors_per_day, main_deity, phone_number, email, website)
VALUES
    (1, 'Temple A', 'Location A', 'Priest A', 1900, 500, 'Deity A', '1234567890', 'emailA@example.com', 'www.exampleA.com'),
  
    (20, 'Temple T', 'Location T', 'Priest T', 2000, 1000, 'Deity T', '0987654321', 'emailT@example.com', 'www.exampleT.com');

INSERT INTO market_info (id, market_name, location, manager, opening_hours, number_of_stalls, market_type, phone_number, email, website)
VALUES
    (1, 'Market A', 'Location A', 'Manager A', '09:00-20:00', 100, 'Type A', '1234567890', 'emailA@example.com', 'www.exampleA.com'),
 
    (20, 'Market T', 'Location T', 'Manager T', '10:00-18:00', 150, 'Type T', '0987654321', 'emailT@example.com', 'www.exampleT.com');


INSERT INTO metro_info (id, station_name, location, line, platform_count, opening_year, last_upgrade, phone_number, email, website)
VALUES
    (1, 'Metro A', 'Location A', 'Line A', 4, 1990, '2024-01-01', '1234567890', 'emailA@example.com', 'www.exampleA.com'),

    (20, 'Metro T', 'Location T', 'Line T', 8, 2010, '2024-07-01', '0987654321', 'emailT@example.com', 'www.exampleT.com');
    
ALTER TABLE show_room
    MODIFY COLUMN email VARCHAR(50) NOT NULL;

ALTER TABLE show_room
    ADD CONSTRAINT unique_website UNIQUE (website),
    ADD CONSTRAINT chk_capacity_range CHECK (capacity BETWEEN 10 AND 1000);


ALTER TABLE chat_center
    MODIFY COLUMN chat_platform VARCHAR(50) NOT NULL;


ALTER TABLE chat_center
    ADD CONSTRAINT unique_chat_platform UNIQUE (chat_platform),
    ADD CONSTRAINT chk_operational_hours_format CHECK (operational_hours LIKE '%%-%%');


ALTER TABLE temple_info
    MODIFY COLUMN chief_priest VARCHAR(50) NOT NULL;

ALTER TABLE temple_info
    ADD CONSTRAINT unique_temple_name UNIQUE (temple_name),
    ADD CONSTRAINT chk_visitors_per_day_range CHECK (visitors_per_day BETWEEN 0 AND 10000);


ALTER TABLE market_info
    MODIFY COLUMN market_type VARCHAR(50) NOT NULL;


ALTER TABLE market_info
    ADD CONSTRAINT unique_market_name UNIQUE (market_name),
    ADD CONSTRAINT chk_number_of_stalls_range CHECK (number_of_stalls BETWEEN 0 AND 500);


ALTER TABLE metro_info
    MODIFY COLUMN line VARCHAR(50) NOT NULL;


ALTER TABLE metro_info



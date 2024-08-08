---- relationships
create database relationships;
use relationships ;

CREATE TABLE Customer (CustomerID INT PRIMARY KEY,FirstName VARCHAR(100),age VARCHAR(100),address varchar(50),PhoneNumber VARCHAR(20),
Email VARCHAR(100) UNIQUE,City VARCHAR(100),State VARCHAR(100),Country VARCHAR(100),Language VARCHAR(50));

INSERT INTO Customer (CustomerID, FirstName,age,address, PhoneNumber,Email, City, State, Country, Language)
VALUES 
(1,'revati',22,'rajajinagar',8660058812,'revatiahirasang@gmail.com', 'New York', 'NY', 'USA', 'English'),
(2,'rohini',22,'kengeri',8660058813,'rohini@gmail.com','Los Angeles', 'CA', 'USA', 'English'),
( 3,'pooja',24,'sadashiv nagar',8660058814,'pooja@gmail.com', 'Chicago', 'IL', 'USA', 'English'),
(4,'keerthi',23,'vedavnagar',8660058815,'keerthi@gmail.com', 'Houston', 'TX', 'USA', 'English'),
(5,'akshii',21,'laalbag',8660058816,'akshii@gmail.com',  'Phoenix', 'AZ', 'USA', 'English'),
(6,'divya',22,'mejastic',8660058817,'divya@gmail.com',  'Philadelphia', 'PA', 'USA', 'English'),
( 7,'laxmi',22,'ramnagar',8660058818,'laxmi@gmail.com', 'San Antonio', 'TX', 'USA', 'English'),
(  8,'bhagya',25,'shreenagar',8660058819,'bhagya@gmail.com', 'San Diego', 'CA', 'USA', 'English'),
( 9,'ashwini',22,'shivagicircle',8660058820,'ashwini@gmail.com',  'Dallas', 'TX', 'USA', 'Spanish'),
( 10,'kiran',22,'channamma',8660058821,'kiran@gmail.com' , 'San Jose', 'CA', 'USA', 'English'),
( 11,'raam',25,'layout',8660058822,'raam@gmail.com', 'Austin', 'TX', 'USA', 'English'),
(  12,'priya',27,'chikkpete',8660058823,'priya@gmail.com', 'Jacksonville', 'FL', 'USA', 'English'),
( 13,'sanju',26,'badami',8660058824,'sanju@gmail.com',  'San Francisco', 'CA', 'USA', 'English'),
( 14,'akash',21,'vkp',8660058825,'akash@gmail.com',  'Columbus', 'OH', 'USA', 'English'),
(  15,'vickya',20,'kolhapur',8660058826,'vicky@gmail.com', 'Indianapolis', 'IN', 'USA', 'Spanish'),
( 16,'sumita',24,'halfway',8660058827,'sumita@gmail.com', 'Fort Worth', 'TX', 'USA', 'English'),
( 17,'raj',30,'gpt',8660058828,'raj@gmail.com','Charlotte', 'NC', 'USA', 'Spanish'),
(18,'chaya',26,'kelpenagar',8660058829,'chaya@gmail.com', 'Detroit', 'MI', 'USA', 'English'),
( 19,'manju',29,'hangasi',8660058830,'manju@gmail.com','El Paso', 'TX', 'USA', 'English'),
(20,'jay',50,'rani',8660058831,'jay@gmail.com', 'Memphis', 'TN', 'USA', 'English');

select * from Customer;


 CREATE TABLE CustomerProfile (CustomerID INT PRIMARY KEY, ProfileURL VARCHAR(255),MembershipStatus VARCHAR(50),DateOfBirth DATE,
ContactMethod VARCHAR(50),NewsletterSubscription BOOLEAN, Points INT, SocialMediaHandle VARCHAR(100), Occupation VARCHAR(100), 
Income VARCHAR(50), MaritalStatus VARCHAR(50), ContactName VARCHAR(100), ContactPhone VARCHAR(20), 
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID));

insert into CustomerProfile(customerID,profileURL,MembershipStatus,DateOfBirth,ContactMethod,NewsletterSubscription,Points,SocialMediaHandle,
Occupation,Income,MaritalStatus,ContactName,ContactPhone) values

(1, 'https://example.com/images/profile1.jpg', 'Gold', '1985-02-15', 'Email', TRUE, 1200, '@johndoe', 'Software Engineer', '50,000 - 60,000', 'Married', 'Jane Doe', '555-1234'),
(2, 'https://example.com/images/profile2.jpg', 'Silver', '1990-07-22', 'Phone', FALSE, 800, '@janedoe', 'Marketing Manager', '60,000 - 70,000', 'Single', 'Robert Doe', '555-5678'),
(3, 'https://example.com/images/profile3.jpg', 'Bronze', '1982-11-30', 'Email', TRUE, 500, '@michaeljones', 'Teacher', '40,000 - 50,000', 'Married', 'Emily Jones', '555-8765'),
(4, 'https://example.com/images/profile4.jpg', 'Gold', '1975-05-05', 'Email', TRUE, 1500, '@susanmiller', 'Doctor', '80,000 - 90,000', 'Married', 'Mark Miller', '555-4321'),
(5, 'https://example.com/images/profile5.jpg', 'Silver', '1988-03-12', 'Phone', FALSE, 600, '@davidwilson', 'Architect', '70,000 - 80,000', 'Single', 'Anna Wilson', '555-6789'),
(6, 'https://example.com/images/profile6.jpg', 'Bronze', '1995-08-19', 'Email', TRUE, 300, '@lindabrown', 'Nurse', '30,000 - 40,000', 'Single', 'Paul Brown', '555-3456'),
(7, 'https://example.com/images/profile7.jpg', 'Gold', '1980-10-25', 'Phone', TRUE, 1100, '@richardwhite', 'Consultant', '90,000 - 100,000', 'Married', 'Sarah White', '555-7890'),
(8, 'https://example.com/images/profile8.jpg', 'Silver', '1992-01-17', 'Email', FALSE, 400, '@patriciamartin', 'Engineer', '50,000 - 60,000', 'Single', 'Chris Martin', '555-2345'),
(9, 'https://example.com/images/profile9.jpg', 'Bronze', '1989-04-06', 'Phone', TRUE, 350, '@johnsmith', 'Writer', '40,000 - 50,000', 'Married', 'Laura Smith', '555-4567'),
(10, 'https://example.com/images/profile10.jpg', 'Gold', '1983-09-11', 'Email', TRUE, 1400, '@susanclark', 'Professor', '70,000 - 80,000', 'Single', 'Steven Clark', '555-6789'),
(11, 'https://example.com/images/profile11.jpg', 'Silver', '1978-12-14', 'Phone', FALSE, 700, '@georgeharris', 'Sales Manager', '60,000 - 70,000', 'Married', 'Catherine Harris', '555-9876'),
(12, 'https://example.com/images/profile12.jpg', 'Bronze', '1996-06-24', 'Email', TRUE, 200, '@lisaanderson', 'Graphic Designer', '20,000 - 30,000', 'Single', 'Tom Anderson', '555-1357'),
(13, 'https://example.com/images/profile13.jpg', 'Gold', '1986-02-20', 'Phone', TRUE, 1300, '@williamjames', 'Chef', '50,000 - 60,000', 'Married', 'Helen James', '555-2468'),
(14, 'https://example.com/images/profile14.jpg', 'Silver', '1991-07-30', 'Email', FALSE, 550, '@emilymartin', 'Pharmacist', '60,000 - 70,000', 'Single', 'David Martin', '555-3698'),
(15, 'https://example.com/images/profile15.jpg', 'Bronze', '1987-11-01', 'Phone', TRUE, 400, '@danielroberts', 'Mechanic', '30,000 - 40,000', 'Married', 'Maria Roberts', '555-7412'),
(16, 'https://example.com/images/profile16.jpg', 'Gold', '1974-05-25', 'Email', TRUE, 1600, '@michellewalker', 'Entrepreneur', '100,000 - 120,000', 'Married', 'John Walker', '555-8523'),
(17, 'https://example.com/images/profile17.jpg', 'Silver', '1983-03-15', 'Phone', FALSE, 750, '@jasonlee', 'Pilot', '80,000 - 90,000', 'Single', 'Sandra Lee', '555-9630'),
(18, 'https://example.com/images/profile18.jpg', 'Bronze', '1994-10-29', 'Email', TRUE, 280, '@meganhall', 'Social Worker', '30,000 - 40,000', 'Single', 'George Hall', '555-1470'),
(19, 'https://example.com/images/profile19.jpg', 'Gold', '1981-12-02', 'Phone', TRUE, 1400, '@brianscott', 'Financial Analyst', '70,000 - 80,000', 'Married', 'Jessica Scott', '555-2580'),
(20, 'https://example.com/images/profile20.jpg', 'Silver', '1990-04-10', 'Email', FALSE, 620, '@nataliesmith', 'Interior Designer', '60,000 - 70,000', 'Single', 'Andrew Smith', '555-3691');

select *from CustomerProfile;

CREATE TABLE `order` (OrderID INT PRIMARY KEY,OrderDate DATE,OrderStatus VARCHAR(50),TotalAmount DECIMAL(10, 2),ShippingAddress VARCHAR(255),
    BillingAddress VARCHAR(255),PaymentMethod VARCHAR(50),DeliveryDate DATE,TrackingNumber VARCHAR(100));


INSERT INTO `order` (OrderID, OrderDate, OrderStatus, TotalAmount, ShippingAddress, BillingAddress, PaymentMethod, DeliveryDate, TrackingNumber)
VALUES 
(1, '2024-08-01', 'Shipped', 150.75, '123 Elm St, Springfield, IL, 62701', '123 Elm St, Springfield, IL, 62701', 'Credit Card', '2024-08-05', '1Z999AA10123456784'),
(2, '2024-08-02', 'Delivered', 299.99, '456 Maple Ave, Metropolis, NY, 10001', '789 Oak St, Metropolis, NY, 10001', 'PayPal', '2024-08-06', '1Z999AA10123456785'),
(3, '2024-08-03', 'Processing', 89.49, '789 Pine St, Gotham, NY, 10001', '789 Pine St, Gotham, NY, 10001', 'Credit Card', NULL, NULL),
(4, '2024-08-04', 'Cancelled', 120.00, '101 Birch Rd, Star City, CA, 90001', '101 Birch Rd, Star City, CA, 90001', 'Bank Transfer', NULL, NULL),
(5, '2024-08-05', 'Shipped', 245.80, '202 Cedar Ln, Central City, CO, 80001', '202 Cedar Ln, Central City, CO, 80001', 'Credit Card', '2024-08-10', '1Z999AA10123456786'),
(6, '2024-08-06', 'Delivered', 399.95, '303 Spruce St, Coast City, FL, 33101', '404 Pine St, Coast City, FL, 33101', 'Debit Card', '2024-08-09', '1Z999AA10123456787'),
(7, '2024-08-07', 'Processing', 59.99, '505 Oak Dr, Emerald City, WA, 98001', '505 Oak Dr, Emerald City, WA, 98001', 'Credit Card', NULL, NULL),
(8, '2024-08-08', 'Shipped', 180.45, '606 Elm St, Sunnydale, CA, 90001', '707 Maple Ave, Sunnydale, CA, 90001', 'PayPal', '2024-08-12', '1Z999AA10123456788'),
(9, '2024-08-09', 'Delivered', 310.00, '707 Maple Ave, Gotham, NY, 10001', '707 Maple Ave, Gotham, NY, 10001', 'Credit Card', '2024-08-11', '1Z999AA10123456789'),
(10, '2024-08-10', 'Processing', 99.95, '808 Birch St, Metropolis, NY, 10001', '808 Birch St, Metropolis, NY, 10001', 'Bank Transfer', NULL, NULL),
(11, '2024-08-11', 'Cancelled', 220.00, '909 Pine Ln, Central City, CO, 80001', '909 Pine Ln, Central City, CO, 80001', 'Credit Card', NULL, NULL),
(12, '2024-08-12', 'Shipped', 155.50, '1010 Spruce Dr, Star City, CA, 90001', '1011 Spruce Dr, Star City, CA, 90001', 'PayPal', '2024-08-14', '1Z999AA10123456790'),
(13, '2024-08-13', 'Delivered', 275.25, '1212 Cedar St, Coast City, FL, 33101', '1313 Cedar St, Coast City, FL, 33101', 'Debit Card', '2024-08-15', '1Z999AA10123456791'),
(14, '2024-08-14', 'Processing', 89.50, '1313 Elm St, Gotham, NY, 10001', '1313 Elm St, Gotham, NY, 10001', 'Credit Card', NULL, NULL),
(15, '2024-08-15', 'Shipped', 340.60, '1414 Maple Ave, Springfield, IL, 62701', '1414 Maple Ave, Springfield, IL, 62701', 'PayPal', '2024-08-18', '1Z999AA10123456792'),
(16, '2024-08-16', 'Delivered', 210.45, '1515 Pine St, Coast City, FL, 33101', '1515 Pine St, Coast City, FL, 33101', 'Credit Card', '2024-08-19', '1Z999AA10123456793'),
(17, '2024-08-17', 'Processing', 120.20, '1616 Oak Dr, Emerald City, WA, 98001', '1616 Oak Dr, Emerald City, WA, 98001', 'Bank Transfer', NULL, NULL),
(18, '2024-08-18', 'Shipped', 199.95, '1717 Spruce St, Central City, CO, 80001', '1818 Spruce St, Central City, CO, 80001', 'Credit Card', '2024-08-21', '1Z999AA10123456794'),
(19, '2024-08-19', 'Delivered', 345.00, '1818 Maple Ave, Gotham, NY, 10001', '1818 Maple Ave, Gotham, NY, 10001', 'PayPal', '2024-08-22', '1Z999AA10123456795'),
(20, '2024-08-20', 'Processing', 89.75, '1919 Cedar Ln, Sunnydale, CA, 90001', '1919 Cedar Ln, Sunnydale, CA, 90001', 'Debit Card', NULL, NULL);
select * from `order`;

CREATE TABLE order_item (OrderItemID INT PRIMARY KEY AUTO_INCREMENT,OrderID INT,customerID INT,Quantity INT,Price DECIMAL(10, 2),
ItemStatus VARCHAR(50), Discount DECIMAL(10, 2), Tax DECIMAL(10, 2), ProductName VARCHAR(255), ProductCategory VARCHAR(100),
 ItemDescription TEXT, FOREIGN KEY (OrderID) REFERENCES `order`(OrderID),FOREIGN KEY (customerID) REFERENCES customer(customerID));
 
 INSERT INTO order_item (OrderID, CustomerID, Quantity, Price, ItemStatus, Discount, Tax, ProductName, ProductCategory, ItemDescription) VALUES
(1, 1, 3, 19.99, 'Shipped', 5.00, 2.40, 'Bluetooth Speaker', 'Electronics', 'Portable Bluetooth speaker with 10-hour battery life'),
(1, 1, 2, 49.99, 'Shipped', 10.00, 5.00, 'Wireless Mouse', 'Electronics', 'Ergonomic wireless mouse with adjustable DPI'),
(2, 2, 1, 299.99, 'Processing', 20.00, 30.00, 'Gaming Monitor', 'Electronics', '27-inch 4K gaming monitor with high refresh rate'),
(2, 2, 4, 9.99, 'Processing', 0.00, 3.20, 'USB Flash Drive', 'Storage', '16GB USB flash drive with fast read/write speeds'),
(3, 3, 5, 15.50, 'Delivered', 2.50, 1.80, 'Notebook', 'Office Supplies', 'Spiral-bound notebook with 200 pages'),
(4, 4, 2, 75.00, 'Cancelled', 10.00, 8.00, 'Office Chair', 'Furniture', 'Adjustable office chair with lumbar support'),
(5, 5, 3, 120.00, 'Shipped', 15.00, 12.00, 'Coffee Maker', 'Appliances', '12-cup coffee maker with programmable settings'),
(6, 6, 6, 22.99, 'Processing', 8.00, 4.50, 'Desk Lamp', 'Furniture', 'LED desk lamp with adjustable brightness'),
(7, 7, 1, 89.95, 'Shipped', 10.00, 7.00, 'Smartwatch', 'Electronics', 'Smartwatch with heart rate monitor and GPS'),
(8, 8, 10, 5.99, 'Delivered', 0.00, 1.00, 'Pen Set', 'Office Supplies', 'Set of 10 ballpoint pens with black ink'),
(9, 9, 2, 60.00, 'Shipped', 5.00, 6.00, 'Portable Charger', 'Electronics', 'Power bank with 10000mAh capacity'),
(10, 10, 4, 25.00, 'Delivered', 10.00, 7.00, 'Backpack', 'Accessories', 'Durable backpack with multiple compartments'),
(11, 11, 1, 150.00, 'Processing', 15.00, 15.00, 'Digital Camera', 'Electronics', 'High-resolution digital camera with 20MP sensor'),
(12, 12, 5, 8.75, 'Shipped', 2.00, 2.00, 'Water Bottle', 'Outdoor', 'Insulated water bottle with 500ml capacity'),
(13, 13, 3, 45.00, 'Delivered', 5.00, 4.50, 'Earbuds', 'Electronics', 'Wireless earbuds with noise cancellation'),
(14, 14, 2, 120.00, 'Cancelled', 10.00, 8.00, 'Home Theater System', 'Electronics', '5.1 surround sound home theater system'),
(15, 15, 6, 18.99, 'Processing', 7.00, 3.60, 'T-shirt', 'Clothing', 'Cotton t-shirt with graphic print'),
(16, 16, 3, 32.50, 'Shipped', 4.00, 5.00, 'Yoga Mat', 'Fitness', 'Non-slip yoga mat with extra cushioning'),
(17, 17, 4, 150.00, 'Delivered', 20.00, 12.00, 'Gaming Console', 'Electronics', 'Latest model gaming console with 1TB storage'),
(18, 18, 2, 200.00, 'Delivered', 25.00, 18.00, 'Smart TV', 'Electronics', '55-inch 4K smart TV with built-in streaming apps'),
(19, 19, 7, 10.00, 'Shipped', 1.00, 1.00, 'Coffee Mug', 'Kitchenware', 'Ceramic coffee mug with a funny quote'),
(20, 20, 4, 80.00, 'Shipped', 5.00, 8.00, 'Electric Kettle', 'Appliances', 'Stainless steel electric kettle with auto shut-off');
 
 select * from order_item;
 

CREATE TABLE Supplier (SupplierID INT PRIMARY KEY,SupplierName VARCHAR(100),ContactName VARCHAR(100),ContactTitle VARCHAR(50),Phone VARCHAR(20),
Email VARCHAR(100) UNIQUE,Address VARCHAR(255),City VARCHAR(100),State VARCHAR(100),Country VARCHAR(100),PostalCode VARCHAR(20),Website VARCHAR(100),EstablishedDate DATE,
Rating DECIMAL(3, 2),IsActive BOOLEAN);

INSERT INTO Supplier (SupplierID, SupplierName, ContactName, ContactTitle, Phone, Email, Address, City, State, Country, PostalCode,
 Website, EstablishedDate, Rating, IsActive)
VALUES 
(1, 'ABC Electronics', 'John Doe', 'Sales Manager', '+1-555-1234', 'johndoe@abcelectronics.com', '123 Tech Park', 'San Jose', 'CA', 'USA', '95134', 'http://www.abcelectronics.com', '2000-06-15', 4.5, TRUE),
(2, 'Global Appliances', 'Jane Smith', 'Procurement Officer', '+1-555-5678', 'janesmith@globalappliances.com', '456 Appliance Ave', 'Dallas', 'TX', 'USA', '75201', 'http://www.globalappliances.com', '1995-11-22', 4.0, TRUE),
(3, 'Book Haven', 'Robert Brown', 'Product Manager', '+1-555-9876', 'robertbrown@bookhaven.com', '789 Literature Lane', 'New York', 'NY', 'USA', '10001', 'http://www.bookhaven.com', '2010-03-01', 4.8, TRUE),
(4, 'Fashion Forward', 'Emily White', 'Head Buyer', '+1-555-3456', 'emilywhite@fashionforward.com', '321 Trendy Blvd', 'Los Angeles', 'CA', 'USA', '90001', 'http://www.fashionforward.com', '2005-08-30', 4.3, TRUE),
(5, 'Outdoor Gear Co.', 'Michael Green', 'Sales Director', '+1-555-2345', 'michaelgreen@outdoorgear.com', '654 Adventure Rd', 'Denver', 'CO', 'USA', '80202', 'http://www.outdoorgear.com', '2012-07-12', 4.6, TRUE),
(6, 'Pet World', 'Sarah Blue', 'Customer Relations', '+1-555-8765', 'sarahblue@petworld.com', '987 Pet Lane', 'Miami', 'FL', 'USA', '33101', 'http://www.petworld.com', '2015-01-20', 4.2, TRUE),
(7, 'Tech Innovators', 'David Black', 'Chief Technology Officer', '+1-555-4321', 'davidblack@techinnovators.com', '135 Innovation Dr', 'Seattle', 'WA', 'USA', '98101', 'http://www.techinnovators.com', '2008-04-25', 4.7, TRUE),
(8, 'Gourmet Foods', 'Linda Yellow', 'Food Buyer', '+1-555-5671', 'lindayellow@gourmetfoods.com', '246 Gourmet St', 'Chicago', 'IL', 'USA', '60601', 'http://www.gourmetfoods.com', '2003-09-10', 4.4, TRUE),
(9, 'Home Essentials', 'James Orange', 'Operations Manager', '+1-555-6789', 'jamesorange@homeessentials.com', '369 Essential Way', 'Boston', 'MA', 'USA', '02101', 'http://www.homeessentials.com', '2009-12-03', 4.1, TRUE),
(10, 'Office Supplies Inc.', 'Patricia Silver', 'Account Manager', '+1-555-3457', 'patriciasilver@officesuppliesinc.com', '852 Office Rd', 'San Francisco', 'CA', 'USA', '94101', 'http://www.officesuppliesinc.com', '2018-05-14', 4.0, TRUE),
(11, 'Health & Wellness', 'Brian Gold', 'Product Specialist', '+1-555-7890', 'briangold@healthwellness.com', '741 Wellness Ave', 'Phoenix', 'AZ', 'USA', '85001', 'http://www.healthwellness.com', '2017-06-01', 4.6, TRUE),
(12, 'Kids Corner', 'Megan Blue', 'Marketing Manager', '+1-555-4567', 'meganblue@kidscorner.com', '963 Playland Rd', 'San Diego', 'CA', 'USA', '92101', 'http://www.kidscorner.com', '2019-04-20', 4.3, TRUE),
(13, 'Fitness World', 'William Red', 'Fitness Advisor', '+1-555-6780', 'williamred@fitnessworld.com', '741 Fitness Dr', 'Austin', 'TX', 'USA', '73301', 'http://www.fitnessworld.com', '2016-07-18', 4.7, TRUE),
(14, 'Art Supplies', 'Anna Gray', 'Sales Executive', '+1-555-8901', 'annagray@artsupplies.com', '852 Art St', 'Atlanta', 'GA', 'USA', '30301', 'http://www.artsupplies.com', '2021-08-09', 4.4, TRUE),
(15, 'Music Masters', 'Steve White', 'Music Product Manager', '+1-555-9012', 'stevewhite@musicmasters.com', '963 Music Ave', 'Orlando', 'FL', 'USA', '32801', 'http://www.musicmasters.com', '2020-11-17', 4.5, TRUE),
(16, 'Garden Supplies', 'Julie Black', 'Customer Service', '+1-555-6782', 'julieblack@gardensupplies.com', '147 Garden St', 'Minneapolis', 'MN', 'USA', '55401', 'http://www.gardensupplies.com', '2014-02-25', 4.2, TRUE),
(17, 'Luxury Watches', 'Paul Blue', 'Luxury Goods Specialist', '+1-555-7891', 'paulblue@luxurywatches.com', '258 Luxury Ln', 'Philadelphia', 'PA', 'USA', '19101', 'http://www.luxurywatches.com', '2023-03-15', 4.8, TRUE),
(18, 'Travel Gear', 'Nancy Green', 'Travel Product Specialist', '+1-555-8903', 'nancygreen@travelgear.com', '369 Travel Blvd', 'Washington', 'DC', 'USA', '20001', 'http://www.travelgear.com', '2022-05-21', 4.3, TRUE),
(19, 'Furniture World', 'Thomas Orange', 'Furniture Buyer', '+1-555-9013', 'thomasorange@furnitureworld.com', '741 Furniture St', 'San Jose', 'CA', 'USA', '95112', 'http://www.furnitureworld.com', '2011-09-10', 4.6, TRUE),
(20, 'Beverage Supplies', 'Rachel Gray', 'Beverage Coordinator', '+1-555-1235', 'rachelgray@beveragesupplies.com', '852 Drink Dr', 'Las Vegas', 'NV', 'USA', '89101', 'http://www.beverage.com','2012-10-12',4.5,true);

select * from supplier;

CREATE TABLE Product (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(255),
    SupplierID INT,
    Category VARCHAR(100),
    QuantityPerUnit VARCHAR(50),
    UnitPrice DECIMAL(10, 2),
    UnitsInStock INT,
    UnitsOnOrder INT,
    ReorderLevel INT,
    Discontinued BOOLEAN,
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);


CREATE TABLE Students (StudentID INT PRIMARY KEY,FirstName VARCHAR(100),LastName VARCHAR(100),DateOfBirth DATE,Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(20),EnrollmentDate DATE,Major VARCHAR(100),GPA DECIMAL(3, 2),Status VARCHAR(50));
drop database aug3;






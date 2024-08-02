create database university;
use university;
create table college( ID int ,college_name VARCHAR(30) ,address VARCHAR(30),principal_name VARCHAR(30),
founded_year INT,website VARCHAR(50));
insert into  college(ID,college_name,address,principal_name,founded_year,website) values
  (1, 'angadi college', 'belagavi', 'deshpande', 2010, 'https://www.angadi.edu'),
    (2, 'KLE', 'hubli','patil', 1885, 'https://www.kle.edu'),
    (3, 'SGBIT', 'ramdev', 'basavanna', 1861, 'https://www.sgbit.edu'),
    (4, 'maratha mandal', 'nesargi', 'kulkarni', 1979, 'https://www.marathamandal.uk'),
    (5, 'darbar', 'bijapur', 'chavan', 1945, 'https://www.darbar.uk'),
    (6, 'rukmang', 'near kamanth hostel', 'chole', 1891, 'https://www.rukmang.edu'),
    (7, 'snehasangam', 'station road', 'jery', 1746, 'https://www.snehasangam.edu'),
    (8, 'sent joseph', 'banglore', 'Peter Salovey', 1701, 'https://www.yale.edu'),
    (9, 'University of California', 'Berkeley', 'Christ', 1868, 'https://www.berkeley.edu'),
    (10, 'Columbia University', 'New York', 'Lee', 1754, 'https://www.columbia.edu'),
    (11, 'University of Chicago', 'Chicago', 'Pile', 1890, 'https://www.uchicago.edu'),
    (12, 'University of Tokyo', 'Tokyo', ' Gonokami', 1877, 'https://www.u-tokyo.ac.jp'),
    (13, 'indian univesrity', 'india', 'modhi', 1855, 'https://www.ethz.ch'),
    (14, 'University of Toronto', 'Canada', 'Mersy', 1827, 'https://www.utoronto.ca'),
    (15, 'ambani University', 'mumbai', 'ambani', 1911, 'https://www.ambani.edu.cn'),
    (16, 'University of kerala', 'kerala', 'swami', 1853, 'https://www.kerala.edu.au'),
    (17, 'Peking University', 'China', ' Ping', 1898, 'https://www.pku.edu.cn'),
    (18, 'University of California','california', 'Los Angeles', 1919, 'https://www.ucla.edu'),
    (19, 'University College London', 'London', 'Michal', 1826, 'https://www.ucl.ac.uk'),
    (20, 'University of khanpur', 'khanpur', 'bhirje', 1817, 'https://www.khanpur.edu');
    select * from college;
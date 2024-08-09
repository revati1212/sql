create database joins1;
use joins1;
CREATE TABLE student_Courses (StudentID INT PRIMARY KEY, EnrollmentID INT ,CourseID INT, EnrollmentDate DATE ,              
Grade CHAR(2) , course_name varchar(50), unique (StudentID, CourseID) );              
INSERT INTO student_Courses (studentID,EnrollmentID  , CourseID, EnrollmentDate, Grade, course_name)
VALUES
(1, 101, 201, '2024-01-15', 'A', 'Mathematics 101'),
(2, 102, 202, '2024-01-16', 'B', 'Biology 101'),
(3, 103, 203, '2024-01-17', 'C', 'Chemistry 101'),
(4, 104, 204, '2024-01-18', 'A', 'Physics 101'),
(5, 105, 205, '2024-01-19', 'B', 'English L 101'),
(6, 106, 201, '2024-01-20', 'A', 'Mathematics 101'),
(7, 107, 202, '2024-01-21', 'W', 'Biology 101'),
(8, 108, 203, '2024-01-22', 'D', 'Chemistry 101'),
(9, 109, 204, '2024-01-23', 'C', 'Physics 101'),
(10, 110, 205, '2024-01-24', 'A', 'English L 101'),
(11, 111, 206, '2024-01-25', 'B', 'History 101'),
(12, 112, 207, '2024-01-26', 'A', 'Computer Science 101'),
(13, 113, 208, '2024-01-27', 'C', 'Art History 101'),
(14, 114, 209, '2024-01-28', 'B', 'Philosophy 101'),
(15, 115, 210, '2024-01-29', 'A', 'Economics 101');

select *from student_Courses;
SELECT --- 1
    sc.StudentID,sc.EnrollmentID,sc.CourseID,sc.EnrollmentDate,sc.Grade,sc.course_name,p.ProjectID,p.ProjectName
FROM student_Courses sc
LEFT JOIN Projects p
ON sc.StudentID = p.studentID;

-------- 2)right
SELECT 
    sc.StudentID,sc.EnrollmentID,sc.CourseID,sc.EnrollmentDate,sc.Grade,sc.course_name,p.ProjectID,p.ProjectName
FROM student_Courses sc
LEFT JOIN Projects p
ON sc.StudentID = p.studentID;
-------- 3)INNER JOIN and LEFT JOIN
SELECT sc.StudentID,sc.course_name,p.ProjectName,sa.AttendanceDate
FROM student_Courses sc
INNER JOIN Projects p
ON sc.StudentID = p.studentID
LEFT JOIN Student_Attendance sa
ON sc.StudentID = sa.StudentID AND p.ProjectID = sa.projectID;

--------------- 4)INNER JOIN and RIGHT JOIN

SELECT sc.StudentID,sc.course_name,p.ProjectName,sa.AttendanceDate
FROM student_Courses sc
INNER JOIN Projects p
ON sc.StudentID = p.studentID
RIGHT JOIN Student_Attendance sa
ON sc.StudentID = sa.StudentID AND p.ProjectID = sa.projectID;

--------------- 5)INNER JOIN and left JOIN
SELECT sc.StudentID,sc.course_name,p.ProjectName,sa.AttendanceDate
FROM student_Courses sc
LEFT JOIN Projects p
ON sc.StudentID = p.studentID
RIGHT JOIN Student_Attendance sa
ON sc.StudentID = sa.StudentID AND p.ProjectID = sa.projectID;

------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Projects (ProjectID INT PRIMARY KEY, studentID int, ProjectName VARCHAR(100) NOT NULL,StartDate DATE , EndDate DATE, Budget DECIMAL(15, 2),
foreign key (studentID) references student_Courses(studentID));

INSERT INTO Projects (ProjectID, studentID, ProjectName, StartDate, EndDate, Budget)
VALUES
( 101,1, 'Math Research Project', '2024-02-01', '2024-06-30', 5000.00),
( 102,2,'Biology Lab Experiment', '2024-03-01', '2024-08-15', 3000.00),
( 103,3, 'Chemistry Safety Study', '2024-04-01', '2024-07-30', 4500.00),
( 104,4, 'Physics Equipment Upgrade', '2024-05-01', '2024-09-15', 6000.00),
( 105,5, 'English Literature Anthology', '2024-01-15', '2024-05-30', 3500.00),
( 106,6, 'Advanced Mathematics Analysis', '2024-02-20', '2024-07-15', 5200.00),
( 107,7, 'Biology Field Trip', '2024-06-01', '2024-09-01', 2800.00),
( 108,8, 'Chemistry Lab Renovation', '2024-03-15', '2024-08-01', 4700.00),
( 109,9 ,'Physics Research Paper', '2024-04-15', '2024-11-15', 5500.00),
( 110,10,'English Poetry Collection', '2024-02-01', '2024-10-30', 3600.00),
( 111, 11,'History Documentary Production', '2024-01-20', '2024-07-20', 7000.00),
( 112, 12,'Computer Science App Development', '2024-03-10', '2024-12-01', 8000.00),
( 113,13, 'Art History Exhibition', '2024-05-01', '2024-09-15', 4200.00),
( 114,14, 'Philosophy Seminar Series', '2024-06-01', '2024-12-15', 3400.00),
( 115, 15,'Economics Research Study', '2024-02-15', '2024-11-30', 6100.00);

select *from projects;
SELECT p.ProjectID,p.ProjectName,p.StartDate,p.EndDate,p.Budget,sc.StudentID,sc.CourseID,sc.course_name,sc.EnrollmentDate,sc.Grade
FROM Projects p
LEFT JOIN student_Courses sc
ON p.studentID = sc.StudentID;
------ right
SELECT p.ProjectID,p.ProjectName,p.StartDate,p.EndDate,p.Budget,sc.StudentID,sc.course_name 
FROM Projects p
RIGHT JOIN student_Courses sc
ON p.studentID = sc.StudentID;
--------------- inner join and leftjoin

SELECT sc.StudentID,sc.course_name,p.ProjectName,sa.AttendanceDate
FROM student_Courses sc
INNER JOIN Projects p
ON sc.StudentID = p.studentID
LEFT JOIN Student_Attendance sa
ON sc.StudentID = sa.StudentID AND p.ProjectID = sa.projectID;

------------------- innerjoin and rightjoin

SELECT sc.StudentID,sc.course_name,p.ProjectName,sa.AttendanceDate
FROM student_Courses sc
INNER JOIN Projects p
ON sc.StudentID = p.studentID
RIGHT JOIN Student_Attendance sa
ON sc.StudentID = sa.StudentID AND p.ProjectID = sa.projectID;

-------- left and right
SELECT sc.StudentID,sc.course_name,p.ProjectName,sa.AttendanceDate
FROM student_Courses sc
LEFT JOIN Projects p
ON sc.StudentID = p.studentID
RIGHT JOIN Student_Attendance sa
ON sc.StudentID = sa.StudentID AND p.ProjectID = sa.projectID;

-------- right and left 
SELECT sc.StudentID,sc.course_name,p.ProjectName,sa.AttendanceDate
FROM Projects p
RIGHT JOIN student_Courses sc
ON p.studentID = sc.StudentID
LEFT JOIN Student_Attendance sa
ON sc.StudentID = sa.StudentID AND p.ProjectID = sa.projectID;

CREATE TABLE Student_Attendance (AttendanceID INT PRIMARY KEY ,StudentID INT,projectID INT,AttendanceDate DATE,
Status ENUM('Present', 'Absent', 'Late'),Notes VARCHAR(255),
FOREIGN KEY (StudentID) REFERENCES Student_courses(StudentID),FOREIGN KEY (ProjectID) REFERENCES projects(ProjectID)
);

INSERT INTO Student_Attendance (AttendanceID,StudentID, projectID, AttendanceDate, Status, Notes)
VALUES
(201,1, 101, '2024-01-15', 'Present', 'First class of the semester, on time.'),
(202,1, 102, '2024-01-22', 'Absent', 'Family emergency.'),
(203,1, 103, '2024-01-29', 'Late', 'Caught in traffic.'),
(204,2, 104, '2024-01-16', 'Present', 'Arrived early, participated actively.'),
(205,2, 105, '2024-01-23', 'Present', 'On time, completed all tasks.'),
(206,2, 106, '2024-01-30', 'Absent', 'Sick, provided a medical certificate.'),
(207,3, 107, '2024-01-17', 'Late', 'Traffic issue, arrived 15 minutes late.'),
(208,3, 108, '2024-01-24', 'Present', 'On time, contributed to group discussion.'),
(209,3, 109, '2024-01-31', 'Present', 'Participated in lab activities.'),
(210,4, 110, '2024-01-18', 'Present', 'On time, actively engaged in the lesson.'),
(211,4, 111, '2024-01-25', 'Late', 'Missed the bus, arrived 10 minutes late.'),
(212,4, 112, '2024-02-01', 'Absent', 'Vacation, informed instructor in advance.'),
(213,5, 113, '2024-01-19', 'Present', 'Completed assignment ahead of time.'),
(214,5, 114, '2024-01-26', 'Present', 'On time, worked well on group project.'),
(215,5, 115, '2024-02-02', 'Absent', 'Medical appointment, provided doctor’s note.'),
(216,6, 114, '2024-01-20', 'Present', 'On time, actively participated in the class.');


select *from Student_Attendance;
SELECT sa.AttendanceID,sa.StudentID,sa.ProjectID,sa.AttendanceDate
FROM Student_Attendance sa
LEFT JOIN student_Courses sc
ON sa.StudentID = sc.StudentID
LEFT JOIN Projects p
ON sa.ProjectID = p.ProjectID;
------------------
SELECT sa.AttendanceID,sa.StudentID,sa.projectID,sa.AttendanceDate
FROM Student_Attendance sa
RIGHT JOIN Projects p
ON sa.projectID = p.ProjectID;
------------------------
SELECT sc.StudentID,sc.course_name,p.ProjectName,sa.AttendanceDate
FROM student_Courses sc
INNER JOIN Projects p
ON sc.StudentID = p.studentID
LEFT JOIN Student_Attendance sa
ON sc.StudentID = sa.StudentID AND p.ProjectID = sa.projectID;
----------------------------------------------------------------
SELECT sc.StudentID,sc.course_name,p.ProjectName,sa.AttendanceDate
FROM Projects p
INNER JOIN student_Courses sc
ON p.studentID = sc.StudentID
RIGHT JOIN Student_Attendance sa
ON sc.StudentID = sa.StudentID AND p.ProjectID = sa.projectID;
--------------------------------------------------------------
SELECT sc.StudentID,sc.course_name,p.ProjectName,sa.AttendanceDate
FROM student_Courses sc
LEFT JOIN Projects p
ON sc.StudentID = p.studentID
RIGHT JOIN Student_Attendance sa
ON sc.StudentID = sa.StudentID AND p.ProjectID = sa.projectID;
-----------------------------------------------------------------------
SELECT sc.StudentID,sc.course_name,p.ProjectName,sa.AttendanceDate
FROM Projects p
RIGHT JOIN student_Courses sc
ON p.studentID = sc.StudentID
LEFT JOIN Student_Attendance sa
ON sc.StudentID = sa.StudentID AND p.ProjectID = sa.projectID;
-----------------------------------------------------------------------

CREATE TABLE professor (ProfessorID INT PRIMARY KEY,studentID int,projectID int,ProfessorName VARCHAR(100),age int,phone_number long,address varchar(50),
FOREIGN KEY (StudentID) REFERENCES Student_courses(StudentID),FOREIGN KEY (ProjectID) REFERENCES projects(ProjectID));

INSERT INTO professor (ProfessorID, studentID, projectID, ProfessorName, age, phone_number, address)
VALUES
(1111, 1, 101, ' Amit Sharma', 45, 9876543210, '12, MG Road, Bangalore'),
(2222, 2, 102, ' Priya Patel', 50, 8765432109, '34, Ghatkopar, Mumbai'),
(3333, 3, 103, ' Ravi Kumar', 38, 7654321098, '56, Sector 15, Noida'),
(4444, 4, 104, ' Neha Gupta', 42, 6543210987, '78, Saket, Delhi'),
(5555, 5, 105, ' Sanjay Desai', 47, 5432109876, '90, Anna Nagar, Chennai'),
(6666, 6, 106, ' Anjali Reddy', 52, 4321098765, '101, Jayanagar, Bangalore'),
(7777, 7, 107, ' Rajesh Mehta', 41, 3210987654, '123, Vile Parle, Mumbai'),
(8888, 8, 108, ' Sita Rao', 49, 2109876543, '145, Hauz Khas, Delhi'),
(9999, 9, 109, ' Vikram Singh', 36, 1098765432, '167, Koramangala, Bangalore'),
(2000, 10, 110, ' Kavita Bhatia', 54, 0987654321, '189, T. Nagar, Chennai'),
(2100, 11, 111, ' Mohan Iyer', 46, 9876501234, '201, Malad, Mumbai'),
(3100, 12, 112, ' Anu Joshi', 48, 8765412345, '223, Connaught Place, Delhi'),
(4100, 13, 113, ' Suresh Verma', 53, 7654321090, '245, Indiranagar, Bangalore'),
(5100, 14, 114, ' Ritu Sharma', 39, 6543210980, '267, Ashok Vihar, Delhi');

select *from professor;
SELECT p.ProfessorID,p.address,sc.StudentID,pr.ProjectName
FROM professor p
LEFT JOIN student_Courses sc
ON p.StudentID = sc.StudentID
LEFT JOIN Projects pr
ON p.ProjectID = pr.ProjectID;

-----------------------------------------------------------------------------------------------------------------------------------
SELECT p.ProfessorID,p.ProfessorName,p.studentID,p.projectID
FROM professor p
RIGHT JOIN Projects pr
ON p.projectID = pr.ProjectID;
-----------------------------------------
SELECT p.ProfessorID,p.ProfessorName,p.studentID
FROM professor p
INNER JOIN student_Courses sc
ON p.studentID = sc.StudentID
LEFT JOIN Projects pr
ON p.projectID = pr.ProjectID;
------------------------------------------
SELECT pr.ProjectID,pr.ProjectName,pr.StartDate,p.ProfessorName,p.studentID
FROM Projects pr
INNER JOIN professor p
ON pr.ProjectID = p.projectID
RIGHT JOIN student_Courses sc
ON p.studentID = sc.StudentID;
----------------------------------------
SELECT p.ProfessorID,p.ProfessorName,p.studentID,sc.course_name,pr.ProjectName
FROM professor p
LEFT JOIN student_Courses sc
ON p.studentID = sc.StudentID
RIGHT JOIN Projects pr
ON p.projectID = pr.ProjectID;
-----------------------------------------
SELECT pr.ProjectID,pr.ProjectName,pr.StartDate,p.ProfessorName
FROM Projects pr
RIGHT JOIN professor p
ON pr.ProjectID = p.projectID
LEFT JOIN student_Courses sc
ON p.studentID = sc.StudentID;
------------------------------------------------
SELECT c.StudentID,p.ProjectID
FROM student_Courses c
INNER JOIN Projects p 
ON c.StudentID = p.studentID;
-------------------------------------------------
SELECT s.AttendanceID,s.StudentID,pr.ProfessorName
FROM Student_Attendance s
INNER JOIN professor pr 
ON s.StudentID = pr.StudentID;
-------------------------------------
SELECT 
    s.AttendanceID,s.StudentID,p.ProjectID,pr.ProfessorName
FROM Student_Attendance s
INNER JOIN Projects p ON s.projectID = p.ProjectID
INNER JOIN professor pr ON p.ProjectID = pr.ProjectID;




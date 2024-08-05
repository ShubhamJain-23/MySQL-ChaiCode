SHOW DATABASES;
USE techforallwithpriya;
SHOW TABLES;SELECT * FROM employee;

-- Create a table by the name of courses haveing field named "CourseID", "CourseName", "Course_duration_months", "CourseFee"

create table course(
	CourseID INT AUTO_INCREMENT, 
    CourseName VARCHAR(50) NOT NULL, 
    CourseDuration_Months INT NOT NULL,  
    CourseFee INT NOT NULL,
    PRIMARY KEY(CourseID)
)

DESC course;

-- Insert the course details inside the table named courses
-- "The Complete Excel Mastery Course", 3, 1499
-- "DSA for Interview Preparation", 2, 4999
-- "SQL Bootcamp", 1, 2999

insert into course(CourseName, CourseDuration_Months, CourseFee) values("The Complete Excel Mastery Course", 3, 1499);
insert into course(CourseName, CourseDuration_Months, CourseFee) values("DSA for Interview Preparation", 2, 4999);
insert into course(CourseName, CourseDuration_Months, CourseFee) values("SQL Bootcamp", 1, 2999);

select * from course

-- LearnerID, Leaerner_FirstName, Learner_LastName, Learner_Email, LearnerPhoneNo, Learner_EnrollmentDane,

CREATE TABLE Learners(
LearnerID INT AUTO_INCREMENT,
LearnerFirstName VARCHAR(20) NOT NULL,
LearnerLastName VARCHAR(20) NOT NULL,
LearnerPhoneNum VARCHAR(10) NOT NULL,
LearnerEmailID VARCHAR(30),
LearnerEnrollmentDate TIMESTAMP NOT NULL,
SelectedCourses INT NOT NULL,
YearsOfExperience INT,
LearnerCompany VARCHAR(50), 
SourceOfJoining VARCHAR(50) NOT NULL,
BatchStartDate TIMESTAMP NOT NULL,
Location VARCHAR(50) NOT NULL, 
PRIMARY KEY(LearnerID),
UNIQUE KEY(LearnerEmailID),
FOREIGN KEY(SelectedCourses) REFERENCES course(CourseID)
);

DESC Learners;

-- Insert the learners ldetails in the learners table.

INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNum,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,BatchStartDate,Location) VALUES ("Akash", "Mishra", '9998887776', "akash@gmail.com", '2024-01-21', 1, 4, "Amazon", "LinkedIn", '2024-02-29', "Bengaluru");
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNum,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,BatchStartDate,Location) VALUES("Rishikesh","Joshi","9950192388", "carjkop@gmail.com", '2024-03-19', 3, 2, "HCL", "Youtube", '2024-03-25', "Chennai");
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNum,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,BatchStartDate,Location) VALUES("Jeevan","Hegde", "9657856732","jeevanhegdek@yahoo.co.in", '2024-01-15', 2, 0, "", "Linkedin", '2024-01-16', "Noida");
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNum,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,BatchStartDate,Location) VALUES("Akhil","George","7689558930", "akhil.george.8743@gmail.com", '2024-03-13', 3, 4, "Accenture", "Community", '2024-03-25', "Bengaluru");
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNum,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,BatchStartDate,Location)VALUES("Sidhish","Kumar","6475765443", "sidhishkumar@gmail.com",'2024-01-10', 1, 4, "Meta", "Youtube", '2024-03-29', "Bengaluru");
INSERT INTO Learners(LearnerFirstName,LearnerLastName,LearnerPhoneNum,LearnerEmailID,LearnerEnrollmentDate,SelectedCourses,YearsOfExperience,LearnerCompany,SourceOfJoining,BatchStartDate,Location) VALUES("NagaSai","Sreedhar","9182937061", "saisreedhar2001@gmail.com", '2024-03-17', 3, 4, "TCS", "Community", '2024-03-25', "Mumbai");

SHOW databases;
use techforallwithpriya

SELECT * FROM Learners;

-- Data Analysis [Employee, Course, Learner]

-- 1. Give me record of the employee getting highest salary

SELECT * FROM EMPLOYEE
ORDER BY Salary DESC Limit 1;

-- 2. Give me the record of the employee getting highest salary and age is bigger than 30

SELECT * FROM employee
WHERE AGE > 30
ORDER BY Salary DESC LIMIT 1

-- 3. Display the no of enrollments in the website of techforallwithpriya.

SELECT COUNT(*) as no_of_enrollments
FROM Learners

-- 4. Display the no  of enrollments for CourseID 3

SELECT COUNT(*) as no_of_enrollments
FROM Learners
WHERE SelectedCourses=3;

-- 5. Count the number of learners enrolled in the month of January

select COUNT(*) as num_learners_jan from learners
where LearnerEnrollmentDate LIKE '%-01-%'

-- 6. Update the Jeevan data with years of exxperience as 1 and Learner Company as "Amazon"

UPDATE LEARNERS SET YearsOfExperience = 2, LearnerCOmpany = "Amazon" 
where LearnerID = 4

SELECT * FROM LEARNERS

-- 7. Count the no of companies where learners currently doing their job

SELECT COUNT(DISTINCT LearnerCompany) as DIstinctCompanies froM (Learners)
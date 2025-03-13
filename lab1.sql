-- Lab 1
-- Create a database with the name StudentManagementSystem.
create database StudentManagementSystem;
use StudentManagementSystem;

•	Create a table with named Student with attributes:
	StudentID (Primary Key)
	FirstName
	LastName
create table student(StudentID int primary key, 
                                     FirstName varchar(10), 
                                     LastName varchar(10)
);
select * from student;

•	insert 5 records
          INSERT INTO student (StudentID, FirstName, LastName) VALUES
                 (1, 'John', 'Doe'),
                 (2, 'Jane', 'Smith'),
                 (3, 'Mike', 'Brown'),
                 (4, 'Emma', 'Johnson'),
                 (5, 'Liam', 'Davis');
        select * from student;         
•	then alter table with following fields:
	DateOfBirth
	Gender
	Email
	Phone
             ALTER TABLE student 
                 ADD DateOfBirth DATE,
                 ADD Gender VARCHAR(10),
                   ADD Email VARCHAR(50),
                   ADD Phone VARCHAR(15);
select * from student;
•	update remaining value
UPDATE student 
SET DateOfBirth = '2000-01-15', Gender = 'Male', Email = 'john.doe@example.com', Phone = '1234567890'
WHERE StudentID = 1;

UPDATE student 
SET DateOfBirth = '2001-03-22', Gender = 'Female', Email = 'jane.smith@example.com', Phone = '9876543210'
WHERE StudentID = 2;

UPDATE student 
SET DateOfBirth = '1999-07-08', Gender = 'Male', Email = 'mike.brown@example.com', Phone = '4567891230'
WHERE StudentID = 3;

UPDATE student 
SET DateOfBirth = '2002-05-30', Gender = 'Female', Email = 'emma.johnson@example.com', Phone = '3216549870'
WHERE StudentID = 4;

UPDATE student 
SET DateOfBirth = '2000-11-10', Gender = 'Male', Email = 'liam.davis@example.com', Phone = '7891234560'
WHERE StudentID = 5;
select * from student;

•	Create a table with name Course with attributes:
	CourseID (Primary Key)
	CourseTitle
	Credits
          CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseTitle VARCHAR(50),
    Credits INT
);
 

•	Create a table with named Instructor with attributes:
	InstructorID (Primary Key)
	FirstName
	LastName
	 Email
CREATE TABLE Instructor (
    InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(20),
    LastName VARCHAR(20),
    Email VARCHAR(50)
);
 
•	Create a table with named Enrollment with attributes:
	EnrollmentID (Primary Key)
	 EnrollmentDate
	StudentID(Foreign key)
	CourseID(Foreign Key)
	InstructorID(Foreign key)
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    EnrollmentDate DATE,
    StudentID INT,
    CourseID INT,
    InstructorID INT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
);
 
•	Create a table with named Score with attributes:
	ScoreID (Primary Key)
	CourseID (Foreign key)
	StudentID (Foreign Key)
	 DateOfExam
	CreditObtained
CREATE TABLE Score (
    ScoreID INT PRIMARY KEY,
    CourseID INT,
    StudentID INT,
    DateOfExam DATE,
    CreditObtained INT,
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
 
•	Create a table with named Feedback with attributes:
	FeedbackID (Primary Key)
	StudentID (Foreign key)
	Date
	InstructorName
CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY,
    StudentID INT,
    FeedbackDate DATE,
    InstructorName VARCHAR(50),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
 commit;


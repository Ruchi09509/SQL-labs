SELECT * FROM studentmanagementsystem.student;
use studentmanagementsystem;
select * from student;

-- task 1
SET SQL_SAFE_UPDATES = 0;
UPDATE Student
SET Email = 'jane_Smith@example.com'
WHERE FirstName = 'Jane' AND LastName = 'Smith';
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM Student
WHERE LastName = 'Smith';
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM Student
WHERE FirstName LIKE 'J%';

alter table student add result int;
UPDATE student 
SET result = 85
WHERE StudentID = 1;

UPDATE student 
SET result = 97
WHERE StudentID = 3;

UPDATE student 
SET result = 67
WHERE StudentID = 4;

UPDATE student 
SET result = 88
WHERE StudentID = 5;

SELECT * FROM Student
ORDER BY LastName ASC;

SELECT Gender, COUNT(*) AS TotalStudents
FROM Student
GROUP BY Gender;


-- task 2
select * from instructor;
insert into instructor(InstructorID, FirstName, LastName, Email) values (104,'roger','white','rogerwhi@example.com');
SET SQL_SAFE_UPDATES = 0;
UPDATE Instructor
SET email = 'rogerwhite@example.com'
WHERE FirstName = 'Roger' AND LastName = 'White';
SET SQL_SAFE_UPDATES = 1;


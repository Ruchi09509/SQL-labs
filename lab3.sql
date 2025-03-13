use school;
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,         
    first_name VARCHAR(50),         
    last_name VARCHAR(50),          
    age INT,                        
    email VARCHAR(100) UNIQUE       
);
select * from Employee;

INSERT INTO Employee (emp_id, first_name, last_name, age, email)
VALUES 
(1, 'John', 'Doe', 28, 'john.doe@example.com'),
(2, 'Jane', 'Smith', 35, 'jane.smith@example.com'),
(3, 'Alice', 'Johnson', 22, 'alice.johnson@example.com'),
(4, 'Bob', 'Brown', 40, 'bob.brown@example.com');

SELECT first_name, last_name
FROM Employee;

SELECT first_name, last_name, age
FROM employee
WHERE age > 30;

update employee set age = age+1 where age > 25;

SET SQL_SAFE_UPDATES = 0;
UPDATE employee SET age = age + 1 WHERE age > 25;
select * from employee ;
SET SQL_SAFE_UPDATES = 1;

commit;
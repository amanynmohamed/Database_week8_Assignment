CREATE TABLE student (
    id INT PRIMARY KEY,
    fullName VARCHAR(100),
    age INT
);


INSERT INTO student (id, fullName, age) 
VALUES
    (1, 'Ahmed Ali', 22),
    (2, 'Sara Mohamed', 19),
    (3, 'Mohamed Tarek', 23);


    UPDATE student
SET age = 20
WHERE id = 2;

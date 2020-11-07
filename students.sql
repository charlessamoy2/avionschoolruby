CREATE TABLE students (
  id integer NOT NULL, 
  first_name varchar(255), 
  middle_name varchar(255), 
  last_name varchar(255), 
  age integer, 
  location varchar(255)
);

INSERT INTO students (id,first_name, middle_name, last_name, age, location)
VALUES(1,'Juan', 'Blank', 'Cruz', 18, 'Manila');

INSERT INTO students (id,first_name, middle_name, last_name, age, location)
VALUES(2,'John', 'Blank', 'Young', 20, 'Manila');

INSERT INTO students (id,first_name, middle_name, last_name, age, location)
VALUES(3,'Victor', 'Blank', 'Rivera', 18, 'Manila');

INSERT INTO students (id,first_name, middle_name, last_name, age, location)
VALUES(4,'Adrian', 'Blank', 'Co', 19, 'Laguna');

INSERT INTO students (id,first_name, middle_name, last_name, age, location)
VALUES(5,'Pau', 'Blank', 'Riosa', 22, 'Marikina');

INSERT INTO students (id,first_name, middle_name, last_name, age, location)
VALUES(6,'Piolo', 'Blank', 'Pascual', 25, 'Manila');

UPDATE students
SET first_name= 'Ana', middle_name='Cui', last_name = 'Cajocson', age=25, location="Bulacan"
WHERE id=1;

DELETE FROM students WHERE id=(SELECT MAX(id) FROM students);

SELECT COUNT(id)
FROM students;

SELECT *
FROM students
WHERE location='Manila';

SELECT AVG(age)
FROM students;

SELECT *
FROM students
ORDER BY age ASC;
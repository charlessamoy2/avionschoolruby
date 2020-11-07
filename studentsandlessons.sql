CREATE TABLE students (
  id int NOT NULL, 
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

CREATE TABLE classrooms (
  id int NOT NULL,
  student_id int,
  section varchar(1)
);

INSERT INTO classrooms (id,student_id,section)
VALUES(1,1,"A");
INSERT INTO classrooms (id,student_id,section)
VALUES(2,2,"A");
INSERT INTO classrooms (id,student_id,section)
VALUES(3,3,"B");
INSERT INTO classrooms (id,student_id,section)
VALUES(4,4,"C");
INSERT INTO classrooms (id,student_id,section)
VALUES(5,5,"B");
INSERT INTO classrooms (id,student_id,section)
VALUES(6,6,"A");
INSERT INTO classrooms (id,student_id,section)
VALUES(7,7,"C");
INSERT INTO classrooms (id,student_id,section)
VALUES(8,8,"B");
INSERT INTO classrooms (id,student_id,section)
VALUES(9,9,"B");
INSERT INTO classrooms (id,student_id,section)
VALUES(10,10,"C");

SELECT s.id,first_name,section
FROM students AS s
INNER JOIN classrooms AS c ON s.id=c.id;

SELECT s.id,first_name,section
FROM students s
LEFT JOIN classrooms c ON s.id=c.id;

SELECT s.id,first_name,section
FROM students s
RIGHT JOIN classrooms c ON s.id=c.id;

SELECT s.id,first_name,section
FROM students s
FULL JOIN classrooms c ON s.id=c.id;
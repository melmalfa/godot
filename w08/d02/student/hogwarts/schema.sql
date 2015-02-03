DROP TABLE IF EXISTS houses;
DROP TABLE IF EXISTS students;

CREATE TABLE houses (
  id SERIAL PRIMARY KEY,
  name varchar(50) UNIQUE
);

-- INSERT INTO houses
--   (name)
-- VALUES
--   ('Gryffindor'), ('Hufflepuff'), ('Ravenclaw'), ('Slytherin');


CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  fname varchar(50) NOT NULL,
  lname varchar(50) NOT NULL,
  house_id INTEGER REFERENCES houses(id)
);

-- ALTER TABLE students
-- RENAME COLUMN house_id TO house_name
-- ALTER TABLE students
-- ALTER COLUMN house_id TYPE integer;

-- INSERT INTO students (fname, lname, house_id)
-- VALUES
--   ('Fred', 'Weasly', 1),
--   ('George', 'Weasly', 1),
--   ('Harry', 'Potter', 1)
-- ;

-- DELETE FROM students WHERE id = 1;



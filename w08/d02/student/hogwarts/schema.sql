DROP TABLE IF EXISTS houses;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS death_eater_memberships;

CREATE TABLE houses (
  id SERIAL PRIMARY KEY,
  name varchar(50) UNIQUE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  fname varchar(50) NOT NULL,
  lname varchar(50) NOT NULL,
  house_id INTEGER REFERENCES houses(id)
);

CREATE TABLE death_eater_memberships (
  id SERIAL PRIMARY KEY,
  joined_on TIMESTAMP NOT NULL,
  student_id INTEGER REFERENCES students(id)
);

-- SELECT students.*, houses.*
-- FROM students
-- INNER JOIN houses
-- ON students.house_id = houses.id;

-- SELECT students.*, death_eater_memberships.*
-- FROM death_eater_memberships
-- INNER JOIN students
-- ON death_eater_memberships.student_id = students.id
-- WHERE house_id != 4;




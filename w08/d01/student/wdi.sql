DROP TABLE IF EXISTS students;

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INTEGER NOT NULL
);

DROP TABLE IF EXISTS animals;

CREATE TABLE animals (
  id SERIAL PRIMARY KEY,
  species VARCHAR(50) NOT NULL,
  sex VARCHAR(10) NOT NULL,
  is_carnivore BOOLEAN NOT NULL
);

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INTEGER NOT NULL,
    title VARCHAR(50) NOT NULL,
    badge_number VARCHAR(15) UNIQUE NOT NULL
);


INSERT INTO animals (species, sex, is_carnivore) VALUES ('Tursiops truncatus', 15, 'Yes');

INSERT INTO employees (name, age, title, badge_number) VALUES ('Amanda Lucy', 26, 'Assistant Manager', '48502HH24');

INSERT INTO animals (species, sex, is_carnivore) VALUES ('homo sapiens', 37, 'Yes');

INSERT INTO students (name, age) VALUES ('Samantha', 34);

INSERT INTO students (name, age) VALUES ('Tynisha', 37);

INSERT INTO students (name, age) VALUES ('Matilda', 44);

INSERT INTO students (name, age) VALUES ('Honeypot', 30);

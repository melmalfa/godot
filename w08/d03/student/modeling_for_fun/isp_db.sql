-- CREATE DATABASE isp_db

DROP TABLE IF EXISTS nation;
DROP TABLE IF EXISTS space_program;
DROP TABLE IF EXISTS space_traveler;
DROP TABLE IF EXISTS mission;
DROP TABLE IF EXISTS space_craft;

CREATE TABLE nation (
  id serial PRIMARY KEY,
  country_code varchar(10) NOT NULL,
  name varchar(50) NOT NULL,
  head_of_state varchar(50)
);

CREATE TABLE space_program (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  budget integer NOT NULL,
  director varchar(50) NOT NULL,
  founded_on date NOT NULL
);

CREATE TABLE space_traveler (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  born_on date NOT NULL,
  gender varchar(20) NOT NULL,
  nation_id integer REFERENCES nation(id)
);

CREATE TABLE space_craft (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  type varchar(50) NOT NULL,
  capacity integer NOT NULL
);

CREATE TABLE mission (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  start_date date NOT NULL
  end_date date NOT NULL,
  space_program_id integer REFERENCES space_program(id),
  space_craft_id integer REFERENCES space_craft(id),
  piloted_by_id integer REFERENCES space_traveler(id)
  );


-- I know I am missing the combo tables, but I don't understand when we need one and which files to reference/link inside of it.
--examples code of what i need to create:
-- CREATE TABLE maladies_persons (
--   malady_id INTEGER REFERENCES maladies,
--   person_id INTEGER REFERENCES persons
-- );


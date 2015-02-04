DROP TABLE IF EXISTS buildings;
DROP TABLE IF EXISTS apartments;
DROP TABLE IF EXISTS tenants;
DROP TABLE IF EXISTS doormen;

CREATE TYPE gender AS ENUM ('Male', 'Female');
CREATE TYPE shift AS ENUM ('Day', 'Night');

CREATE TABLE buildings (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  num_floors integer NOT NULL
);

CREATE TABLE apartments (
  id serial PRIMARY KEY,
  floor integer NOT NULL,
  name varchar(50) NOT NULL,
  price money NOT NULL,
  sqft integer NOT NULL,
  bedrooms integer NOT NULL,
  bathrooms integer NOT NULL,
  building_id integer REFERENCES buildings(id)
);

CREATE TABLE tenants (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  age integer NOT NULL,
  gender gender NOT NULL,
  -- gender enum('Male', 'Female') NOT NULL,
  apartment_id integer REFERENCES apartments(id)
);

CREATE TABLE doormen (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  experience integer NOT NULL,
  shift shift NOT NULL,
  -- shift enum('Day', 'Night') NOT NULL,
  building_id integer REFERENCES buildings(id)
);

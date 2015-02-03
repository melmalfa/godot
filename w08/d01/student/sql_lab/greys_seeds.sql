DROP TABLE IF EXISTS actors;

CREATE TABLE actors (
  id serial PRIMARY KEY,
  actor varchar(50) NOT NULL,
  character varchar(50) NOT NULL,
  episodes integer NOT NULL,
-- can we use YEAR- no! not date either?
  start_year integer NOT NULL,
  end_year integer NOT NULL
);

INSERT INTO actors (actor, character, episodes, start_year, end_year) VALUES
  ('Demi Lovato', 'Hayley May', 1, 2010, 2010);

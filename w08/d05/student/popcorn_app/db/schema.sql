DROP TABLE IF EXISTS purchases;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS genres_movies;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS genres;


DROP TYPE IF EXISTS ratings;
DROP TYPE IF EXISTS purchase_types;

CREATE TABLE genres (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TYPE ratings AS ENUM ('G','PG','PG-13', 'R', 'NC-17');

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  purchase_price DECIMAL DEFAULT 14.99,
  rental_price DECIMAL DEFAULT 3.99,
  released_on DATE,
  description TEXT,
  rating ratings,
  poster VARCHAR(500),
  running_time INTEGER,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

CREATE TABLE genres_movies (
  genre_id INTEGER REFERENCES movies(id),
  movie_id INTEGER REFERENCES genres(id)
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(100) UNIQUE NOT NULL,
  balance DECIMAL DEFAULT 0,
  born_on DATE,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

CREATE TYPE purchase_types AS ENUM ('own','rent');

CREATE TABLE purchases (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  movie_id INTEGER REFERENCES movies(id),
  own_or_rent purchase_types,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);



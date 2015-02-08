require 'ffaker'
require 'pg'
require_relative './config.rb'

pg_conn = PG.connect(dbname: 'popcorn_db')

ids = [1,2,3,4,5,6,7,8,9,10]
id_x = ids.shuffle
id_y = ids.shuffle
prices = [25.00, 35.00, 15.00, 75.00, 85.00,1.00, 2.30, 4.67,7.65]
ratings = ['G', 'PG', 'PG-13', 'R', 'NC-17']
own_rent = ['own', 'rent']

# i could make a shuffle on the ids as a new variable, and then call that variable name. pop in my seed method

10.times do
  name  = Faker::Movie.title
  pg_conn.exec_params("INSERT INTO genres (name) VALUES ($1)", [name])
end

10.times do
  title = Faker::Movie.title
  purchase_price  = prices.sample
  rental_price = prices.sample
  released_on = Faker::Time.date(:year_range => 100, :year_latest => 0)
  description = Faker::Name.name
  rating = ratings.sample
  poster = Faker::Internet.http_url
  running_time = 49
  created_at = Time.now
  pg_conn.exec_params("INSERT INTO movies (title, purchase_price, rental_price, released_on, description, rating, poster, running_time, created_at) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)", [title, purchase_price, rental_price, released_on, description, rating, poster, running_time, created_at])
end

10.times do
  genre_id = ids.sample()
  movie_id = ids.sample()
  pg_conn.exec_params("INSERT INTO genres_movies (genre_id, movie_id) VALUES ($1, $2)", [genre_id, movie_id])
end

10.times do
  email = Faker::Internet.email
  balance = prices.sample
  born_on = Faker::Time.date
  created_at = Time.now
  pg_conn.exec_params("INSERT INTO users (email, balance, born_on, created_at) VALUES ($1, $2, $3, $4)", [email, balance, born_on, created_at])
end

10.times do
  user_id =  id_x.pop
  movie_id = id_y.pop
  own_rent = ['own', 'rent'].sample
  created_at = Time.now
  pg_conn.exec_params("INSERT INTO purchases (user_id, movie_id, own_or_rent, created_at) VALUES ($1, $2, $3, $4)", [user_id, movie_id, own_rent, created_at])
end




# This file should contain all the record creation needed to seed the
# database with its default values.
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Author.destroy_all
Book.destroy_all
Character.destroy_all

gender = ['m', 'f']
ids = [1,2,3,4,5,6,7,8,9,10]

10.times do
authors = Author.create({
  name: Faker::Name.name,
  born_on: Faker::Time.date(year_range: 1000, year_latest: 10),
  died_on: Faker::Time.date(year_range: 1000, year_latest: 10),
  gender: gender.sample
  })
end

10.times do
books = Book.create({
  title: Faker::Movie.title,
  released_on: Faker::Time.date(year_range: 1000, year_latest: 10),
  genre: Faker::Food.fruit,
  author_id: ids.sample
  })
end

10.times do
characters = Character.create({
  name: Faker::Name.name,
  gender: gender.sample,
  quirk: Faker::Food.ingredient,
  book_id: ids.sample
  })
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

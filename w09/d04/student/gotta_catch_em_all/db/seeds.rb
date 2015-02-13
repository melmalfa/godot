# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'ffaker'

numbers = [3,9,14,12,25,37,9,31,22,45,84,63,25,34,16]

Pokemon.create(name: "blah", weight: 82, height: 13, image_url: "who knows", happiness_level: "fine")

Pokemon.create(name: Faker::Food.ingredient, weight: 82, height: 13, image_url: Faker::Internet.http_url, happiness_level: "fine")

Pokemon.create(name: Faker::Food.ingredient, weight: 82, height: 13, image_url: Faker::Internet.http_url, happiness_level: "fine")

Pokemon.create(name: Faker::Food.ingredient, weight: 82, height: 13, image_url: Faker::Internet.http_url, happiness_level: "fine")

Pokemon.create(name: Faker::Food.ingredient, weight: 82, height: 13, image_url: Faker::Internet.http_url, happiness_level: "fine")

Pokemon.create(name: Faker::Food.ingredient, weight: 82, height: 13, image_url: Faker::Internet.http_url, happiness_level: "fine")

Pokemon.create(name: Faker::Food.ingredient, weight: 82, height: 13, image_url: Faker::Internet.http_url, happiness_level: "fine")

Pokemon.create(name: Faker::Food.ingredient, weight: 82, height: 13, image_url: Faker::Internet.http_url, happiness_level: "fine")

Pokemon.create(name: Faker::Food.ingredient, weight: 82, height: 13, image_url: Faker::Internet.http_url, happiness_level: "fine")

Pokemon.create(name: Faker::Food.ingredient, weight: 82, height: 13, image_url: Faker::Internet.http_url, happiness_level: "fine")

Pokemon.create(name: Faker::Food.ingredient, weight: 82, height: 13, image_url: Faker::Internet.http_url, happiness_level: "fine")

Pokemon.create(name: Faker::Food.ingredient, weight: 82, height: 13, image_url: Faker::Internet.http_url, happiness_level: "fine")



# 10.times do
#   Pokemon.create(
#     name: Faker::Food.ingredient,
#     weight: 7
#     height: 17
#     image_url: FC
#     happiness_level: "amazing"
#     )
# end




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do |index|
  u = Dog.create(name: Faker::Dog.name, breed: Faker::Dog.breed)
end

10.times do |index|
  u = DogSitter.create(first_name: Faker::Name.first_name)
end

20.times do |index|
  u = Stroll.create(dog_id: rand(10), dog_sitter_id: rand(10), date: Faker::Date.forward(15))
end

["Paris", "Toulouse", "Rennes"].each do |index|
  u = City.create!(city_name: index)
end

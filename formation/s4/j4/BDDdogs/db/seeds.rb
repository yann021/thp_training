# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

30.times do
  city = City.create!(name: Faker::Name.last_name)
end

30.times do
  dog = Dog.create!(name: Faker::Name.last_name, city_id: Faker::Number.between(1, 25))
end

30.times do
  dogsitter = Dogsitter.create!(name: Faker::Name.last_name, city_id: Faker::Number.between(1, 25))
end

30.times do
  stroll = Stroll.create!(dogsitter_id: Faker::Number.between(1, 25), dog_id: Faker::Number.between(1, 25))
end

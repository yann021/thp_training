# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dogsitter.destroy_all
Dog.destroy_all
City.destroy_all
Stroll.destroy_all


10.times do
	dogsitter = Dogsitter.create(name: Faker::Dog.name)
	dog = Dog.create(name: Faker::DragonBall.character)
	city = City.create(name: Faker::Address.city, dog_id: (1+rand(5)), dogsitter_id: (1+rand(5)))
	stroll = Stroll.create(date: Faker::Date.between(2.days.ago, Date.today), dogsitter_id: (1+rand(5)), dog_id: (1+rand(5)))
end
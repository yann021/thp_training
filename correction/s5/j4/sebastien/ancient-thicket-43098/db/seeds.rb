# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

require 'faker'

User.delete_all
Gossip.delete_all
City.delete_all
Like.delete_all

5.times do 

c = City.create(name: Faker::Nation.capital_city)
u = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: Faker::Number.number(2), password:Faker::DragonBall.character, email: Faker::Internet.email, city: City.all.sample)
g = Gossip.create(title: Faker::StarWars.planet, description: Faker::StarWars.quote, user: User.all.sample)
l = Like.create(number: 1, user:User.all.sample)


end 

puts "20 users ont été créés" 
puts "20 gossips ont été créés"

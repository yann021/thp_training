# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  require 'faker'

  User.delete_all
  Event.delete_all
  Attendance.delete_all

  5.times do

  u = User.create(email: Faker::Internet.email, password: Faker::StarWars.character, description: Faker::StarWars.quote, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  e = Event.create(start_date: Time.now, duration: 5, title: Faker::StarWars.planet, description: Faker::StarWars.quote, price: rand(70..300), location: Faker::Nation.capital_city)
  a = Attendance.create(stripe_customer_id: rand(1..100), user: User.all.sample, event: Event.all.sample)

end

puts "5 Users créés"
puts "5 Events créés"
puts "5 Attendance créés"

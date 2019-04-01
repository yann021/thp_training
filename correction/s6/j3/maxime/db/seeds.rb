# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all


10.times do
  user = User.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, email: Faker::Internet.unique.email, description: Faker::Lorem.characters(25), password: Faker::Crypto.md5)
end

5.times do
  event = Event.create!(start_date: Faker::Time.forward(90, :morning), admin_id: rand(User.first.id..User.last.id), duration: (rand(1..24)*5), title: Faker::Lorem.characters(15), description: Faker::Lorem.characters(40), price: Faker::Number.number(3), location: Faker::Address.city)
end

20.times do
  attendance = Attendance.create!(attendee_id: rand(User.first.id..User.last.id), event_id: rand(Event.first.id..Event.last.id))
end
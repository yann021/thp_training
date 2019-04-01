# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do |index|
  u = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph, email: Faker::Internet.safe_email, age: rand(18..80),  )
end

10.times do |index|
  c = City.create(name: Faker::Nation.capital_city, zip_code: Faker::Address.zip)
end

20.times do |index|
  c = Gosip.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph)
end

20.times do |index|
  c = Tag.create(title: "##{Faker::Hipster.word}")
end

20.times do |index|
  c = PrivateMessage.create(content: Faker::Lorem.paragraph)
end


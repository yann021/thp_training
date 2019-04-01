# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  city = City.create!(name: Faker::Name.first_name, zipcode: Faker::Number.between(10000, 99999))
end

10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, age: Faker::Number.between(1, 60), city_id: Faker::Number.between(1, 10))
end

20.times do
  gossip = Gossip.create!(title: Faker::Hacker.abbreviation, content: Faker::Hacker.say_something_smart, user_id: Faker::Number.between(1, 10))
end

10.times do
  tag = Tag.create!(title: Faker::Military.air_force_rank)
end

10.times do
  gosstag = Gosstag.create!(gossip_id: Faker::Number.between(1, 20), tag_id: Faker::Number.between(1, 10))
end

10.times do
  private_message = PrivateMessage.create!(content: Faker::Hacker.say_something_smart, recipient_id: Faker::Number.between(1, 10), sender_id: Faker::Number.between(1, 10))
end



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
City.destroy_all
Tag.destroy_all
Gossip.destroy_all
PrivateMessage.destroy_all

10.times do
  user = User.create(first_name: Faker::HarryPotter.character, last_name: Faker::HarryPotter.character, description: Faker::MichaelScott.quote, email: Faker::Internet.email, age: Faker::Number.number, city_id: (1+rand(5)))
  city = City.create(name: Faker::Address.city, postal_code: Faker::Address.zip)
  tag = Tag.create(title: Faker::HarryPotter.spell, gossip_id: (1+rand(5)))
end

20.times do
  gossip = Gossip.create(title: Faker::HarryPotter.book, content: Faker::HarryPotter.quote, user_id: (1+rand(5)))
end

1.times do
  private_message = PrivateMessage.create(content: Faker::HarryPotter.quote, recipient_id: (1+rand(5)), sender_id: (1+rand(5)))
end


 
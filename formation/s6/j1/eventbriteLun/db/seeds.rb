# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, description: Faker::Beer.name, password: "123456")
end

10.times do
  event = Event.create!(start_date: Faker::Date.between(2.days.ago, Date.today), duration: "5", title: Faker::Color.hex_color, description: Faker::ChuckNorris.fact, price: Faker::Number.between(1, 10), location: Faker::TvShows::Simpsons.location, user_id: Faker::Number.between(1, 10))
end

10.times do
  attendance = Attendance.create!(stripe_customer_id: Faker::TvShows::Simpsons.quote, user_id: Faker::Number.between(1, 10), event_id: Faker::Number.between(1, 10))
end

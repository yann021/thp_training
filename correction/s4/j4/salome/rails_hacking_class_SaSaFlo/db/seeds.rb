# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Grâce à la gem Faker, on crée 10 prénoms, noms et emails
10.times do
    user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

# Idem, on crée 20 cours avec des titres, descriptions et en les reliant aux id des students
20.times do
    course = Course.create!(title: Faker::Educator.course, description: Faker::ChuckNorris.fact, user_id: (1+rand(9)))
end
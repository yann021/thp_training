# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Grâce à la gem Faker, on crée 5 noms et descriptions de cours
5.times do
    course = Course.create!(title: Faker::Educator.course, description: Faker::HarryPotter.quote)
end

# Idem, on crée 30 noms et descriptions de leçons
30.times do
    lesson = Lesson.create!(title: Faker::Lorem.sentence , body: Faker::GameOfThrones.quote, course_id: (1+rand(4)))
end
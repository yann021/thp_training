# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
30.times do
  city = City.create!(name: Faker::Name.first_name, zipcode: Faker::Number.between(1, 25))
end

30.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: Faker::Number.between(1, 25))
end

30.times do
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: Faker::Number.between(1, 25))
end

30.times do
  speciality = Speciality.create!(speciality: Faker::Educator.course)
end

30.times do
  appointement = Appointment.create!(date: Faker::Date.between(2.days.ago, Date.today), doctor_id: Faker::Number.between(1, 25), patient_id: Faker::Number.between(1, 25), city_id: Faker::Number.between(1, 25))
end

=begin
30.times do
  docspe = Docspe.create!(doctor_id: Faker::Number.between(1, 25), speciality_id: Faker::Number.between(1, 25))
end

 specialty: 
=end
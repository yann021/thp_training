# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all
JoinTableSpecialtyDoctor.destroy_all

10.times do |index|
  u = Doctor.create(first_name: Faker::BreakingBad.character, last_name: Faker::BreakingBad.character)
end

10.times do |index|
  u = Patient.create(first_name: Faker::Simpsons.character, last_name: Faker::Simpsons.character)
end

10.times do |index|
  u = Appointment.create(doctor_id: rand(1..10), patient_id: rand(1..10), date: Faker::Date.forward(30))
end

["Bidule", "Chose", "Machin", "Autre", "Divers"].each do |s|
  l = Specialty.create!(name: s)
end

Doctor.all.each do |index|
  JoinTableSpecialtyDoctor.create(doctor_id: index.id, specialty_id: rand(5))
end

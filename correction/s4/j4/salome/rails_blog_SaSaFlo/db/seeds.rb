# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

#On utilise la gem faker pour générer des texts aléatoires
require 'faker'

#Création de 10 users
10.times do 
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

#Création de 5 categories
5.times do
  category = Category.create!(name: Faker::Lorem.word)
end

#Création de 10 articles
10.times do |index|
  article = Article.create!(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, user_id: (1+index), category_id: (1+rand(4)))
end

#Création de 15 comments
15.times do
  comment = Comment.create!(content: Faker::ChuckNorris.fact, user_id: (1+rand(9)), article_id: (1+rand(9)))
end

#Création de 15 likes
15.times do
  like = Like.create!(user_id: (1+rand(9)), article_id: (1+rand(9)))
end
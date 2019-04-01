# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  article = Article.create(title: Faker::Cat.name, content: Faker::OnePiece.character)
  user = User.create(first_name: Faker::OnePiece.character, last_name: Faker::OnePiece.character, email: Faker::Internet.email)
end

5.times do
	category = Category.create(name: Faker::Zelda.item)
end

15.times do
	comment = Comment.create(content: Faker::Zelda.item)
end

15.times do
	like = Like.create
end
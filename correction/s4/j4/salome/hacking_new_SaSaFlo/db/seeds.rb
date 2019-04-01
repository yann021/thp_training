# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'faker'
#On fait nos tests pour les users
10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

#On fait nos tests pour les posts
50.times do
  post = Post.create!(content: Faker::ChuckNorris.fact, user_id: (1+rand(9)))
end

#On fait nos tests pour les comments
70.times do
  comment = Comment.create!(content: Faker::ChuckNorris.fact, user_id: (1+rand(9)), post_id: (1+rand(49)))
end

#On fait nos tests pour les sub_comments
50.times do
  sub_comment = SubComment.create!(content: Faker::ChuckNorris.fact, user_id: (1+rand(9)), comment_id: (1+rand(69)))
end

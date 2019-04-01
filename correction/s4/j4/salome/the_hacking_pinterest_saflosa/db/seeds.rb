require 'faker'

#On utilise faker pour créer des utilisateurs avec des noms, prénoms et adresse mail aléatoire.
10.times do
    user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end
#On utilise faker pour générer aléatoirement des pins de nourriture créé par les 10 utilisateurs.
40.times do
    pin = Pin.create!(pin: Faker::Food.dish, user_id: (1+rand(9)))
end
#On génére 100 commentaires philosophique aléatoire sur nos 10 pins créé par les 10 utilisateurs.
100.times do
    comment = Comment.create!(comment: Faker::GreekPhilosophers.quote, user_id: (1+rand(9)), pin_id: (1+rand(39)))
end
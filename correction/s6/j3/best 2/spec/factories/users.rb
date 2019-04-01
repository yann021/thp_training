FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { "azerty" }
    description { "This is a fucking good description" }
    first_name { "Fred" }
    last_name { "Bnd" }
  end
end

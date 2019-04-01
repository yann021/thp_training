class City < ApplicationRecord
	has_many :users
	validates :name , presence: true
	validates :zipcode, length: { minimum: 5 }
end

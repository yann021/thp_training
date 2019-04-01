class User < ApplicationRecord
	has_many :gossips
	belongs_to :city
	has_many :likes
	has_secure_password
end

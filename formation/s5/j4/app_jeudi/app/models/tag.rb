class Tag < ApplicationRecord
	has_many :gosstags
	has_many :gossips, through: :gosstags
	validates :title, length: { minimum: 3 }
end

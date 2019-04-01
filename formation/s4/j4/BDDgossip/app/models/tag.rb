class Tag < ApplicationRecord
	has_many :gosstags
	has_many :gossips, through: :gosstags
end

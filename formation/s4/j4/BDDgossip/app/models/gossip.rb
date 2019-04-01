class Gossip < ApplicationRecord
	belongs_to :user
	has_many :gosstags
	has_many :tags, through: :gosstags
end

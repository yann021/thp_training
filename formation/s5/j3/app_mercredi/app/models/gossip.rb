class Gossip < ApplicationRecord
	belongs_to :user
	has_many :comments
	has_many :gosstags
	has_many :tags, through: :gosstags
		validates :title, presence: true
		validates :content, presence: true
end

class Potin < ApplicationRecord
	validates :title,
		presence: true
	validates :content,
		presence: true
	belongs_to :user
	belongs_to :city
	has_many :likes
	has_many :comments
end

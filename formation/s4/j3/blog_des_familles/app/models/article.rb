class Article < ApplicationRecord
	belongs_to :user
	belongs_to :categorie
	has_many :commentaires
	has_many :like
end

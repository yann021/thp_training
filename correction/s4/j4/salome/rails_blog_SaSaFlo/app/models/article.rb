class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :likes
  has_many :comments
end

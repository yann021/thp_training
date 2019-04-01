class Post < ApplicationRecord
  #On assigne nos relations
  belongs_to :user
  has_many :comments
end

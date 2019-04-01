class User < ApplicationRecord
  #On assigne nos relations
  has_many :posts
  has_many :comments
  has_many :sub_comments
end

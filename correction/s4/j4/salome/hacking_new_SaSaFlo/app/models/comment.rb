class Comment < ApplicationRecord
  #On assigne nos relations
  belongs_to :user
  belongs_to :post
  has_many :sub_comments
end

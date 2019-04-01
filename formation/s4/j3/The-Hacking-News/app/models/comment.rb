class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :post
	has_many :comment_of_comments
end

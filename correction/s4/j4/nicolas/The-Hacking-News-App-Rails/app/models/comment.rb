class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :link
  has_many :sub_comments
end

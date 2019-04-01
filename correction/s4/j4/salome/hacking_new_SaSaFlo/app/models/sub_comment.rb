class SubComment < ApplicationRecord
  #On assigne nos relations
  belongs_to :user
  belongs_to :comment
end

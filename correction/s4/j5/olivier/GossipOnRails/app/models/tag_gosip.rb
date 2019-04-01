class TagGosip < ApplicationRecord
  has_many :tags
  has_many :gosips
end

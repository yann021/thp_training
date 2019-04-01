class Item < ApplicationRecord
    belongs_to :category
    has_many :carts
    has_many :users, through: :carts
    has_many :big_carts, through: :carts
end

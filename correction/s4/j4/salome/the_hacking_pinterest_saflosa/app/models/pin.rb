#On initialise une class
class Pin < ApplicationRecord
    #Pin dépend de User
    belongs_to :user
    #Pin influe sur les commentaires
    has_many :comments
end

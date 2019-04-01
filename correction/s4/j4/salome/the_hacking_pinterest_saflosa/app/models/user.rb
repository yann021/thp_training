#On initialise une class
class User < ApplicationRecord
    #On dit à notre User qu'il influence pins et comments
    has_many :pins
    has_many :comments
end

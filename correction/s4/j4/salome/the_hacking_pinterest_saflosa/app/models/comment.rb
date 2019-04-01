#On initialise une class
class Comment < ApplicationRecord
    #On dit à notre Comment qu'il dépend de user et pin.
    belongs_to :user
    belongs_to :pin
end

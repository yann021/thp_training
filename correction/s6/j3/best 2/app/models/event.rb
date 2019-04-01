class Event < ApplicationRecord

	#Relationships
	belongs_to :admin, class_name: "User"
	has_many :attendances
	has_many :users, through: :attendances

	#Validations
	validates :start_date,
		presence: true

	validates :duration,
		presence: true

	validates :title,
		presence: true,
		length: { maximum: 140, minimum: 5 }

	validates :description,
		presence: true,
		length: { maximum: 1000, minimum: 20 }
	
	validates :price,
		presence: true,
		numericality: { less_than_or_equal_to: 1000, greater_than_or_equal_to: 1,  only_integer: true }

	validates :location,
		presence: true

	validate :invalid_start_date?

	validate :invalid_duration?


	def end_date
		return (self.start_date + self.duration*60)
	end

	def is_user_attendant?(user)
  	if self.users.find_by_id(user.id) != nil 
  		return true
  	else 
  		return false
  	end
  end


	private 

	def invalid_start_date?
		if start_date.to_i < Time.now.to_i
			errors.add(:start_date, 'The start_date can not in the past !')
		end
	end

	def invalid_duration?
		unless duration % 5 == 0 
			errors.add(:duration, 'Must be a multiple of 5')
		end
	end



end

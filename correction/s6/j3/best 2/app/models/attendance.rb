class Attendance < ApplicationRecord

	belongs_to :user
	belongs_to :event

	validates :stripe_customer_id,
		presence: true


	after_create :new_attendee_send

	def new_attendee_send
		UserMailer.new_attendee(self).deliver_now
	end

end

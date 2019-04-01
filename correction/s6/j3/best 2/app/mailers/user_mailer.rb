class UserMailer < ApplicationMailer
	
	default from: 'no-reply@eventbrite-fb.fr'

	def welcome_mail(user)
		@user = user
		@url = "https://eventbrite-fb.herokuapp.com/login"
		mail(to: @user.email, subject: 'Bienvue sur Eventbrite-fb !')
	end

	def new_attendee(attendance)
		@user = attendance.user
		@event = attendance.event
		@url = "https://eventbrite-fb.herokuapp.com/events/#{@event.id}"
		mail(to: @event.admin.email, subject: 'Nouveau participant inscrit !')
	end

end

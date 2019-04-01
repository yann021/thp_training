class AttendancesController < ApplicationController
	before_action :authenticate_user!, only: [:create, :index]

	def create
		a = Attendance.new(event_id: params[:event_id], user_id: current_user.id, stripe_customer_id: params[:stripeToken])

		if a.save
			redirect_to event_path(params[:event_id])
			flash[:success] = "Nous avons enregistré votre inscription à #{Event.find(params[:event_id]).title}.\n Un mail de confirmation a été envoyé à #{current_user.email}"
		else
			flash[:danger] = "Un problème est survenu"
			render :new
		end
	end

	def index
		@attendances = Attendance.where("event_id = #{params[:event_id]}")
		@event = Event.find(params[:event_id])
		check_access_authorization(@event.user)
	end
end

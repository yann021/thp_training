class EventsController < ApplicationController

	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
	# before_action :check_access_authorization, only: [:edit, :update, :destroy]

	def index
		@events = Event.all.sort
	end

	def new
			@event = Event.new
	end

	def show
		@event = Event.find(params[:id])
		@creator = @event.user
		@participants = @event.users
	end

	def create
		@event = Event.new(title: params[:title], description: params[:description], start_date: convert_date(params[:event]), duration: params[:duration], location: params[:location], price: params[:price], user_id: current_user.id)

		if @event.save
			redirect_to root_path
			flash[:success] = "#{@event.title} a bien été créé."
		else
			flash[:danger] = "Un problème est survenu."
			render :new
		end
	end

	def edit
		@event = Event.find(params[:id])
		check_access_authorization(@event.user)
	end

	def update
		@event = Event.find(params[:id])
		check_access_authorization(@event.user)

		if @event.update(title: params[:title], description: params[:description], start_date: convert_date(params[:event]), duration: params[:duration], location: params[:location], price: params[:price], user_id: current_user.id)
			redirect_to events_path(@event.id)
			flash[:success] = "#{@event.title} a bien été mis à jour."
		else
			render :edit
			flash[:danger] = "Un problème est survenu."
		end
	end

	def destroy
		@event = Event.find(params[:id])
		check_access_authorization(@event.user)
		event_title = @event.title
		if @event.destroy
			redirect_to root_path
			flash[:success] = "#{event_title} a bien été supprimé."
		end
	end

end

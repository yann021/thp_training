class EventsController < ApplicationController

	before_action :authenticate_user!
	
  def index
  end

  def new
  end

  def show
  	@event = Event.find(params['id'])
  end

  def create
    @event = Event.new
    @event.title = params['title']
    @event.description = params['description']
    @event.location = params['location']
    @event.start_date = params['start_date']
    @event.duration = params['duration']
    @event.price = params['price']
    @event.admin = current_user

    if @event.save # essaie de sauvegarder en base @gossip
      flash[:success] = "L'évènement a été créé avec succès!"
      redirect_to event_path(@event.id)
    else
      flash[:danger] = []
      @event.errors.full_messages.each do |message|
        flash[:danger] << message
      end
      flash[:danger] = flash[:danger].join(" & ")

      redirect_to new_event_path
    end

  end

  def edit
  	@event = Event.find(params['id'])
  end


  def destroy
  	@event = Event.find(params['id'])
  	if @event.destroy
      flash[:success] = "L'événement a été supprimé"
      redirect_to root_path
    else
      flash[:danger] = "La supression n'a pas fontionné ..."
      redirect_to event_path(@event.id)
    end
  end

  def update
  	@event = Event.find(params["id"])
    event_params = params.require(:event).permit(:title, :description, :location, :started_date, :duration, :price)
    @event.update(event_params)
    redirect_to event_path(@event.id)
    flash[:success] = "L'évènement a été mis à jour"
  end

end

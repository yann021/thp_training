class AttendancesController < ApplicationController
  before_action :authenticate_user!
  before_action :is_admin_user?, only: [:index]

  def index
    @event = Event.find(params['event_id'])
  end

  def new
    @event = Event.find(params['event_id'])
  end

  def create
    
    @event = Event.find(params['event_id'])
    # Amount in cents
    @amount = @event.price.to_i*100

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'eur'
    )

    Attendance.create(user: current_user, event: @event, stripe_customer_id: customer.id)
    redirect_to event_path(@event.id)
    flash[:success] = "Votre participation à l'évènement à bien été enregistrée !"

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path


  end

  def destroy
  end

  def show
  end

  private

  def is_admin_user?
    @event = Event.find(params['event_id'])
    unless current_user == @event.admin
      flash[:danger] = "Ces informations sont restreintes aux admin de l'évènement"
      redirect_to event_path(@event.id)
    end
  end


end

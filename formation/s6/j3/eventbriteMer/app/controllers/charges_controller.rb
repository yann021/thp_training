class ChargesController < ApplicationController
	before_action :authenticate_user!
	
	def new
		event     = Event.find($event_id)
		@amount   = event.price
		@descript = event.title
	end

	def create
	  # Amount in cents
	  @amount   = params[:amount]
	  @descript = params[:descript]

	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail],
	    :source  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => @descript,
	    :currency    => 'usd'
	  )

	  @attendance = Attendance.new
	  @attendance.number   = 1
	  @attendance.user_id  = current_user.id
	  @attendance.event_id = $event_id
	  @attendance.stripe_customer_id = customer.id

		rescue Stripe::CardError => e
		  flash[:error] = e.message
		  redirect_to new_charge_path
		else
		  if !(@attendance.save)
		    format.html { render :new }
		  end
		end
end

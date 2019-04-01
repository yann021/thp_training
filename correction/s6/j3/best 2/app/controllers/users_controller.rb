class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :is_adequate_user?, only: [:show]

  def index

  end

  def show
  	@user = User.find(params['id'])
  	@user_events = Event.where(admin: @user.id)

  end

  def edit
  	@user = User.find(params['id'])
  end

  def update
  	@user = User.find(params['id'])
  	user_params = params.require(:user).permit(:first_name, :last_name, :email, :description)
    

  	if @user.update(user_params)
  		flash[:success] = "Les informations ont été mises à jour"
  		redirect_to user_path(@user.id)
  	else
  		 flash[:danger] = []
      @user.errors.full_messages.each do |message|
        flash[:danger] << message
      end
      flash[:danger] = flash[:danger].join(" & ")

      redirect_to new_gossip_path
  	end 
  end

  private

  def is_adequate_user?
  	unless current_user == User.find(params['id'])
  		flash[:danger] = "You can't access other users profile page"
  		redirect_to user_path(current_user.id)
  	end
  end

end

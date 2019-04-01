class UsersController < ApplicationController
  def show
		@user = User.find(params[:id])
  end

  def new
  	@user   = User.new
    @lisvil = City.all
  end

  def create
  	@user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :age, :city_id, :password )
    end
end

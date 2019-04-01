class LoginController < ApplicationController
  def index
  

  end

  def new 

  end 

def create
 
  user = User.find_by(email: params[:email])

  if user && user.authenticate(params[:psw])
    session[:user_id] = user.id
    redirect_to '/'

  else
    puts "--" * 60
  	puts "T'es nul"
  	puts "--" * 60
    flash.now[:danger] = 'Invalid email/password combination'
    render 'new'
  end
end

  def destroy

   session.delete(:user_id)
   redirect_to '/'

  end
end

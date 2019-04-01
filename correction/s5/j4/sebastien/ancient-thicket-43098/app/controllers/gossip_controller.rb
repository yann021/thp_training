class GossipController < ApplicationController

  
  before_action :authenticate_user, only: [:create, :edit, :destroy]

 def show
 	
     @num = params[:id]
     @gossips = Gossip.find(@num)
 end

 def new
     @gossip= Gossip.new
 end

 def create
 gossip = Gossip.create(title:params[:title], description:params[:description], user_id: session[:user_id])
 redirect_to ('/')
 end

 def edit

  @gossips = Gossip.find(params[:id])

 end

 def update

    @gossips = Gossip.find(params[:id])
    @gossips.update(gossip_params)
    redirect_to('/')

 end

 def destroy

  @gossips = Gossip.find(params[:id])
   @gossips.destroy
   redirect_to('/')
 end

 private

  def authenticate_user
    unless current_user
      flash[:danger] = "Connecte toi !"
      redirect_to new_login_path
    end
  end

 def gossip_params
params.require(:gossip).permit(:title ,:description)
end
end
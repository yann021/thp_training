class GossipsController < ApplicationController

  def index
    @login=false; @login=true if session[:user_id]
  	@gossips = Gossip.all
  end

  def show
    @login=false; @login=true if session[:user_id]
    @gossip  = Gossip.find(params[:id])
    @user    = User.find(@gossip.user_id)
    @comment = Comment.new
    @liscom  = Comment.where(gossip_id: params[:id])
  end

  def new
    verif_login
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)
    if @gossip.save
      redirect_to @gossip
    else
      render 'new'
    end
  end

  def edit
    verif_login
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(gossip_params)
      redirect_to @gossip
    else
      render :edit
    end
  end

  def destroy
    verif_login
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to root_path
  end

  private
    def gossip_params
      params.require(:gossip).permit(:title, :content, :user_id)
    end
    def verif_login
      vlogin=false; vlogin=true if session[:user_id]
      redirect_to root_path if (!(vlogin)) 
    end

end

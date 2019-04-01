class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end
    def new
        @user = User.new
      end
      
      def create
        @user = User.new(params[:user])
      
        if @user.save
          flash[:notice] = "Successfully created User." 
          @BigCart = BigCart.create
          redirect_to root_path
        else
          render :action => 'new'
        end
      end
end

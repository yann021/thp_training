class ItemsController < ApplicationController
    
    include CreationHelper
    
    def index 
        @items = Item.all
       
    end

   
    def show 
        $id = Item.find(params[:id])
        @id_item = Item.find(params[:id])
        if user_signed_in?
            if current_user.numberCart == nil 
           create_cart 
           
          end
       end

         
    end
end

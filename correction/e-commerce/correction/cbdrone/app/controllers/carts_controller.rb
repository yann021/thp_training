class CartsController < ApplicationController
    
    
    
    def show 
        @id_cart = Cart.find(params[:id])
        
    end
    
    


end

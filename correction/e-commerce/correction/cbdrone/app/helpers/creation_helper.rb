module CreationHelper
    
    def create
        @cart = Cart.new 
        @cart.user_id = current_user.id
        @cart.item_id = $id.id
        @cart.big_cart_id = current_user.numberCart
        puts @cart.big_cart_id
        
        
       if @cart.save 
            redirect_to root_path 
        else
            redirect_to user_path(current_user.id)
        end
        

    end

  end
class OrderMailer < ApplicationMailer
	default from: 'no-reply@cbdrone.fr'
	def order_email_user(user)
		@user = user 
		@cart = @user.cart
		@products = @user.cart.products
		@url  = 'https://cbdrone.herokuapp.com/'

		mail(to: @user.email, subject: 'Nous avons bien reçu votre commande!') 
	end

	def order_email_admin(user)
		@user = user 
		@cart = @user.cart
		@products = @user.cart.products
		@url  = 'https://cbdrone.herokuapp.com/' 

		mail(to: 'admin.cbdrone@yopmail.com', subject: 'Un utilisateur viens de passer une commande !')
	end
end

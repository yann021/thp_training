class PagesController < ApplicationController
	
	def home
		@gossips = Gossip.all
	end

	def team
	end

	def contact
	end

	def user
		@user = User.find(params[:id])
	end

	def gossip
		@gossip = Gossip.find(params[:id])
	end

	def welcome
		@name = params[:name]
	end

end
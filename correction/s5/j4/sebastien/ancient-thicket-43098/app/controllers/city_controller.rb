class CityController < ApplicationController
  def show
  	@city = City.find(params[:id])
  	@gossips = Gossip.all
   end
end

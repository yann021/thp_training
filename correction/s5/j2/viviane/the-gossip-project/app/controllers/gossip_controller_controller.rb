class GossipControllerController < ApplicationController
  def index
  	@all_gossip = Gossip.all
  end

  def show_gossip
  	puts "@"*30
  	@all_gossip = Gossip.all
  	@gossip_number = params["id"]
  	@gossip_identity = @all_gossip[params["id"].to_i]
  end
end

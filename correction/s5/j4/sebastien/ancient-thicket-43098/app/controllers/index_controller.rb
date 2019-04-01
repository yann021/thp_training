class IndexController < ApplicationController

  def welcomepage
  	@gossips = Gossip.all
  end
end

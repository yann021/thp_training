class DynamicPagesController < ApplicationController
	def gossip
    @id_gossip = params[:id]
    end

    def user
    @id_user = params[:id]
    end
end
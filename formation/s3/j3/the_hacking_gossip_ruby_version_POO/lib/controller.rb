require_relative 'gossip'
require_relative 'view'

class Controller

	def initialize
		@view = View.new		
	end

	def create_gossip
#		saisie par programme
#		gossip = Gossip.new("Jean-Michel Concierge", "Féfé est de Bordeaux") #pour le moment, le contenu du gossip est en dur dans le code. L'utilisateur ne peut pas le changer.
#		saisie par classe view avec 2 inputs
		params = @view.create_gossip
		gossip = Gossip.new(params["author"], params["content"]) #pour le moment, le contenu du gossip est en dur dans le code. L'utilisateur ne peut pas le changer.
		gossip.save
	end

	def index_gossips
		gossips = Gossip.index_gossips
		View.index_gossips(gossips)
	end

end

require 'gossip'
class ApplicationController < Sinatra::Base
  
  get '/' do
    erb :index, locals: {gossips: Gossip.all}
	end
# si le lien de la page es vide, on lui demande d'afficher la vu index.
# et il ya une variable local(gossip all) que lon transfert a la vu.

  get '/gossips/new/' do
    erb :new_gossip
  end
# si le lien est (/gossips/new/), on affiche la vue new_gossip

  post '/gossips/new/' do
    Gossip.new(params.fetch('gossip_author'),params.fetch('gossip_content')).save
    redirect '/'
  end
# si on renvoie le lien('/gossips/new/'), alors on lance une nouvelle classe de
# gossip save a qui on donne les arguments de gossip author et content

  get '/gossips/:id/' do
    erb :view, locals: {gossips: Gossip.find(params[:id]), nugo: params[:id]}
  end
# si on demande le lien('/gossips/:id/') on lui demande d'afficher la vue view
# et on transmet a la vue, les variable de gossip find

  get '/gossips/update/:id/' do
    erb :update, locals: {gossip: Gossip.find(params[:id])[0], nugo: params[:id]}
  end
#! A revoir, pas fonctionnelle pour l'intant.

  post '/gossips/update/' do
    Gossip.update(params.fetch('gossip_author'),params.fetch('gossip_content'),params.fetch('gossip_id'))
    redirect '/'
  end	
#! A revoir, pas fonctionnelle pour l'intant.
end
Rails.application.routes.draw do
  get 'users/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resources :users
	resources :gossips

  root to: 'gossips#index'

  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'
  get '/welcome/:name', to:'pages#welcome'
  
end

=begin
  Prefix Verb   URI Pattern                                                                              Controller#Action
                  gossips GET    /gossips(.:format)                                                                       gossips#index
                          POST   /gossips(.:format)                                                                       gossips#create
               new_gossip GET    /gossips/new(.:format)                                                                   gossips#new
              edit_gossip GET    /gossips/:id/edit(.:format)                                                              gossips#edit
                   gossip GET    /gossips/:id(.:format)                                                                   gossips#show
                          PATCH  /gossips/:id(.:format)                                                                   gossips#update
                          PUT    /gossips/:id(.:format)                                                                   gossips#update
                          DELETE /gossips/:id(.:format)                                                                   gossips#destroy
                     root GET    /                                                                                        pages#home
                     team GET    /team(.:format)                                                                          pages#team
                  contact GET    /contact(.:format)                                                                       pages#contact
                          GET    /welcome/:name(.:format)                                                                 pages#welcome
                          GET    /user/:id(.:format)                                                                      pages#user
                          GET    /gossip/:id(.:format)                                                                    pages#gossip
       rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
       rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
     rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
=end

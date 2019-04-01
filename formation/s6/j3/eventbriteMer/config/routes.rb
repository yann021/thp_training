Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :attendances
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'events#index'
	
	get '/users'     => 'users#index'
	get '/users/:id' => 'users#show'
end

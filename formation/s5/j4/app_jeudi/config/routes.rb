Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resources :users
  resources :cities
	resources :gossips do
    resources :comments
  end

  root to: 'gossips#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'
  get '/welcome/:name', to:'pages#welcome'
  
end

Rails.application.routes.draw do
 
  get '/', to: 'index#welcomepage'
  post '/', to: 'index#welcomepage'
  get '/contact', to: 'static#contact'
  get '/team', to: 'static#team'
  
  resources :login, only: [:new, :create, :index, :destroy]

  resources :user

  resources :gossip

  resources :city

  resources :button

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

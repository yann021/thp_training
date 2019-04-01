Rails.application.routes.draw do


  root to: 'home#index'
  get 'home/secret', to: 'home#secret'
  devise_for :users
  resources :user
  resources :events
  resources :attendances 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

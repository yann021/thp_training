Rails.application.routes.draw do
  resources :users do
  	resources :avatars, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

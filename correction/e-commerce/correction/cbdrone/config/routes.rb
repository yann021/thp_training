Rails.application.routes.draw do
    devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end

resources :items

root "items#index"

resources :charges

resources :users do
    resources :carts
    resources :big_carts
end


end

Rails.application.routes.draw do
  
  root 'home#index'

  get 'home/profile'

  get 'auth/:provider/callback', to: "sessions#create"

  get 'sign_out_path', to: "sessions#destroy", as: 'sign_out'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

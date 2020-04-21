Rails.application.routes.draw do
  get "/api/v1/login", to: "sessions#create"

  namespace :api do 
    namespace :v1 do
      resources :users
      resources :audiocards
    end 
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end

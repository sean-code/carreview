Rails.application.routes.draw do
  resources :users
  resources :cars
  resources :reviews
  #User sign up
  post '/signup', to: "users#create"
  get '/me', to: "users#show"

  #Sessions
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end

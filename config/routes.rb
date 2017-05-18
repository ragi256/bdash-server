Rails.application.routes.draw do
  root 'root#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  resources :queries, only: [:show, :create]
end

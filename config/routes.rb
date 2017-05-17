Rails.application.routes.draw do
  resources :queries, only: [:show, :create]
end

Rails.application.routes.draw do
  devise_for :users
  resources :notes
  resources :things
  root 'things#index'
end

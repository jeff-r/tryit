Rails.application.routes.draw do
  resources :notes
  resources :things
  root 'things#index'
end

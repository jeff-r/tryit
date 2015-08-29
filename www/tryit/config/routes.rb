Rails.application.routes.draw do
  resources :things
  root 'things#index'
end

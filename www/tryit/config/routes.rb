Rails.application.routes.draw do
  resources :blade_reviews
  resources :blades
  resources :razors
  devise_for :users
  resources :notes
  resources :things
  root 'blades#index'
end

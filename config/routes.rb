Rails.application.routes.draw do
  resources :favourites

  resources :stories

  resources :authors

  root to: 'visitors#index'
  devise_for :users
  resources :users
end

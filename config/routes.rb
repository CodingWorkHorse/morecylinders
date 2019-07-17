Rails.application.routes.draw do
  resources :dreamcars
  get 'collection/index'
  resources :listings
  root 'home#index'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'home', to: 'home#index', as: 'home'
  get 'collection', to: 'collection#index', as: 'collection'
  get 'listingbase', to: 'listings#index', as: 'listingbase'
  get 'dashboard', to: 'users#index', as: 'dashboard'
  get 'accountupdated', to: 'home#user_updated', as: 'accountupdated'
end
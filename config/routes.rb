Rails.application.routes.draw do
  resources :comments
  resources :comments do
  resources :likes
end
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
  get 'archived', to: 'collection#archived', as: 'archived'
  get 'privacy_policy', to: 'home#privacy_policy', as: 'privacy_policy'
  get 'terms_of_service', to: 'home#terms_of_service', as: 'terms_of_service'
end
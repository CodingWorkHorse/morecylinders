Rails.application.routes.draw do
  resources :connects
  resources :collections
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
  get 'showroom', to: 'collection#index', as: 'showroom'
  get 'listingbase', to: 'listings#index', as: 'listingbase'
  get 'dashboard', to: 'users#index', as: 'dashboard'
  get 'accountupdated', to: 'home#user_updated', as: 'accountupdated'
  get 'archived', to: 'collection#archived', as: 'archived'
  get 'privacy_policy', to: 'home#privacy_policy', as: 'privacy_policy'
  get 'terms_of_service', to: 'home#terms_of_service', as: 'terms_of_service'
  get 'community', to: 'home#community', as: 'community'
  get 'community/listings', to: 'home#community_listings', as: 'community/listings'
  get 'community/collections', to: 'home#community_collections', as: 'community/collections'
  get 'archived_listingbase', to: 'home#archived_listingbase', as: 'archived_listingbase'
  get 'community_listingbase', to: 'home#community_listingbase', as: 'community_listingbase'
end
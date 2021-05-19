Rails.application.routes.draw do
  resources :sites
  root 'home#index'
  get 'home/show'
  devise_for :users
  resources :users
end

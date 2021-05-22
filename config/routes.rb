Rails.application.routes.draw do
  resources :sites
  root 'sites#index'
  devise_for :users
  resources :users
end

Rails.application.routes.draw do

  devise_for :users
  resources :cities
  resources :users
  root to: 'visitors#index'
  get 'all_users' => 'users#index'

end

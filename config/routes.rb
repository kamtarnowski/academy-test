Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  get 'all_users' => 'users#index'

end

Rails.application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  root 'movies#index'
  resources :movies, only: [:show, :index]
end

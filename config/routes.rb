Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  root 'places#index'
  resources :places
end

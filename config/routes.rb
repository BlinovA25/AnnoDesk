Rails.application.routes.draw do

  devise_for :users
  root "announcements#index"

  get 'auth', to: 'users#auth'
  get 'index', to: 'announcements#index'
  # get 'sign_in', to:'users'

  resources :comments
  resources :announcements
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

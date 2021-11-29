Rails.application.routes.draw do

  devise_for :users
  #scope '/admin' do
  #  resources :users
  #end

  root "announcements#index"
  get 'index', to: 'announcements#index'

  resources :announcements do
    resources :comments
  end

  resources :comments
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

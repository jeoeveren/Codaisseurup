
# config/routes.rb

Rails.application.routes.draw do
  resources :categories
  root to: 'pages#home'

  devise_for :users

  resources :users, only: [:show]

  resources :events, except: [:destroy] do
    resources :bookings, only: [:create]
  end

  resources :profiles, only: [:new, :edit, :create, :update]
  resources :photos

  namespace :api do
    resources :events
  end
end

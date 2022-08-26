Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/create'
  get 'bookings/new'
  get 'bookings/show'
  get 'home/index'

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
  # root "home#dashboard"
  resources :bookings
  resources :properties
  # resources :users
end
